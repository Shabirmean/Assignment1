;; Auto-generated. Do not edit!


(when (boundp 'aquacore::Health)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'Health (find-package "AQUACORE")))
(unless (find-package "AQUACORE::HEALTH")
  (make-package "AQUACORE::HEALTH"))

(in-package "ROS")
;;//! \htmlinclude Health.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aquacore::Health
  :super ros::object
  :slots (_header _positions _temperatures _voltage _current _avgvoltage _avgcurrent _avgpower _battery_dod _hs_temp ))

(defmethod aquacore::Health
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperatures __temperatures) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:avgvoltage __avgvoltage) 0.0)
    ((:avgcurrent __avgcurrent) 0.0)
    ((:avgpower __avgpower) 0.0)
    ((:battery_dod __battery_dod) 0.0)
    ((:hs_temp __hs_temp) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _positions __positions)
   (setq _temperatures __temperatures)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _avgvoltage (float __avgvoltage))
   (setq _avgcurrent (float __avgcurrent))
   (setq _avgpower (float __avgpower))
   (setq _battery_dod (float __battery_dod))
   (setq _hs_temp __hs_temp)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:temperatures
   (&optional __temperatures)
   (if __temperatures (setq _temperatures __temperatures)) _temperatures)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:avgvoltage
   (&optional __avgvoltage)
   (if __avgvoltage (setq _avgvoltage __avgvoltage)) _avgvoltage)
  (:avgcurrent
   (&optional __avgcurrent)
   (if __avgcurrent (setq _avgcurrent __avgcurrent)) _avgcurrent)
  (:avgpower
   (&optional __avgpower)
   (if __avgpower (setq _avgpower __avgpower)) _avgpower)
  (:battery_dod
   (&optional __battery_dod)
   (if __battery_dod (setq _battery_dod __battery_dod)) _battery_dod)
  (:hs_temp
   (&optional __hs_temp)
   (if __hs_temp (setq _hs_temp __hs_temp)) _hs_temp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _positions
    (* 4    (length _positions)) 4
    ;; float32[] _temperatures
    (* 4    (length _temperatures)) 4
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32 _avgvoltage
    4
    ;; float32 _avgcurrent
    4
    ;; float32 _avgpower
    4
    ;; float32 _battery_dod
    4
    ;; float32[] _hs_temp
    (* 4    (length _hs_temp)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _temperatures
     (write-long (length _temperatures) s)
     (dotimes (i (length _temperatures))
       (sys::poke (elt _temperatures i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _avgvoltage
       (sys::poke _avgvoltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _avgcurrent
       (sys::poke _avgcurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _avgpower
       (sys::poke _avgpower (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_dod
       (sys::poke _battery_dod (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _hs_temp
     (write-long (length _hs_temp) s)
     (dotimes (i (length _hs_temp))
       (sys::poke (elt _hs_temp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _temperatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperatures (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _temperatures i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _avgvoltage
     (setq _avgvoltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _avgcurrent
     (setq _avgcurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _avgpower
     (setq _avgpower (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_dod
     (setq _battery_dod (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _hs_temp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hs_temp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hs_temp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get aquacore::Health :md5sum-) "c0da3e4b5a27813e5a5902cdd7574858")
(setf (get aquacore::Health :datatype-) "aquacore/Health")
(setf (get aquacore::Health :definition-)
      "Header header
float32[] positions   #leg positions
float32[] temperatures #leg temprature
float32 voltage
float32 current
float32 avgvoltage
float32 avgcurrent
float32 avgpower
float32 battery_dod
float32[] hs_temp 

#magnetometer
#float32[] accelerations 
#float32 heading
#float32 pitch
#float32 roll
#float32 dip

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



(provide :aquacore/Health "c0da3e4b5a27813e5a5902cdd7574858")


