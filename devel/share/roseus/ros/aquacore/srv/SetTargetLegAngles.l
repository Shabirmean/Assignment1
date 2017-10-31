;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetTargetLegAngles)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetTargetLegAngles (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETTARGETLEGANGLES")
  (make-package "AQUACORE::SETTARGETLEGANGLES"))
(unless (find-package "AQUACORE::SETTARGETLEGANGLESREQUEST")
  (make-package "AQUACORE::SETTARGETLEGANGLESREQUEST"))
(unless (find-package "AQUACORE::SETTARGETLEGANGLESRESPONSE")
  (make-package "AQUACORE::SETTARGETLEGANGLESRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass aquacore::SetTargetLegAnglesRequest
  :super ros::object
  :slots (_header _target_angles ))

(defmethod aquacore::SetTargetLegAnglesRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_angles __target_angles) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_angles __target_angles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:target_angles
   (&optional __target_angles)
   (if __target_angles (setq _target_angles __target_angles)) _target_angles)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[6] _target_angles
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[6] _target_angles
     (dotimes (i 6)
       (sys::poke (elt _target_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[6] _target_angles
   (dotimes (i (length _target_angles))
     (setf (elt _target_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass aquacore::SetTargetLegAnglesResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetTargetLegAnglesResponse
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

(defclass aquacore::SetTargetLegAngles
  :super ros::object
  :slots ())

(setf (get aquacore::SetTargetLegAngles :md5sum-) "713c56434b15577b0cfe5670a7e5dd0a")
(setf (get aquacore::SetTargetLegAngles :datatype-) "aquacore/SetTargetLegAngles")
(setf (get aquacore::SetTargetLegAngles :request) aquacore::SetTargetLegAnglesRequest)
(setf (get aquacore::SetTargetLegAngles :response) aquacore::SetTargetLegAnglesResponse)

(defmethod aquacore::SetTargetLegAnglesRequest
  (:response () (instance aquacore::SetTargetLegAnglesResponse :init)))

(setf (get aquacore::SetTargetLegAnglesRequest :md5sum-) "713c56434b15577b0cfe5670a7e5dd0a")
(setf (get aquacore::SetTargetLegAnglesRequest :datatype-) "aquacore/SetTargetLegAnglesRequest")
(setf (get aquacore::SetTargetLegAnglesRequest :definition-)
      "Header header
float64[6] target_angles

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
---

")

(setf (get aquacore::SetTargetLegAnglesResponse :md5sum-) "713c56434b15577b0cfe5670a7e5dd0a")
(setf (get aquacore::SetTargetLegAnglesResponse :datatype-) "aquacore/SetTargetLegAnglesResponse")
(setf (get aquacore::SetTargetLegAnglesResponse :definition-)
      "Header header
float64[6] target_angles

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
---

")



(provide :aquacore/SetTargetLegAngles "713c56434b15577b0cfe5670a7e5dd0a")


