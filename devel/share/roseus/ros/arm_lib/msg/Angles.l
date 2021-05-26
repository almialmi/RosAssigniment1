;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::Angles)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'Angles (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::ANGLES")
  (make-package "ARM_LIB::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Angles.msg.html


(defclass arm_lib::Angles
  :super ros::object
  :slots (_base_arm1 _arm1_arm2 _arm2_arm3 _arm3_arm4 _p _i _d ))

(defmethod arm_lib::Angles
  (:init
   (&key
    ((:base_arm1 __base_arm1) 0.0)
    ((:arm1_arm2 __arm1_arm2) 0.0)
    ((:arm2_arm3 __arm2_arm3) 0.0)
    ((:arm3_arm4 __arm3_arm4) 0.0)
    ((:p __p) 0.0)
    ((:i __i) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _base_arm1 (float __base_arm1))
   (setq _arm1_arm2 (float __arm1_arm2))
   (setq _arm2_arm3 (float __arm2_arm3))
   (setq _arm3_arm4 (float __arm3_arm4))
   (setq _p (float __p))
   (setq _i (float __i))
   (setq _d (float __d))
   self)
  (:base_arm1
   (&optional __base_arm1)
   (if __base_arm1 (setq _base_arm1 __base_arm1)) _base_arm1)
  (:arm1_arm2
   (&optional __arm1_arm2)
   (if __arm1_arm2 (setq _arm1_arm2 __arm1_arm2)) _arm1_arm2)
  (:arm2_arm3
   (&optional __arm2_arm3)
   (if __arm2_arm3 (setq _arm2_arm3 __arm2_arm3)) _arm2_arm3)
  (:arm3_arm4
   (&optional __arm3_arm4)
   (if __arm3_arm4 (setq _arm3_arm4 __arm3_arm4)) _arm3_arm4)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float32 _base_arm1
    4
    ;; float32 _arm1_arm2
    4
    ;; float32 _arm2_arm3
    4
    ;; float32 _arm3_arm4
    4
    ;; float32 _p
    4
    ;; float32 _i
    4
    ;; float32 _d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _base_arm1
       (sys::poke _base_arm1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm1_arm2
       (sys::poke _arm1_arm2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm2_arm3
       (sys::poke _arm2_arm3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm3_arm4
       (sys::poke _arm3_arm4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i
       (sys::poke _i (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _base_arm1
     (setq _base_arm1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm1_arm2
     (setq _arm1_arm2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm2_arm3
     (setq _arm2_arm3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm3_arm4
     (setq _arm3_arm4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i
     (setq _i (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::Angles :md5sum-) "d5c56eccbb002287c9ebfe2ecc181f37")
(setf (get arm_lib::Angles :datatype-) "arm_lib/Angles")
(setf (get arm_lib::Angles :definition-)
      "float32 base_arm1
float32 arm1_arm2
float32 arm2_arm3
float32 arm3_arm4
float32 p
float32 i 
float32 d

")



(provide :arm_lib/Angles "d5c56eccbb002287c9ebfe2ecc181f37")


