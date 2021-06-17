#!/usr/bin/env python3
from __future__ import print_function
   
from arm_lib.srv import ik,ikResponse
import rospy
import numpy as np
from numpy.core.fromnumeric import choose

import numpy as np
import tinyik as k


arm = ik.Actuator([
    'z',[0,0,0.15],
    'x',[0,0,2.0],
    'x',[0,0,1.0],
    'x',[0,0,1.0],
    'x',[0,0,0.65]
])



def handle_ik(req):
    arm.ee = [req.actuator_pose[0],req.actuator_pose[1],req.actuator_pose[2]]
    return ikResponse(arm.angles)
def ik():
    rospy.init_node('gz_client')
    rospy.Service('new_angles',ik, handle_ik)
    print("angles of end effector")
    rospy.spin()
if __name__ == "__main__":
    ik()


