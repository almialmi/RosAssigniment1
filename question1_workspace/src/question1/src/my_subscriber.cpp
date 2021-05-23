#include "ros/ros.h"
#include "question1/input.h"

void clbk(const question1::input::ConstPtr& msg) {
    ROS_INFO("first point: x=%.2f, y=%.2f, z=%.2f", msg->point.x, msg->point.y, msg->point.z);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "my_subscriber");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("transformation_topic", 1, clbk);

  ros::spin();

}