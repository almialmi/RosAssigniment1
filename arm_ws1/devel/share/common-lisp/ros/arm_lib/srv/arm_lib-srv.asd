
(cl:in-package :asdf)

(defsystem "arm_lib-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveArm" :depends-on ("_package_MoveArm"))
    (:file "_package_MoveArm" :depends-on ("_package"))
    (:file "MoveGripper" :depends-on ("_package_MoveGripper"))
    (:file "_package_MoveGripper" :depends-on ("_package"))
    (:file "fk" :depends-on ("_package_fk"))
    (:file "_package_fk" :depends-on ("_package"))
    (:file "ik" :depends-on ("_package_ik"))
    (:file "_package_ik" :depends-on ("_package"))
  ))