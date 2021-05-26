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
  :slots (_base_arm1_joint _arm1_arm2_joint _arm2_arm3_joint _arm3_arm4_joint _p _i _d ))

(defmethod arm_lib::Angles
  (:init
   (&key
    ((:base_arm1_joint __base_arm1_joint) 0.0)
    ((:arm1_arm2_joint __arm1_arm2_joint) 0.0)
    ((:arm2_arm3_joint __arm2_arm3_joint) 0.0)
    ((:arm3_arm4_joint __arm3_arm4_joint) 0.0)
    ((:p __p) 0.0)
    ((:i __i) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _base_arm1_joint (float __base_arm1_joint))
   (setq _arm1_arm2_joint (float __arm1_arm2_joint))
   (setq _arm2_arm3_joint (float __arm2_arm3_joint))
   (setq _arm3_arm4_joint (float __arm3_arm4_joint))
   (setq _p (float __p))
   (setq _i (float __i))
   (setq _d (float __d))
   self)
  (:base_arm1_joint
   (&optional __base_arm1_joint)
   (if __base_arm1_joint (setq _base_arm1_joint __base_arm1_joint)) _base_arm1_joint)
  (:arm1_arm2_joint
   (&optional __arm1_arm2_joint)
   (if __arm1_arm2_joint (setq _arm1_arm2_joint __arm1_arm2_joint)) _arm1_arm2_joint)
  (:arm2_arm3_joint
   (&optional __arm2_arm3_joint)
   (if __arm2_arm3_joint (setq _arm2_arm3_joint __arm2_arm3_joint)) _arm2_arm3_joint)
  (:arm3_arm4_joint
   (&optional __arm3_arm4_joint)
   (if __arm3_arm4_joint (setq _arm3_arm4_joint __arm3_arm4_joint)) _arm3_arm4_joint)
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
    ;; float32 _base_arm1_joint
    4
    ;; float32 _arm1_arm2_joint
    4
    ;; float32 _arm2_arm3_joint
    4
    ;; float32 _arm3_arm4_joint
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
     ;; float32 _base_arm1_joint
       (sys::poke _base_arm1_joint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm1_arm2_joint
       (sys::poke _arm1_arm2_joint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm2_arm3_joint
       (sys::poke _arm2_arm3_joint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm3_arm4_joint
       (sys::poke _arm3_arm4_joint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _base_arm1_joint
     (setq _base_arm1_joint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm1_arm2_joint
     (setq _arm1_arm2_joint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm2_arm3_joint
     (setq _arm2_arm3_joint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm3_arm4_joint
     (setq _arm3_arm4_joint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i
     (setq _i (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::Angles :md5sum-) "4d2e54150893e213291861331cdf2b18")
(setf (get arm_lib::Angles :datatype-) "arm_lib/Angles")
(setf (get arm_lib::Angles :definition-)
      "float32 base_arm1_joint
float32 arm1_arm2_joint
float32 arm2_arm3_joint
float32 arm3_arm4_joint
float32 p
float32 i
float32 d
")



(provide :arm_lib/Angles "4d2e54150893e213291861331cdf2b18")


