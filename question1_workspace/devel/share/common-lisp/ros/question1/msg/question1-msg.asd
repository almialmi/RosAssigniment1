
(cl:in-package :asdf)

(defsystem "question1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "input" :depends-on ("_package_input"))
    (:file "_package_input" :depends-on ("_package"))
  ))