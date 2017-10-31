;; Auto-generated. Do not edit!


(when (boundp 'aquacore::PeriodicLegCommand)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'PeriodicLegCommand (find-package "AQUACORE")))
(unless (find-package "AQUACORE::PERIODICLEGCOMMAND")
  (make-package "AQUACORE::PERIODICLEGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PeriodicLegCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aquacore::PeriodicLegCommand
  :super ros::object
  :slots (_header _amplitudes _frequencies _phase_offsets _leg_offsets _leg_velocities ))

(defmethod aquacore::PeriodicLegCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:amplitudes __amplitudes) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:frequencies __frequencies) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:phase_offsets __phase_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:leg_offsets __leg_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:leg_velocities __leg_velocities) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _amplitudes __amplitudes)
   (setq _frequencies __frequencies)
   (setq _phase_offsets __phase_offsets)
   (setq _leg_offsets __leg_offsets)
   (setq _leg_velocities __leg_velocities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:amplitudes
   (&optional __amplitudes)
   (if __amplitudes (setq _amplitudes __amplitudes)) _amplitudes)
  (:frequencies
   (&optional __frequencies)
   (if __frequencies (setq _frequencies __frequencies)) _frequencies)
  (:phase_offsets
   (&optional __phase_offsets)
   (if __phase_offsets (setq _phase_offsets __phase_offsets)) _phase_offsets)
  (:leg_offsets
   (&optional __leg_offsets)
   (if __leg_offsets (setq _leg_offsets __leg_offsets)) _leg_offsets)
  (:leg_velocities
   (&optional __leg_velocities)
   (if __leg_velocities (setq _leg_velocities __leg_velocities)) _leg_velocities)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[6] _amplitudes
    (* 4    6)
    ;; float32[6] _frequencies
    (* 4    6)
    ;; float32[6] _phase_offsets
    (* 4    6)
    ;; float32[6] _leg_offsets
    (* 4    6)
    ;; float32[6] _leg_velocities
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[6] _amplitudes
     (dotimes (i 6)
       (sys::poke (elt _amplitudes i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _frequencies
     (dotimes (i 6)
       (sys::poke (elt _frequencies i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _phase_offsets
     (dotimes (i 6)
       (sys::poke (elt _phase_offsets i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _leg_offsets
     (dotimes (i 6)
       (sys::poke (elt _leg_offsets i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _leg_velocities
     (dotimes (i 6)
       (sys::poke (elt _leg_velocities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[6] _amplitudes
   (dotimes (i (length _amplitudes))
     (setf (elt _amplitudes i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _frequencies
   (dotimes (i (length _frequencies))
     (setf (elt _frequencies i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _phase_offsets
   (dotimes (i (length _phase_offsets))
     (setf (elt _phase_offsets i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _leg_offsets
   (dotimes (i (length _leg_offsets))
     (setf (elt _leg_offsets i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _leg_velocities
   (dotimes (i (length _leg_velocities))
     (setf (elt _leg_velocities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get aquacore::PeriodicLegCommand :md5sum-) "48094d6d773e147611fe2c7c7ff18406")
(setf (get aquacore::PeriodicLegCommand :datatype-) "aquacore/PeriodicLegCommand")
(setf (get aquacore::PeriodicLegCommand :definition-)
      "# This message represents the leg command parameterization that was decided by consensus at 
# MRL in July, 2014. The intention is that ROS-coded gaits will publish messages of this
# type, and that the aqua robot as well as its simulator will implement leg motions 
# that follow the requested sinusoidal trajectories.
#
# Author: David Meger
# Date: July 29, 2014 

Header header

#
# The ordering of the 6 legs in all following arrays is:
# 0: front-left
# 1: mid-left
# 2: hind-left
# 3: front-right
# 4: mid-right
# 5: hind-right
#
# The orientation of the leg angles are:
# 0: pointing backwards
# pi: pointing downwards
# 2*pi: pointing forwards
#
# Computation of current leg angle:
# leg_angle = amplitude * cos(2*pi * frequency * dt + phase_offset) + leg_offset
#
# Midoff positioning and velocity modes:
#
# The midoff angle of each leg can be commanded in either position mode or in
# velocity mode. They are implemented as follows:
#
# if leg_velocities[i] != 0:
#   actual leg offset = last internally-stored leg offset + leg_velocities[i]*dt
# else:
#   actual leg offset = leg_offsets[i]

float32[6] amplitudes     # units: rad
float32[6] frequencies    # units: hz
float32[6] phase_offsets  # units: rad
float32[6] leg_offsets    # units: rad
float32[6] leg_velocities # units: rad/s

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



(provide :aquacore/PeriodicLegCommand "48094d6d773e147611fe2c7c7ff18406")


