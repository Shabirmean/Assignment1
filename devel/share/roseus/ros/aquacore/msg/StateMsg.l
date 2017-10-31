;; Auto-generated. Do not edit!


(when (boundp 'aquacore::StateMsg)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'StateMsg (find-package "AQUACORE")))
(unless (find-package "AQUACORE::STATEMSG")
  (make-package "AQUACORE::STATEMSG"))

(in-package "ROS")
;;//! \htmlinclude StateMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aquacore::StateMsg
  :super ros::object
  :slots (_header _LED _Gait _RollAngle _PitchAngle _YawAngle _RollTargetAngle _PitchTargetAngle _YawTargetAngle _DepthTarget _AvgRollCommand _AvgPitchCommand _AvgYawCommand _AvgHeaveCommand _AvgSurgeCommand _AutopilotMode _Depth _Speed _LegCurrents ))

(defmethod aquacore::StateMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:LED __LED) 0)
    ((:Gait __Gait) 0)
    ((:RollAngle __RollAngle) 0.0)
    ((:PitchAngle __PitchAngle) 0.0)
    ((:YawAngle __YawAngle) 0.0)
    ((:RollTargetAngle __RollTargetAngle) 0.0)
    ((:PitchTargetAngle __PitchTargetAngle) 0.0)
    ((:YawTargetAngle __YawTargetAngle) 0.0)
    ((:DepthTarget __DepthTarget) 0.0)
    ((:AvgRollCommand __AvgRollCommand) 0.0)
    ((:AvgPitchCommand __AvgPitchCommand) 0.0)
    ((:AvgYawCommand __AvgYawCommand) 0.0)
    ((:AvgHeaveCommand __AvgHeaveCommand) 0.0)
    ((:AvgSurgeCommand __AvgSurgeCommand) 0.0)
    ((:AutopilotMode __AutopilotMode) 0)
    ((:Depth __Depth) 0.0)
    ((:Speed __Speed) 0.0)
    ((:LegCurrents __LegCurrents) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _LED (round __LED))
   (setq _Gait (round __Gait))
   (setq _RollAngle (float __RollAngle))
   (setq _PitchAngle (float __PitchAngle))
   (setq _YawAngle (float __YawAngle))
   (setq _RollTargetAngle (float __RollTargetAngle))
   (setq _PitchTargetAngle (float __PitchTargetAngle))
   (setq _YawTargetAngle (float __YawTargetAngle))
   (setq _DepthTarget (float __DepthTarget))
   (setq _AvgRollCommand (float __AvgRollCommand))
   (setq _AvgPitchCommand (float __AvgPitchCommand))
   (setq _AvgYawCommand (float __AvgYawCommand))
   (setq _AvgHeaveCommand (float __AvgHeaveCommand))
   (setq _AvgSurgeCommand (float __AvgSurgeCommand))
   (setq _AutopilotMode (round __AutopilotMode))
   (setq _Depth (float __Depth))
   (setq _Speed (float __Speed))
   (setq _LegCurrents __LegCurrents)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:LED
   (&optional __LED)
   (if __LED (setq _LED __LED)) _LED)
  (:Gait
   (&optional __Gait)
   (if __Gait (setq _Gait __Gait)) _Gait)
  (:RollAngle
   (&optional __RollAngle)
   (if __RollAngle (setq _RollAngle __RollAngle)) _RollAngle)
  (:PitchAngle
   (&optional __PitchAngle)
   (if __PitchAngle (setq _PitchAngle __PitchAngle)) _PitchAngle)
  (:YawAngle
   (&optional __YawAngle)
   (if __YawAngle (setq _YawAngle __YawAngle)) _YawAngle)
  (:RollTargetAngle
   (&optional __RollTargetAngle)
   (if __RollTargetAngle (setq _RollTargetAngle __RollTargetAngle)) _RollTargetAngle)
  (:PitchTargetAngle
   (&optional __PitchTargetAngle)
   (if __PitchTargetAngle (setq _PitchTargetAngle __PitchTargetAngle)) _PitchTargetAngle)
  (:YawTargetAngle
   (&optional __YawTargetAngle)
   (if __YawTargetAngle (setq _YawTargetAngle __YawTargetAngle)) _YawTargetAngle)
  (:DepthTarget
   (&optional __DepthTarget)
   (if __DepthTarget (setq _DepthTarget __DepthTarget)) _DepthTarget)
  (:AvgRollCommand
   (&optional __AvgRollCommand)
   (if __AvgRollCommand (setq _AvgRollCommand __AvgRollCommand)) _AvgRollCommand)
  (:AvgPitchCommand
   (&optional __AvgPitchCommand)
   (if __AvgPitchCommand (setq _AvgPitchCommand __AvgPitchCommand)) _AvgPitchCommand)
  (:AvgYawCommand
   (&optional __AvgYawCommand)
   (if __AvgYawCommand (setq _AvgYawCommand __AvgYawCommand)) _AvgYawCommand)
  (:AvgHeaveCommand
   (&optional __AvgHeaveCommand)
   (if __AvgHeaveCommand (setq _AvgHeaveCommand __AvgHeaveCommand)) _AvgHeaveCommand)
  (:AvgSurgeCommand
   (&optional __AvgSurgeCommand)
   (if __AvgSurgeCommand (setq _AvgSurgeCommand __AvgSurgeCommand)) _AvgSurgeCommand)
  (:AutopilotMode
   (&optional __AutopilotMode)
   (if __AutopilotMode (setq _AutopilotMode __AutopilotMode)) _AutopilotMode)
  (:Depth
   (&optional __Depth)
   (if __Depth (setq _Depth __Depth)) _Depth)
  (:Speed
   (&optional __Speed)
   (if __Speed (setq _Speed __Speed)) _Speed)
  (:LegCurrents
   (&optional __LegCurrents)
   (if __LegCurrents (setq _LegCurrents __LegCurrents)) _LegCurrents)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _LED
    4
    ;; int32 _Gait
    4
    ;; float32 _RollAngle
    4
    ;; float32 _PitchAngle
    4
    ;; float32 _YawAngle
    4
    ;; float32 _RollTargetAngle
    4
    ;; float32 _PitchTargetAngle
    4
    ;; float32 _YawTargetAngle
    4
    ;; float32 _DepthTarget
    4
    ;; float32 _AvgRollCommand
    4
    ;; float32 _AvgPitchCommand
    4
    ;; float32 _AvgYawCommand
    4
    ;; float32 _AvgHeaveCommand
    4
    ;; float32 _AvgSurgeCommand
    4
    ;; int32 _AutopilotMode
    4
    ;; float32 _Depth
    4
    ;; float32 _Speed
    4
    ;; float32[] _LegCurrents
    (* 4    (length _LegCurrents)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _LED
       (write-long _LED s)
     ;; int32 _Gait
       (write-long _Gait s)
     ;; float32 _RollAngle
       (sys::poke _RollAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PitchAngle
       (sys::poke _PitchAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YawAngle
       (sys::poke _YawAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RollTargetAngle
       (sys::poke _RollTargetAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PitchTargetAngle
       (sys::poke _PitchTargetAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YawTargetAngle
       (sys::poke _YawTargetAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DepthTarget
       (sys::poke _DepthTarget (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AvgRollCommand
       (sys::poke _AvgRollCommand (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AvgPitchCommand
       (sys::poke _AvgPitchCommand (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AvgYawCommand
       (sys::poke _AvgYawCommand (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AvgHeaveCommand
       (sys::poke _AvgHeaveCommand (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AvgSurgeCommand
       (sys::poke _AvgSurgeCommand (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _AutopilotMode
       (write-long _AutopilotMode s)
     ;; float32 _Depth
       (sys::poke _Depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Speed
       (sys::poke _Speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _LegCurrents
     (write-long (length _LegCurrents) s)
     (dotimes (i (length _LegCurrents))
       (sys::poke (elt _LegCurrents i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _LED
     (setq _LED (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Gait
     (setq _Gait (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _RollAngle
     (setq _RollAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PitchAngle
     (setq _PitchAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YawAngle
     (setq _YawAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RollTargetAngle
     (setq _RollTargetAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PitchTargetAngle
     (setq _PitchTargetAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YawTargetAngle
     (setq _YawTargetAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DepthTarget
     (setq _DepthTarget (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AvgRollCommand
     (setq _AvgRollCommand (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AvgPitchCommand
     (setq _AvgPitchCommand (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AvgYawCommand
     (setq _AvgYawCommand (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AvgHeaveCommand
     (setq _AvgHeaveCommand (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AvgSurgeCommand
     (setq _AvgSurgeCommand (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _AutopilotMode
     (setq _AutopilotMode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Depth
     (setq _Depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Speed
     (setq _Speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _LegCurrents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _LegCurrents (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _LegCurrents i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get aquacore::StateMsg :md5sum-) "8f3da9637657db8621e960d32a985a35")
(setf (get aquacore::StateMsg :datatype-) "aquacore/StateMsg")
(setf (get aquacore::StateMsg :definition-)
      "Header header
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



(provide :aquacore/StateMsg "8f3da9637657db8621e960d32a985a35")


