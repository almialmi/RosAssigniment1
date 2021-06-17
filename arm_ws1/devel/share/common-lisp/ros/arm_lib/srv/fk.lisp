; Auto-generated. Do not edit!


(cl:in-package arm_lib-srv)


;//! \htmlinclude fk-request.msg.html

(cl:defclass <fk-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (link_length
    :reader link_length
    :initarg :link_length
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass fk-request (<fk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<fk-request> is deprecated: use arm_lib-srv:fk-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <fk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:joint_angles-val is deprecated.  Use arm_lib-srv:joint_angles instead.")
  (joint_angles m))

(cl:ensure-generic-function 'link_length-val :lambda-list '(m))
(cl:defmethod link_length-val ((m <fk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:link_length-val is deprecated.  Use arm_lib-srv:link_length instead.")
  (link_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-request>) ostream)
  "Serializes a message object of type '<fk-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'link_length))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-request>) istream)
  "Deserializes a message object of type '<fk-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_length) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_length)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-request>)))
  "Returns string type for a service object of type '<fk-request>"
  "arm_lib/fkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-request)))
  "Returns string type for a service object of type 'fk-request"
  "arm_lib/fkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-request>)))
  "Returns md5sum for a message object of type '<fk-request>"
  "92fe4648bf1f304549e33eb855c12723")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-request)))
  "Returns md5sum for a message object of type 'fk-request"
  "92fe4648bf1f304549e33eb855c12723")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-request>)))
  "Returns full string definition for message of type '<fk-request>"
  (cl:format cl:nil "float32[] joint_angles~%float32[] link_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-request)))
  "Returns full string definition for message of type 'fk-request"
  (cl:format cl:nil "float32[] joint_angles~%float32[] link_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_length) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-request
    (cl:cons ':joint_angles (joint_angles msg))
    (cl:cons ':link_length (link_length msg))
))
;//! \htmlinclude fk-response.msg.html

(cl:defclass <fk-response> (roslisp-msg-protocol:ros-message)
  ((endpos
    :reader endpos
    :initarg :endpos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass fk-response (<fk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<fk-response> is deprecated: use arm_lib-srv:fk-response instead.")))

(cl:ensure-generic-function 'endpos-val :lambda-list '(m))
(cl:defmethod endpos-val ((m <fk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:endpos-val is deprecated.  Use arm_lib-srv:endpos instead.")
  (endpos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-response>) ostream)
  "Serializes a message object of type '<fk-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'endpos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'endpos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-response>) istream)
  "Deserializes a message object of type '<fk-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'endpos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'endpos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-response>)))
  "Returns string type for a service object of type '<fk-response>"
  "arm_lib/fkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-response)))
  "Returns string type for a service object of type 'fk-response"
  "arm_lib/fkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-response>)))
  "Returns md5sum for a message object of type '<fk-response>"
  "92fe4648bf1f304549e33eb855c12723")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-response)))
  "Returns md5sum for a message object of type 'fk-response"
  "92fe4648bf1f304549e33eb855c12723")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-response>)))
  "Returns full string definition for message of type '<fk-response>"
  (cl:format cl:nil "float32[] endpos~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-response)))
  "Returns full string definition for message of type 'fk-response"
  (cl:format cl:nil "float32[] endpos~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'endpos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-response
    (cl:cons ':endpos (endpos msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fk)))
  'fk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fk)))
  'fk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk)))
  "Returns string type for a service object of type '<fk>"
  "arm_lib/fk")