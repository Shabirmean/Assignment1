;; Auto-generated. Do not edit!


(when (boundp 'aqua_gazebo::ThrustParams)
  (if (not (find-package "AQUA_GAZEBO"))
    (make-package "AQUA_GAZEBO"))
  (shadow 'ThrustParams (find-package "AQUA_GAZEBO")))
(unless (find-package "AQUA_GAZEBO::THRUSTPARAMS")
  (make-package "AQUA_GAZEBO::THRUSTPARAMS"))

(in-package "ROS")
;;//! \htmlinclude ThrustParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aqua_gazebo::ThrustParams
  :super ros::object
  :slots (_header _K1 _K2 ))

(defmethod aqua_gazebo::ThrustParams
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:K1 __K1) 0.0)
    ((:K2 __K2) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _K1 (float __K1))
   (setq _K2 (float __K2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:K1
   (&optional __K1)
   (if __K1 (setq _K1 __K1)) _K1)
  (:K2
   (&optional __K2)
   (if __K2 (setq _K2 __K2)) _K2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _K1
    8
    ;; float64 _K2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _K1
       (sys::poke _K1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _K2
       (sys::poke _K2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _K1
     (setq _K1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _K2
     (setq _K2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aqua_gazebo::ThrustParams :md5sum-) "2e0e2b6bc7942aa373465fb1cd44868e")
(setf (get aqua_gazebo::ThrustParams :datatype-) "aqua_gazebo/ThrustParams")
(setf (get aqua_gazebo::ThrustParams :definition-)
      "std_msgs/Header header
float64 K1
float64 K2

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



(provide :aqua_gazebo/ThrustParams "2e0e2b6bc7942aa373465fb1cd44868e")


