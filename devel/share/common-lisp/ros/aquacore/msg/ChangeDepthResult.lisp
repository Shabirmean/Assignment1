; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude ChangeDepthResult.msg.html

(cl:defclass <ChangeDepthResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChangeDepthResult (<ChangeDepthResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeDepthResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeDepthResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<ChangeDepthResult> is deprecated: use aquacore-msg:ChangeDepthResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeDepthResult>) ostream)
  "Serializes a message object of type '<ChangeDepthResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeDepthResult>) istream)
  "Deserializes a message object of type '<ChangeDepthResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeDepthResult>)))
  "Returns string type for a message object of type '<ChangeDepthResult>"
  "aquacore/ChangeDepthResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeDepthResult)))
  "Returns string type for a message object of type 'ChangeDepthResult"
  "aquacore/ChangeDepthResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeDepthResult>)))
  "Returns md5sum for a message object of type '<ChangeDepthResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeDepthResult)))
  "Returns md5sum for a message object of type 'ChangeDepthResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeDepthResult>)))
  "Returns full string definition for message of type '<ChangeDepthResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeDepthResult)))
  "Returns full string definition for message of type 'ChangeDepthResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeDepthResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeDepthResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeDepthResult
))
