;; Auto-generated. Do not edit!


(when (boundp 'aqua_gazebo::HydrodynamicsParamsList)
  (if (not (find-package "AQUA_GAZEBO"))
    (make-package "AQUA_GAZEBO"))
  (shadow 'HydrodynamicsParamsList (find-package "AQUA_GAZEBO")))
(unless (find-package "AQUA_GAZEBO::HYDRODYNAMICSPARAMSLIST")
  (make-package "AQUA_GAZEBO::HYDRODYNAMICSPARAMSLIST"))

(in-package "ROS")
;;//! \htmlinclude HydrodynamicsParamsList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aqua_gazebo::HydrodynamicsParamsList
  :super ros::object
  :slots (_header _params ))

(defmethod aqua_gazebo::HydrodynamicsParamsList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:params __params) (let (r) (dotimes (i 0) (push (instance aqua_gazebo::HydrodynamicsParams :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _params __params)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; aqua_gazebo/HydrodynamicsParams[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; aqua_gazebo/HydrodynamicsParams[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; aqua_gazebo/HydrodynamicsParams[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance aqua_gazebo::HydrodynamicsParams :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get aqua_gazebo::HydrodynamicsParamsList :md5sum-) "3fb99dd419aa8fd6de13995f952156fa")
(setf (get aqua_gazebo::HydrodynamicsParamsList :datatype-) "aqua_gazebo/HydrodynamicsParamsList")
(setf (get aqua_gazebo::HydrodynamicsParamsList :definition-)
      "std_msgs/Header header
aqua_gazebo/HydrodynamicsParams[] params

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

================================================================================
MSG: aqua_gazebo/HydrodynamicsParams
std_msgs/Header header
string name
float64 wobble
float64 drag_scaling
float64 density
float64 viscosity
float64 mass
float64 volume
float64 planar
float64[] K
float64[] D
float64[] I
float64[] com
float64[] cob


")



(provide :aqua_gazebo/HydrodynamicsParamsList "3fb99dd419aa8fd6de13995f952156fa")


