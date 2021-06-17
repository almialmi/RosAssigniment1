; Auto-generated. Do not edit!


(cl:in-package arm_lib-srv)


;//! \htmlinclude ik-request.msg.html

(cl:defclass <ik-request> (roslisp-msg-protocol:ros-message)
  ((actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ik-request (<ik-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ik-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ik-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<ik-request> is deprecated: use arm_lib-srv:ik-request instead.")))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <ik-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:actuator_pose-val is deprecated.  Use arm_lib-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ik-request>) ostream)
  "Serializes a message object of type '<ik-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'actuator_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ik-request>) istream)
  "Deserializes a message object of type '<ik-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ik-request>)))
  "Returns string type for a service object of type '<ik-request>"
  "arm_lib/ikRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik-request)))
  "Returns string type for a service object of type 'ik-request"
  "arm_lib/ikRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ik-request>)))
  "Returns md5sum for a message object of type '<ik-request>"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ik-request)))
  "Returns md5sum for a message object of type 'ik-request"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ik-request>)))
  "Returns full string definition for message of type '<ik-request>"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ik-request)))
  "Returns full string definition for message of type 'ik-request"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ik-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ik-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ik-request
    (cl:cons ':actuator_pose (actuator_pose msg))
))
;//! \htmlinclude ik-response.msg.html

(cl:defclass <ik-response> (roslisp-msg-protocol:ros-message)
  ((new_angles
    :reader new_angles
    :initarg :new_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ik-response (<ik-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ik-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ik-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<ik-response> is deprecated: use arm_lib-srv:ik-response instead.")))

(cl:ensure-generic-function 'new_angles-val :lambda-list '(m))
(cl:defmethod new_angles-val ((m <ik-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:new_angles-val is deprecated.  Use arm_lib-srv:new_angles instead.")
  (new_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ik-response>) ostream)
  "Serializes a message object of type '<ik-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'new_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ik-response>) istream)
  "Deserializes a message object of type '<ik-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ik-response>)))
  "Returns string type for a service object of type '<ik-response>"
  "arm_lib/ikResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik-response)))
  "Returns string type for a service object of type 'ik-response"
  "arm_lib/ikResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ik-response>)))
  "Returns md5sum for a message object of type '<ik-response>"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ik-response)))
  "Returns md5sum for a message object of type 'ik-response"
  "2c802ecf38b17c9f65562f8dd1868972")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ik-response>)))
  "Returns full string definition for message of type '<ik-response>"
  (cl:format cl:nil "float32[] new_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ik-response)))
  "Returns full string definition for message of type 'ik-response"
  (cl:format cl:nil "float32[] new_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ik-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ik-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ik-response
    (cl:cons ':new_angles (new_angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ik)))
  'ik-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ik)))
  'ik-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik)))
  "Returns string type for a service object of type '<ik>"
  "arm_lib/ik")