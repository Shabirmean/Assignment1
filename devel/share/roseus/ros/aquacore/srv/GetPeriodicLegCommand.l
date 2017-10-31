;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetPeriodicLegCommand)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetPeriodicLegCommand (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETPERIODICLEGCOMMAND")
  (make-package "AQUACORE::GETPERIODICLEGCOMMAND"))
(unless (find-package "AQUACORE::GETPERIODICLEGCOMMANDREQUEST")
  (make-package "AQUACORE::GETPERIODICLEGCOMMANDREQUEST"))
(unless (find-package "AQUACORE::GETPERIODICLEGCOMMANDRESPONSE")
  (make-package "AQUACORE::GETPERIODICLEGCOMMANDRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aquacore::GetPeriodicLegCommandRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetPeriodicLegCommandRequest
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

(defclass aquacore::GetPeriodicLegCommandResponse
  :super ros::object
  :slots (_stamp _frequencies _amplitudes _leg_offsets _phase_offsets ))

(defmethod aquacore::GetPeriodicLegCommandResponse
  (:init
   (&key
    ((:stamp __stamp) (instance std_msgs::Header :init))
    ((:frequencies __frequencies) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:amplitudes __amplitudes) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:leg_offsets __leg_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:phase_offsets __phase_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _frequencies __frequencies)
   (setq _amplitudes __amplitudes)
   (setq _leg_offsets __leg_offsets)
   (setq _phase_offsets __phase_offsets)
   self)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
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
    ;; std_msgs/Header _stamp
    (send _stamp :serialization-length)
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
     ;; std_msgs/Header _stamp
       (send _stamp :serialize s)
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
   ;; std_msgs/Header _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
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

(defclass aquacore::GetPeriodicLegCommand
  :super ros::object
  :slots ())

(setf (get aquacore::GetPeriodicLegCommand :md5sum-) "d3befc8a5e5142617cdb8fa5f1aeaff0")
(setf (get aquacore::GetPeriodicLegCommand :datatype-) "aquacore/GetPeriodicLegCommand")
(setf (get aquacore::GetPeriodicLegCommand :request) aquacore::GetPeriodicLegCommandRequest)
(setf (get aquacore::GetPeriodicLegCommand :response) aquacore::GetPeriodicLegCommandResponse)

(defmethod aquacore::GetPeriodicLegCommandRequest
  (:response () (instance aquacore::GetPeriodicLegCommandResponse :init)))

(setf (get aquacore::GetPeriodicLegCommandRequest :md5sum-) "d3befc8a5e5142617cdb8fa5f1aeaff0")
(setf (get aquacore::GetPeriodicLegCommandRequest :datatype-) "aquacore/GetPeriodicLegCommandRequest")
(setf (get aquacore::GetPeriodicLegCommandRequest :definition-)
      "---
Header stamp
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
")

(setf (get aquacore::GetPeriodicLegCommandResponse :md5sum-) "d3befc8a5e5142617cdb8fa5f1aeaff0")
(setf (get aquacore::GetPeriodicLegCommandResponse :datatype-) "aquacore/GetPeriodicLegCommandResponse")
(setf (get aquacore::GetPeriodicLegCommandResponse :definition-)
      "---
Header stamp
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
")



(provide :aquacore/GetPeriodicLegCommand "d3befc8a5e5142617cdb8fa5f1aeaff0")


