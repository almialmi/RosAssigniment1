;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::fk)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'fk (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::FK")
  (make-package "ARM_LIB::FK"))
(unless (find-package "ARM_LIB::FKREQUEST")
  (make-package "ARM_LIB::FKREQUEST"))
(unless (find-package "ARM_LIB::FKRESPONSE")
  (make-package "ARM_LIB::FKRESPONSE"))

(in-package "ROS")





(defclass arm_lib::fkRequest
  :super ros::object
  :slots (_joint_angles _link_length ))

(defmethod arm_lib::fkRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:link_length __link_length) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _link_length __link_length)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:link_length
   (&optional __link_length)
   (if __link_length (setq _link_length __link_length)) _link_length)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_angles
    (* 4    (length _joint_angles)) 4
    ;; float32[] _link_length
    (* 4    (length _link_length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _link_length
     (write-long (length _link_length) s)
     (dotimes (i (length _link_length))
       (sys::poke (elt _link_length i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _link_length
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_length (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _link_length i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::fkResponse
  :super ros::object
  :slots (_endpos ))

(defmethod arm_lib::fkResponse
  (:init
   (&key
    ((:endpos __endpos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _endpos __endpos)
   self)
  (:endpos
   (&optional __endpos)
   (if __endpos (setq _endpos __endpos)) _endpos)
  (:serialization-length
   ()
   (+
    ;; float32[] _endpos
    (* 4    (length _endpos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _endpos
     (write-long (length _endpos) s)
     (dotimes (i (length _endpos))
       (sys::poke (elt _endpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _endpos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _endpos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _endpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_lib::fk
  :super ros::object
  :slots ())

(setf (get arm_lib::fk :md5sum-) "92fe4648bf1f304549e33eb855c12723")
(setf (get arm_lib::fk :datatype-) "arm_lib/fk")
(setf (get arm_lib::fk :request) arm_lib::fkRequest)
(setf (get arm_lib::fk :response) arm_lib::fkResponse)

(defmethod arm_lib::fkRequest
  (:response () (instance arm_lib::fkResponse :init)))

(setf (get arm_lib::fkRequest :md5sum-) "92fe4648bf1f304549e33eb855c12723")
(setf (get arm_lib::fkRequest :datatype-) "arm_lib/fkRequest")
(setf (get arm_lib::fkRequest :definition-)
      "float32[] joint_angles
float32[] link_length
---
float32[] endpos

")

(setf (get arm_lib::fkResponse :md5sum-) "92fe4648bf1f304549e33eb855c12723")
(setf (get arm_lib::fkResponse :datatype-) "arm_lib/fkResponse")
(setf (get arm_lib::fkResponse :definition-)
      "float32[] joint_angles
float32[] link_length
---
float32[] endpos

")



(provide :arm_lib/fk "92fe4648bf1f304549e33eb855c12723")


