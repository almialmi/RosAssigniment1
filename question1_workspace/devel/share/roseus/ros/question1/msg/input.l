;; Auto-generated. Do not edit!


(when (boundp 'question1::input)
  (if (not (find-package "QUESTION1"))
    (make-package "QUESTION1"))
  (shadow 'input (find-package "QUESTION1")))
(unless (find-package "QUESTION1::INPUT")
  (make-package "QUESTION1::INPUT"))

(in-package "ROS")
;;//! \htmlinclude input.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass question1::input
  :super ros::object
  :slots (_point ))

(defmethod question1::input
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get question1::input :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get question1::input :datatype-) "question1/input")
(setf (get question1::input :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :question1/input "a7c84ff13976aa04656e56e300124444")


