; Auto-generated. Do not edit!


(cl:in-package question1-msg)


;//! \htmlinclude input.msg.html

(cl:defclass <input> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass input (<input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name question1-msg:<input> is deprecated: use question1-msg:input instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question1-msg:point-val is deprecated.  Use question1-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input>) ostream)
  "Serializes a message object of type '<input>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input>) istream)
  "Deserializes a message object of type '<input>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input>)))
  "Returns string type for a message object of type '<input>"
  "question1/input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input)))
  "Returns string type for a message object of type 'input"
  "question1/input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input>)))
  "Returns md5sum for a message object of type '<input>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input)))
  "Returns md5sum for a message object of type 'input"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input>)))
  "Returns full string definition for message of type '<input>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input)))
  "Returns full string definition for message of type 'input"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input>))
  "Converts a ROS message object to a list"
  (cl:list 'input
    (cl:cons ':point (point msg))
))
