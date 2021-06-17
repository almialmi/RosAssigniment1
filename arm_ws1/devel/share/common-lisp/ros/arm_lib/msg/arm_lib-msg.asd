
(cl:in-package :asdf)

(defsystem "arm_lib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Angles" :depends-on ("_package_Angles"))
    (:file "_package_Angles" :depends-on ("_package"))
    (:file "GripperAngles" :depends-on ("_package_GripperAngles"))
    (:file "_package_GripperAngles" :depends-on ("_package"))
    (:file "pose" :depends-on ("_package_pose"))
    (:file "_package_pose" :depends-on ("_package"))
  ))