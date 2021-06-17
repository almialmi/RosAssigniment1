#!/usr/bin/env python3
import rospy

from arm_lib.msg import GripperAngles
from geometry_msgs.msg import Vector3
from std_msgs.msg import String, Bool

from arm_lib.srv import MoveArm, MoveGripper

import constants as Constant
import math
import time

'''

finger - max = 90 and min = 0 (pos) --> increase - close
finger - max = 90 and min = 0 (pos) --> increase - open
'''


class GripperCollision:
    def __init__(self):
        self.base = False
        self.finger1F = False
        self.finger2F = False

    def reset(self):
        self.base = False
        self.finger1F = False
        self.finger2F = False


    def checkFrontFingerCol(self):
        return self.finger1F and self.finger2F


class GripperControl:
    angles = None

    def __init__(self):
        self.gripperCollision = GripperCollision()
        
        self.gripperToggle = rospy.Service('/' + Constant.ROBOT_NAME + '/gripper/toggle', MoveGripper, self.toggleGrip)

        self.collisionCheckPub = rospy.Publisher('/' + Constant.ROBOT_NAME + '/gripper/collision/check', Bool, queue_size=10)
        self.gripperColSub = rospy.Subscriber('/'+ Constant.ROBOT_NAME + '/gripper/collision', String, self.checkCollision)
        self.moveFingersPub = rospy.Publisher('/' + Constant.ROBOT_NAME + '/gripper/move_fingers', GripperAngles, queue_size=10)

        self.default()

    def grip(self):
        self.angles.arm5_arm6_joint -= 1
        self.angles.arm5_arm7_joint += 1

        return self.angles

    def release(self):
        self.angles.arm5_arm6_joint += 1
        self.angles.arm5_arm7_joint -= 1

        return self.angles

    def belowLimit(self):
        return self.angles.arm5_arm6_joint < -5 or self.angles.arm5_arm6_joint > 5

    def beyondLimit(self):
        return self.angles.arm5_arm6_joint > 30 or self.angles.arm5_arm6_joint < -30

    def default(self):
        self.angles = GripperAngles(30, -30)
        self.gripperCollision.reset()

    def radToDeg(self, rad):
        return rad * 180 / math.pi

    def checkCollision(self, col):
        cols = col.data.split("=")
        # print(col)
        for i in range(len(cols)):
            if len(cols[i]) <= 0:
                continue
            else:
                objs = cols[i].split("-")
                if not objs[0].startswith(Constant.ROBOT_NAME):
                    if "arm6" in objs[1]:
                        self.gripperCollision.finger1F = True

                    elif "arm7" in objs[1]:
                        self.gripperCollision.finger2F = True
                   

        if self.gripperCollision.finger1F or self.gripperCollision.finger2F:
            self.collisionCheckPub.publish(True)
        
        else:        
            self.collisionCheckPub.publish(False)

    def toggleGrip(self, grip):
        innerGripped = 0
        outerGripped = 0
        self.gripperCollision.reset()

        if grip.action == 'catch':
            while True:
                self.moveFingersPub.publish(self.grip())
                time.sleep(0.03)
                if not self.gripperCollision.checkFrontFingerCol() and self.belowLimit():
                    return False

                if self.gripperCollision.checkFrontFingerCol():
                    if innerGripped > 6:
                        break

                    innerGripped += 1

            print ("Gripped")
            return True

        else:
            print("Release called")
            while not self.beyondLimit():
                self.moveFingersPub.publish(self.release())
                time.sleep(0.05)

            return True

        return False
        


def main():
     gripperControl = GripperControl()

     rospy.init_node('gripper_controller')    
     print("Gripper control initiated")
     rospy.spin()
    

if __name__=='__main__':
     main()