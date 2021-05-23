#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include "question1/input.h"
#include <iostream>
using namespace std;

#include <vector>

struct Point {
    float x;
    float y;
    float z;
};

int main(int argc, char **argv)
{
  float x;
  float y;
  float z;

  float newX;
  float newY;
  float newZ;

  float angle1;
  float angle2;
  float angle3;

  float distance;

  cout << "X: ";
  cin >> x;
  cout << "Y: ";
  cin >> y;
  cout << "Z: ";
  cin >> z;

  cout << "Angle 1: ";
  cin >> angle1;
  cout << "Angle 2: ";
  cin >> angle2;
  cout << "Angle 3: ";
  cin >> angle3;

  cout << "Distance: ";
  cin >> distance;

  newX = (x + ((y*cos(angle1)) - (z*sin(angle1))) + ((y*sin(angle1)) + (z*cos(angle1)))) + 5;
  newY = (((x*cos(angle2)) + (z*sin(angle2))) + (y) + ((-x*sin(angle2)) + (z+cos(angle2)))) + 5;
  newZ = ((x*cos(angle3) - y*sin(angle3)) + (x*sin(angle3) + y*cos(angle3)) + z) + 5; 

  geometry_msgs::Point point;

  ros::init(argc, argv, "my_publisher");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<question1::input>("transformation_topic", 1);

  question1::input msg;
  


  ros::Rate poll_rate(100);
  while(pub.getNumSubscribers() == 0)
    point.x = newX;
    point.y = newY;
    point.z = newZ;
    msg.point = point;
    ROS_INFO("Published: ");
    pub.publish(msg);
    poll_rate.sleep();



  return 0;
}