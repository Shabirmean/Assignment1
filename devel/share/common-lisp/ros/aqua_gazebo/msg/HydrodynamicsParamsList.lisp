; Auto-generated. Do not edit!


(cl:in-package aqua_gazebo-msg)


;//! \htmlinclude HydrodynamicsParamsList.msg.html

(cl:defclass <HydrodynamicsParamsList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (params
    :reader params
    :initarg :params
    :type (cl:vector aqua_gazebo-msg:HydrodynamicsParams)
   :initform (cl:make-array 0 :element-type 'aqua_gazebo-msg:HydrodynamicsParams :initial-element (cl:make-instance 'aqua_gazebo-msg:HydrodynamicsParams))))
)

(cl:defclass HydrodynamicsParamsList (<HydrodynamicsParamsList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HydrodynamicsParamsList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HydrodynamicsParamsList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aqua_gazebo-msg:<HydrodynamicsParamsList> is deprecated: use aqua_gazebo-msg:HydrodynamicsParamsList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HydrodynamicsParamsList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gazebo-msg:header-val is deprecated.  Use aqua_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <HydrodynamicsParamsList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gazebo-msg:params-val is deprecated.  Use aqua_gazebo-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HydrodynamicsParamsList>) ostream)
  "Serializes a message object of type '<HydrodynamicsParamsList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HydrodynamicsParamsList>) istream)
  "Deserializes a message object of type '<HydrodynamicsParamsList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'aqua_gazebo-msg:HydrodynamicsParams))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HydrodynamicsParamsList>)))
  "Returns string type for a message object of type '<HydrodynamicsParamsList>"
  "aqua_gazebo/HydrodynamicsParamsList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HydrodynamicsParamsList)))
  "Returns string type for a message object of type 'HydrodynamicsParamsList"
  "aqua_gazebo/HydrodynamicsParamsList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HydrodynamicsParamsList>)))
  "Returns md5sum for a message object of type '<HydrodynamicsParamsList>"
  "3fb99dd419aa8fd6de13995f952156fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HydrodynamicsParamsList)))
  "Returns md5sum for a message object of type 'HydrodynamicsParamsList"
  "3fb99dd419aa8fd6de13995f952156fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HydrodynamicsParamsList>)))
  "Returns full string definition for message of type '<HydrodynamicsParamsList>"
  (cl:format cl:nil "std_msgs/Header header~%aqua_gazebo/HydrodynamicsParams[] params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: aqua_gazebo/HydrodynamicsParams~%std_msgs/Header header~%string name~%float64 wobble~%float64 drag_scaling~%float64 density~%float64 viscosity~%float64 mass~%float64 volume~%float64 planar~%float64[] K~%float64[] D~%float64[] I~%float64[] com~%float64[] cob~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HydrodynamicsParamsList)))
  "Returns full string definition for message of type 'HydrodynamicsParamsList"
  (cl:format cl:nil "std_msgs/Header header~%aqua_gazebo/HydrodynamicsParams[] params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: aqua_gazebo/HydrodynamicsParams~%std_msgs/Header header~%string name~%float64 wobble~%float64 drag_scaling~%float64 density~%float64 viscosity~%float64 mass~%float64 volume~%float64 planar~%float64[] K~%float64[] D~%float64[] I~%float64[] com~%float64[] cob~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HydrodynamicsParamsList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HydrodynamicsParamsList>))
  "Converts a ROS message object to a list"
  (cl:list 'HydrodynamicsParamsList
    (cl:cons ':header (header msg))
    (cl:cons ':params (params msg))
))
