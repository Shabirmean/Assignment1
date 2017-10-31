;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetTargetLegAngles)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetTargetLegAngles (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETTARGETLEGANGLES")
  (make-package "AQUACORE::GETTARGETLEGANGLES"))
(unless (find-package "AQUACORE::GETTARGETLEGANGLESREQUEST")
  (make-package "AQUACORE::GETTARGETLEGANGLESREQUEST"))
(unless (find-package "AQUACORE::GETTARGETLEGANGLESRESPONSE")
  (make-package "AQUACORE::GETTARGETLEGANGLESRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aquacore::GetTargetLegAnglesRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetTargetLegAnglesRequest
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

(defclass aquacore::GetTargetLegAnglesResponse
  :super ros::object
  :slots (_stamp _target_angles ))

(defmethod aquacore::GetTargetLegAnglesResponse
  (:init
   (&key
    ((:stamp __stamp) (instance std_msgs::Header :init))
    ((:target_angles __target_angles) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _target_angles __target_angles)
   self)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
  (:target_angles
   (&optional __target_angles)
   (if __target_angles (setq _target_angles __target_angles)) _target_angles)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _stamp
    (send _stamp :serialization-length)
    ;; float64[6] _target_angles
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _stamp
       (send _stamp :serialize s)
     ;; float64[6] _target_angles
     (dotimes (i 6)
       (sys::poke (elt _target_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
   ;; float64[6] _target_angles
   (dotimes (i (length _target_angles))
     (setf (elt _target_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass aquacore::GetTargetLegAngles
  :super ros::object
  :slots ())

(setf (get aquacore::GetTargetLegAngles :md5sum-) "0290c096db0f9662921c53f2603ee48a")
(setf (get aquacore::GetTargetLegAngles :datatype-) "aquacore/GetTargetLegAngles")
(setf (get aquacore::GetTargetLegAngles :request) aquacore::GetTargetLegAnglesRequest)
(setf (get aquacore::GetTargetLegAngles :response) aquacore::GetTargetLegAnglesResponse)

(defmethod aquacore::GetTargetLegAnglesRequest
  (:response () (instance aquacore::GetTargetLegAnglesResponse :init)))

(setf (get aquacore::GetTargetLegAnglesRequest :md5sum-) "0290c096db0f9662921c53f2603ee48a")
(setf (get aquacore::GetTargetLegAnglesRequest :datatype-) "aquacore/GetTargetLegAnglesRequest")
(setf (get aquacore::GetTargetLegAnglesRequest :definition-)
      "---
Header stamp
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
")

(setf (get aquacore::GetTargetLegAnglesResponse :md5sum-) "0290c096db0f9662921c53f2603ee48a")
(setf (get aquacore::GetTargetLegAnglesResponse :datatype-) "aquacore/GetTargetLegAnglesResponse")
(setf (get aquacore::GetTargetLegAnglesResponse :definition-)
      "---
Header stamp
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
")



(provide :aquacore/GetTargetLegAngles "0290c096db0f9662921c53f2603ee48a")


