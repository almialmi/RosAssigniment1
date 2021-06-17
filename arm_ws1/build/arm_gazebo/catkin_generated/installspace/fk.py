#!/usr/bin/env python3
from __future__ import print_function
   
from arm_lib.srv import fk,fkResponse
import rospy
import numpy as np
from numpy.core.fromnumeric import choose

import numpy as np
import tinyik as ik

def rotationInz(y):
    return np.array([[np.cos(y),-np.sin(y),0,0],
                    [np.sin(y),np.sin(y),0,0],
                    [0,0,1,0],
                    [0,0,0,1]])

def rotationInx(y):
    return np.array([[1,0,0,0],
                    [0,np.cos(y),-np.sin(y),0],
                    [0,np.sin(y),np.cos(y),0],
                    [0,0,0,1]])
def rotationIny(y):
    return np.array([[np.cos(y),0,np.sin(y),0],
                    [0,1,0,0],
                    [-np.sin(y),0,np.cos(y),0],
                    [0,0,0,1]])
def Tz(d):
    return np.array([
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,d],
        [0,0,0,1],
        ])
def Ty(d):
    return np.array([
        [1,0,0,0],
        [0,1,0,d],
        [0,0,1,0],
        [0,0,0,1],
        ])
def Tx(d):
    return np.array([
        [1,0,0,d],
        [0,1,0,0],
        [0,0,1,0],
        [0,0,0,1],
        ])


def handle_fk(req):
    M1 = Tz(0.1)
    M2 = rotationInz(np.radians(req.joint_angles[0])).dot(Tz(0.05))
    M3 = rotationInx(np.radians(req.joint_angles[1])).dot(Tz(2.0))
    M4 = rotationInx(np.radians(req.joint_angles[2])).dot(Tz(1.0))
    M5 = rotationInx(np.radians(req.joint_angles[3])).dot(Tz(1.0))
    M6 = rotationInx(np.radians(req.joint_angles[4])).dot(Tz(0.65))

    mats = [M1,M2,M3,M4,M5,M6]
    P= M1
    for i in range(1, len(mats)):
            P1 = P1.dot(mats[i])
    print(P1)
    
    return fkResponse(P1)

def fk():
    rospy.init_node('gz_client')
    rospy.Service('end_pos', fk, handle_fk)
    print("pose of end effector")
    rospy.spin()
if __name__ == "__main__":
    fk()