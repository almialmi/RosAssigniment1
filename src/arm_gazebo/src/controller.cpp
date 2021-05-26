#include <functional>
#include <boost/bind.hpp>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <gazebo/common/Plugin.hh>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"
#include <ignition/math/Vector3.hh>
#include <ignition/math/Pose3.hh>
#include <stdio.h>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include "std_msgs/Float32.h"
#include "std_msgs/String.h"
#include <thread>
#include <arm_lib/Angles.h>
#include <cstdlib>
#include <math.h>

namespace gazebo
{
    class ModelPush : public ModelPlugin
    {
    public:
        void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
        {
            // Store the pointer to the model
            this->model = _parent;

            // // intiantiate the joint controller
            this->jointController = this->model->GetJointController();

            if (!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc, argv, "gz_cl", ros::init_options::NoSigintHandler);
                ROS_FATAL_STREAM("Ros is not initialized."
                                 << "Load the .. in gazebo_ros");
            }
            else
            {
                ROS_INFO("Starting plugin");
            }
            


            std::cout << "\n\n"
                      << this->model->GetName() << "\n\n";
            this->rosNode.reset(new ros::NodeHandle("gz_cl"));
            ros::SubscribeOptions so = ros::SubscribeOptions::create<arm_lib::Angles>(
                "/" + this->model->GetName() + "/pos_cmd",
                1,
                boost::bind(&ModelPush::OnRosMsg, this, _1),
                ros::VoidPtr(), &this->rosQueue);
            this->data_pub = this->rosNode->advertise<std_msgs::String>("/data", 1000);
            this->rosSub = this->rosNode->subscribe(so);
            this->rosQueueThread = std::thread(std::bind(&ModelPush::QueueThread, this));
            this->rosDataPublishThread = std::thread(std::bind(&ModelPush::Publish, this));
            this->updateConnection = event::Events::ConnectWorldUpdateBegin(
                std::bind(&ModelPush::OnUpdate, this));
            ROS_INFO("Finished setting up");
        }

    private:
        void Publish()
        {
            ros::Rate loop_rate(10);
            while (ros::ok())
            {
                if (this->update_num == -1)
                {
                    std_msgs::String msg;
                    std::stringstream ss;

                    double degrees[4] = {0, 0, 0, 0};
                    this->GetJointPoses(degrees);

                    physics::ModelState modelState = physics::ModelState(this->model);
                    ignition::math::Vector3d modelPose = modelState.Pose().Pos();

                    ss << this->choose << " ";
                    ss << modelPose.X() << " " << modelPose.Y() << " " << modelPose.Z() << " ";
                    msg.data = ss.str();
                    ROS_INFO("%s", msg.data.c_str());

                    this->data_pub.publish(msg);
                    GenerateAngle();
                    this->GenerateChoose();
                    update_num = 0;
                }
                ros::spinOnce();
                loop_rate.sleep();
            }
        }

    public:
        void OnUpdate()
        {
            if (update_num == 0)
            {
                if (choose != 1)
                {
                    this->SetAngle("base_arm1_joint", angle[0],p,i,d);
                }
                else if (choose != 2)
                {
                    this->SetAngle("arm2_arm3_joint", angle[1],p,i,d);
                }
                else if (choose != 3)
                {
                    this->SetAngle("arm3_arm4_joint", angle[2],p,i,d);
                }
                else if (choose != 4)
                {
                    this->SetAngle("arm3_arm4_joint", angle[3],p,i,d);
                }
            }
            else if (update_num < 4000)
            {
                this->jointController->Update();
            }
            else if (update_num == 4000)
            {
                this->model->GetJoint("base_arm1_joint")->SetParam("fmax", 0, 0);
                this->model->GetJoint("arm1_arm2_joint")->SetParam("fmax", 0, 0);
                this->model->GetJoint("arm2_arm3_joint")->SetParam("fmax", 0, 0);
                this->model->GetJoint("arm3_arm4_joint")->SetParam("fmax", 0, 0);
                update_num = -1;
            }
            if (update_num >= 0)
            {
                update_num++;
            }
        }

    private:
        void GenerateChoose()
        {
            switch (choose)
            {
            case 1:
                choose = 2;
                break;
            case 2:
                choose = 3;
                break;
            case 3:
                choose = 4;
                break;
            case 4:
                choose = 1;
                break;
            }
        }

    private:
        void GenerateAngle()
        {
            
            angle[0] = 0;
            angle[1] = 60;
            angle[2] = 60;
            angle[3] = 60;
        }

    private:
        void GetJointPoses(double degrees[])
        {
            double p1 = physics::JointState(this->model->GetJoint("base_arm1_joint")).Position(0);
            double p2 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
            double p3 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
            double p4 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
            degrees[0] = p1 * 180 / M_PI;
            degrees[1] = p2 * 180 / M_PI;
            degrees[2] = p3 * 180 / M_PI;
            degrees[3] = p4 * 180 / M_PI;
        }

    private:
        void SetAngle(std::string joint_name, float degree,float p, float i, float d)
        {
            if (degree >= -60 && degree <= 60)
            {
                
                float rad = M_PI * degree / 180;
                auto pid1 = common::PID(p,i,d);
                std::string name = this->model->GetJoint(joint_name)->GetScopedName();
                this->jointController->SetPositionPID(name,pid1);
                this->jointController->SetPositionTarget(name, rad);
            }
        }

            public : void OnRosMsg(const arm_lib::Angles::ConstPtr &msg)
        {
            angle[0] = msg->base_arm1;
            angle[1] = msg->arm1_arm2;
            angle[2] = msg->arm2_arm3;
            angle[3] = msg->arm3_arm4;
            p = msg->p;
            i = msg->i;
            d = msg->d;
            update_num = 0;
        }

    public:
        void QueueThread()
        {
            static const double timeout = 0.01;
            while (this->rosNode->ok())
            {
                this->rosQueue.callAvailable(ros::WallDuration(timeout));
            }
        }

    private:
        float angle[4] = {0, 0, 0,0};
    private:
        float p=10;
        float i=10;
        float d=10;

    private:
        int update_num = 0;

    private:
        int choose = 1;

    private:
        physics::ModelPtr model;

    private:
        std::unique_ptr<ros::NodeHandle> rosNode;

    private:
        physics::JointControllerPtr jointController;

    private:
        ros::Subscriber rosSub;

    private:
        std::thread rosQueueThread, rosDataPublishThread;

    private:
        ros ::CallbackQueue rosQueue;

    private:
    
        ros::Publisher data_pub;

    private:
        event::ConnectionPtr updateConnection;

    private:
        common::PID pid;
    };

    // Register this plugin with the simulator
    GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}