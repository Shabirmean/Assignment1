;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetState)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetState (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETSTATE")
  (make-package "AQUACORE::GETSTATE"))
(unless (find-package "AQUACORE::GETSTATEREQUEST")
  (make-package "AQUACORE::GETSTATEREQUEST"))
(unless (find-package "AQUACORE::GETSTATERESPONSE")
  (make-package "AQUACORE::GETSTATERESPONSE"))

(in-package "ROS")





(defclass aquacore::GetStateRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass aquacore::GetStateResponse
  :super ros::object
  :slots (_state ))

(defmethod aquacore::GetStateResponse
  (:init
   (&key
    ((:state __state) (instance aquacore::StateMsg :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; aquacore/StateMsg _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; aquacore/StateMsg _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; aquacore/StateMsg _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass aquacore::GetState
  :super ros::object
  :slots ())

(setf (get aquacore::GetState :md5sum-) "eed0983a56703471598bb1e571d9dddf")
(setf (get aquacore::GetState :datatype-) "aquacore/GetState")
(setf (get aquacore::GetState :request) aquacore::GetStateRequest)
(setf (get aquacore::GetState :response) aquacore::GetStateResponse)

(defmethod aquacore::GetStateRequest
  (:response () (instance aquacore::GetStateResponse :init)))

(setf (get aquacore::GetStateRequest :md5sum-) "eed0983a56703471598bb1e571d9dddf")
(setf (get aquacore::GetStateRequest :datatype-) "aquacore/GetStateRequest")
(setf (get aquacore::GetStateRequest :definition-)
      "---
StateMsg state


================================================================================
MSG: aquacore/StateMsg
Header header
int32 LED
int32 Gait

float32 RollAngle
float32 PitchAngle
float32 YawAngle

float32 RollTargetAngle
float32 PitchTargetAngle
float32 YawTargetAngle
float32 DepthTarget

float32 AvgRollCommand
float32 AvgPitchCommand
float32 AvgYawCommand
float32 AvgHeaveCommand
float32 AvgSurgeCommand

int32 AutopilotMode
float32 Depth
float32 Speed

float32[] LegCurrents


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get aquacore::GetStateResponse :md5sum-) "eed0983a56703471598bb1e571d9dddf")
(setf (get aquacore::GetStateResponse :datatype-) "aquacore/GetStateResponse")
(setf (get aquacore::GetStateResponse :definition-)
      "---
StateMsg state


================================================================================
MSG: aquacore/StateMsg
Header header
int32 LED
int32 Gait

float32 RollAngle
float32 PitchAngle
float32 YawAngle

float32 RollTargetAngle
float32 PitchTargetAngle
float32 YawTargetAngle
float32 DepthTarget

float32 AvgRollCommand
float32 AvgPitchCommand
float32 AvgYawCommand
float32 AvgHeaveCommand
float32 AvgSurgeCommand

int32 AutopilotMode
float32 Depth
float32 Speed

float32[] LegCurrents


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :aquacore/GetState "eed0983a56703471598bb1e571d9dddf")


