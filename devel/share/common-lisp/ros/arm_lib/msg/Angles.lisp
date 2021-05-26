; Auto-generated. Do not edit!


(cl:in-package arm_lib-msg)


;//! \htmlinclude Angles.msg.html

(cl:defclass <Angles> (roslisp-msg-protocol:ros-message)
  ((base_arm1
    :reader base_arm1
    :initarg :base_arm1
    :type cl:float
    :initform 0.0)
   (arm1_arm2
    :reader arm1_arm2
    :initarg :arm1_arm2
    :type cl:float
    :initform 0.0)
   (arm2_arm3
    :reader arm2_arm3
    :initarg :arm2_arm3
    :type cl:float
    :initform 0.0)
   (arm3_arm4
    :reader arm3_arm4
    :initarg :arm3_arm4
    :type cl:float
    :initform 0.0)
   (p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (i
    :reader i
    :initarg :i
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0))
)

(cl:defclass Angles (<Angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-msg:<Angles> is deprecated: use arm_lib-msg:Angles instead.")))

(cl:ensure-generic-function 'base_arm1-val :lambda-list '(m))
(cl:defmethod base_arm1-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:base_arm1-val is deprecated.  Use arm_lib-msg:base_arm1 instead.")
  (base_arm1 m))

(cl:ensure-generic-function 'arm1_arm2-val :lambda-list '(m))
(cl:defmethod arm1_arm2-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm1_arm2-val is deprecated.  Use arm_lib-msg:arm1_arm2 instead.")
  (arm1_arm2 m))

(cl:ensure-generic-function 'arm2_arm3-val :lambda-list '(m))
(cl:defmethod arm2_arm3-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm2_arm3-val is deprecated.  Use arm_lib-msg:arm2_arm3 instead.")
  (arm2_arm3 m))

(cl:ensure-generic-function 'arm3_arm4-val :lambda-list '(m))
(cl:defmethod arm3_arm4-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm3_arm4-val is deprecated.  Use arm_lib-msg:arm3_arm4 instead.")
  (arm3_arm4 m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:p-val is deprecated.  Use arm_lib-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:i-val is deprecated.  Use arm_lib-msg:i instead.")
  (i m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:d-val is deprecated.  Use arm_lib-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Angles>) ostream)
  "Serializes a message object of type '<Angles>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'base_arm1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm1_arm2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm2_arm3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm3_arm4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Angles>) istream)
  "Deserializes a message object of type '<Angles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base_arm1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm1_arm2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm2_arm3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm3_arm4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Angles>)))
  "Returns string type for a message object of type '<Angles>"
  "arm_lib/Angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Angles)))
  "Returns string type for a message object of type 'Angles"
  "arm_lib/Angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Angles>)))
  "Returns md5sum for a message object of type '<Angles>"
  "d5c56eccbb002287c9ebfe2ecc181f37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Angles)))
  "Returns md5sum for a message object of type 'Angles"
  "d5c56eccbb002287c9ebfe2ecc181f37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Angles>)))
  "Returns full string definition for message of type '<Angles>"
  (cl:format cl:nil "float32 base_arm1~%float32 arm1_arm2~%float32 arm2_arm3~%float32 arm3_arm4~%float32 p~%float32 i ~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Angles)))
  "Returns full string definition for message of type 'Angles"
  (cl:format cl:nil "float32 base_arm1~%float32 arm1_arm2~%float32 arm2_arm3~%float32 arm3_arm4~%float32 p~%float32 i ~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Angles>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Angles>))
  "Converts a ROS message object to a list"
  (cl:list 'Angles
    (cl:cons ':base_arm1 (base_arm1 msg))
    (cl:cons ':arm1_arm2 (arm1_arm2 msg))
    (cl:cons ':arm2_arm3 (arm2_arm3 msg))
    (cl:cons ':arm3_arm4 (arm3_arm4 msg))
    (cl:cons ':p (p msg))
    (cl:cons ':i (i msg))
    (cl:cons ':d (d msg))
))
