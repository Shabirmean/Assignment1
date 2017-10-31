;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetPeriodicLegCommand)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetPeriodicLegCommand (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETPERIODICLEGCOMMAND")
  (make-package "AQUACORE::SETPERIODICLEGCOMMAND"))
(unless (find-package "AQUACORE::SETPERIODICLEGCOMMANDREQUEST")
  (make-package "AQUACORE::SETPERIODICLEGCOMMANDREQUEST"))
(unless (find-package "AQUACORE::SETPERIODICLEGCOMMANDRESPONSE")
  (make-package "AQUACORE::SETPERIODICLEGCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass aquacore::SetPeriodicLegCommandRequest
  :super ros::object
  :slots (_header _frequencies _amplitudes _leg_offsets _phase_offsets ))

(defmethod aquacore::SetPeriodicLegCommandRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frequencies __frequencies) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:amplitudes __amplitudes) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:leg_offsets __leg_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:phase_offsets __phase_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frequencies __frequencies)
   (setq _amplitudes __amplitudes)
   (setq _leg_offsets __leg_offsets)
   (setq _phase_offsets __phase_offsets)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frequencies
   (&optional __frequencies)
   (if __frequencies (setq _frequencies __frequencies)) _frequencies)
  (:amplitudes
   (&optional __amplitudes)
   (if __amplitudes (setq _amplitudes __amplitudes)) _amplitudes)
  (:leg_offsets
   (&optional __leg_offsets)
   (if __leg_offsets (setq _leg_offsets __leg_offsets)) _leg_offsets)
  (:phase_offsets
   (&optional __phase_offsets)
   (if __phase_offsets (setq _phase_offsets __phase_offsets)) _phase_offsets)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[6] _frequencies
    (* 8    6)
    ;; float64[6] _amplitudes
    (* 8    6)
    ;; float64[6] _leg_offsets
    (* 8    6)
    ;; float64[6] _phase_offsets
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[6] _frequencies
     (dotimes (i 6)
       (sys::poke (elt _frequencies i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _amplitudes
     (dotimes (i 6)
       (sys::poke (elt _amplitudes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _leg_offsets
     (dotimes (i 6)
       (sys::poke (elt _leg_offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _phase_offsets
     (dotimes (i 6)
       (sys::poke (elt _phase_offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[6] _frequencies
   (dotimes (i (length _frequencies))
     (setf (elt _frequencies i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _amplitudes
   (dotimes (i (length _amplitudes))
     (setf (elt _amplitudes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _leg_offsets
   (dotimes (i (length _leg_offsets))
     (setf (elt _leg_offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _phase_offsets
   (dotimes (i (length _phase_offsets))
     (setf (elt _phase_offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass aquacore::SetPeriodicLegCommandResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetPeriodicLegCommandResponse
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

(defclass aquacore::SetPeriodicLegCommand
  :super ros::object
  :slots ())

(setf (get aquacore::SetPeriodicLegCommand :md5sum-) "e706408018621c179fa26af34ef37d03")
(setf (get aquacore::SetPeriodicLegCommand :datatype-) "aquacore/SetPeriodicLegCommand")
(setf (get aquacore::SetPeriodicLegCommand :request) aquacore::SetPeriodicLegCommandRequest)
(setf (get aquacore::SetPeriodicLegCommand :response) aquacore::SetPeriodicLegCommandResponse)

(defmethod aquacore::SetPeriodicLegCommandRequest
  (:response () (instance aquacore::SetPeriodicLegCommandResponse :init)))

(setf (get aquacore::SetPeriodicLegCommandRequest :md5sum-) "e706408018621c179fa26af34ef37d03")
(setf (get aquacore::SetPeriodicLegCommandRequest :datatype-) "aquacore/SetPeriodicLegCommandRequest")
(setf (get aquacore::SetPeriodicLegCommandRequest :definition-)
      "Header header
float64[6] frequencies
float64[6] amplitudes
float64[6] leg_offsets
float64[6] phase_offsets

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

(setf (get aquacore::SetPeriodicLegCommandResponse :md5sum-) "e706408018621c179fa26af34ef37d03")
(setf (get aquacore::SetPeriodicLegCommandResponse :datatype-) "aquacore/SetPeriodicLegCommandResponse")
(setf (get aquacore::SetPeriodicLegCommandResponse :definition-)
      "Header header
float64[6] frequencies
float64[6] amplitudes
float64[6] leg_offsets
float64[6] phase_offsets

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



(provide :aquacore/SetPeriodicLegCommand "e706408018621c179fa26af34ef37d03")


