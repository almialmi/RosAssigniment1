;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::ik)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'ik (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::IK")
  (make-package "ARM_LIB::IK"))
(unless (find-package "ARM_LIB::IKREQUEST")
  (make-package "ARM_LIB::IKREQUEST"))
(unless (find-package "ARM_LIB::IKRESPONSE")
  (make-package "ARM_LIB::IKRESPONSE"))

(in-package "ROS")





(defclass arm_lib::ikRequest
  :super ros::object
  :slots (_actuator_pose ))

(defmethod arm_lib::ikRequest
  (:init
   (&key
    ((:actuator_pose __actuator_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_pose __actuator_pose)
   self)
  (:actuator_pose
   (&optional __actuator_pose)
   (if __actuator_pose (setq _actuator_pose __actuator_pose)) _actuator_pose)
  (:serialization-length
   ()
   (+
    ;; float32[] _actuator_pose
    (* 4    (length _actuator_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _actuator_pose
     (write-long (length _actuator_pose) s)
     (dotimes (i (length _actuator_pose))
       (sys::poke (elt _actuator_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _actuator_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuator_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::ikResponse
  :super ros::object
  :slots (_new_angles ))

(defmethod arm_lib::ikResponse
  (:init
   (&key
    ((:new_angles __new_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _new_angles __new_angles)
   self)
  (:new_angles
   (&optional __new_angles)
   (if __new_angles (setq _new_angles __new_angles)) _new_angles)
  (:serialization-length
   ()
   (+
    ;; float32[] _new_angles
    (* 4    (length _new_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _new_angles
     (write-long (length _new_angles) s)
     (dotimes (i (length _new_angles))
       (sys::poke (elt _new_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _new_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _new_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::ik
  :super ros::object
  :slots ())

(setf (get arm_lib::ik :md5sum-) "2c802ecf38b17c9f65562f8dd1868972")
(setf (get arm_lib::ik :datatype-) "arm_lib/ik")
(setf (get arm_lib::ik :request) arm_lib::ikRequest)
(setf (get arm_lib::ik :response) arm_lib::ikResponse)

(defmethod arm_lib::ikRequest
  (:response () (instance arm_lib::ikResponse :init)))

(setf (get arm_lib::ikRequest :md5sum-) "2c802ecf38b17c9f65562f8dd1868972")
(setf (get arm_lib::ikRequest :datatype-) "arm_lib/ikRequest")
(setf (get arm_lib::ikRequest :definition-)
      "float32[] actuator_pose
---
float32[] new_angles
")

(setf (get arm_lib::ikResponse :md5sum-) "2c802ecf38b17c9f65562f8dd1868972")
(setf (get arm_lib::ikResponse :datatype-) "arm_lib/ikResponse")
(setf (get arm_lib::ikResponse :definition-)
      "float32[] actuator_pose
---
float32[] new_angles
")



(provide :arm_lib/ik "2c802ecf38b17c9f65562f8dd1868972")


