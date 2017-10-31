; Auto-generated. Do not edit!


(cl:in-package aqua_gazebo-msg)


;//! \htmlinclude ThrustParams.msg.html

(cl:defclass <ThrustParams> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (K1
    :reader K1
    :initarg :K1
    :type cl:float
    :initform 0.0)
   (K2
    :reader K2
    :initarg :K2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrustParams (<ThrustParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrustParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrustParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aqua_gazebo-msg:<ThrustParams> is deprecated: use aqua_gazebo-msg:ThrustParams instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrustParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gazebo-msg:header-val is deprecated.  Use aqua_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'K1-val :lambda-list '(m))
(cl:defmethod K1-val ((m <ThrustParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gazebo-msg:K1-val is deprecated.  Use aqua_gazebo-msg:K1 instead.")
  (K1 m))

(cl:ensure-generic-function 'K2-val :lambda-list '(m))
(cl:defmethod K2-val ((m <ThrustParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gazebo-msg:K2-val is deprecated.  Use aqua_gazebo-msg:K2 instead.")
  (K2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrustParams>) ostream)
  "Serializes a message object of type '<ThrustParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'K1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'K2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrustParams>) istream)
  "Deserializes a message object of type '<ThrustParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'K1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'K2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrustParams>)))
  "Returns string type for a message object of type '<ThrustParams>"
  "aqua_gazebo/ThrustParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrustParams)))
  "Returns string type for a message object of type 'ThrustParams"
  "aqua_gazebo/ThrustParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrustParams>)))
  "Returns md5sum for a message object of type '<ThrustParams>"
  "2e0e2b6bc7942aa373465fb1cd44868e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrustParams)))
  "Returns md5sum for a message object of type 'ThrustParams"
  "2e0e2b6bc7942aa373465fb1cd44868e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrustParams>)))
  "Returns full string definition for message of type '<ThrustParams>"
  (cl:format cl:nil "std_msgs/Header header~%float64 K1~%float64 K2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrustParams)))
  "Returns full string definition for message of type 'ThrustParams"
  (cl:format cl:nil "std_msgs/Header header~%float64 K1~%float64 K2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrustParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrustParams>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrustParams
    (cl:cons ':header (header msg))
    (cl:cons ':K1 (K1 msg))
    (cl:cons ':K2 (K2 msg))
))
