; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude DoSurfaceTaskGoal.msg.html

(cl:defclass <DoSurfaceTaskGoal> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0)
   (ascend_speed
    :reader ascend_speed
    :initarg :ascend_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass DoSurfaceTaskGoal (<DoSurfaceTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoSurfaceTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoSurfaceTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<DoSurfaceTaskGoal> is deprecated: use aquacore-msg:DoSurfaceTaskGoal instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <DoSurfaceTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:task-val is deprecated.  Use aquacore-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'ascend_speed-val :lambda-list '(m))
(cl:defmethod ascend_speed-val ((m <DoSurfaceTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:ascend_speed-val is deprecated.  Use aquacore-msg:ascend_speed instead.")
  (ascend_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoSurfaceTaskGoal>) ostream)
  "Serializes a message object of type '<DoSurfaceTaskGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ascend_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoSurfaceTaskGoal>) istream)
  "Deserializes a message object of type '<DoSurfaceTaskGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ascend_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoSurfaceTaskGoal>)))
  "Returns string type for a message object of type '<DoSurfaceTaskGoal>"
  "aquacore/DoSurfaceTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoSurfaceTaskGoal)))
  "Returns string type for a message object of type 'DoSurfaceTaskGoal"
  "aquacore/DoSurfaceTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoSurfaceTaskGoal>)))
  "Returns md5sum for a message object of type '<DoSurfaceTaskGoal>"
  "182b1839eeeb8a6283216175bc34cfac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoSurfaceTaskGoal)))
  "Returns md5sum for a message object of type 'DoSurfaceTaskGoal"
  "182b1839eeeb8a6283216175bc34cfac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoSurfaceTaskGoal>)))
  "Returns full string definition for message of type '<DoSurfaceTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Desired Goal~%byte task                                # see SurfaceTaskTypes.msg~%float64 ascend_speed                     # in m/s (using depth autopilot) or pseudo-unit-rate (using angles autopilot)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoSurfaceTaskGoal)))
  "Returns full string definition for message of type 'DoSurfaceTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Desired Goal~%byte task                                # see SurfaceTaskTypes.msg~%float64 ascend_speed                     # in m/s (using depth autopilot) or pseudo-unit-rate (using angles autopilot)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoSurfaceTaskGoal>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoSurfaceTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DoSurfaceTaskGoal
    (cl:cons ':task (task msg))
    (cl:cons ':ascend_speed (ascend_speed msg))
))