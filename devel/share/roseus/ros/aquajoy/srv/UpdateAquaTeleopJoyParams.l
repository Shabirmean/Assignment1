;; Auto-generated. Do not edit!


(when (boundp 'aquajoy::UpdateAquaTeleopJoyParams)
  (if (not (find-package "AQUAJOY"))
    (make-package "AQUAJOY"))
  (shadow 'UpdateAquaTeleopJoyParams (find-package "AQUAJOY")))
(unless (find-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMS")
  (make-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMS"))
(unless (find-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMSREQUEST")
  (make-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMSREQUEST"))
(unless (find-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMSRESPONSE")
  (make-package "AQUAJOY::UPDATEAQUATELEOPJOYPARAMSRESPONSE"))

(in-package "ROS")





(defclass aquajoy::UpdateAquaTeleopJoyParamsRequest
  :super ros::object
  :slots (_new_params ))

(defmethod aquajoy::UpdateAquaTeleopJoyParamsRequest
  (:init
   (&key
    ((:new_params __new_params) (instance aquajoy::AquaTeleopJoyParams :init))
    )
   (send-super :init)
   (setq _new_params __new_params)
   self)
  (:new_params
   (&rest __new_params)
   (if (keywordp (car __new_params))
       (send* _new_params __new_params)
     (progn
       (if __new_params (setq _new_params (car __new_params)))
       _new_params)))
  (:serialization-length
   ()
   (+
    ;; aquajoy/AquaTeleopJoyParams _new_params
    (send _new_params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; aquajoy/AquaTeleopJoyParams _new_params
       (send _new_params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; aquajoy/AquaTeleopJoyParams _new_params
     (send _new_params :deserialize buf ptr-) (incf ptr- (send _new_params :serialization-length))
   ;;
   self)
  )

(defclass aquajoy::UpdateAquaTeleopJoyParamsResponse
  :super ros::object
  :slots ())

(defmethod aquajoy::UpdateAquaTeleopJoyParamsResponse
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

(defclass aquajoy::UpdateAquaTeleopJoyParams
  :super ros::object
  :slots ())

(setf (get aquajoy::UpdateAquaTeleopJoyParams :md5sum-) "1e83859aeb42bc42c7f92e0fd76391e7")
(setf (get aquajoy::UpdateAquaTeleopJoyParams :datatype-) "aquajoy/UpdateAquaTeleopJoyParams")
(setf (get aquajoy::UpdateAquaTeleopJoyParams :request) aquajoy::UpdateAquaTeleopJoyParamsRequest)
(setf (get aquajoy::UpdateAquaTeleopJoyParams :response) aquajoy::UpdateAquaTeleopJoyParamsResponse)

(defmethod aquajoy::UpdateAquaTeleopJoyParamsRequest
  (:response () (instance aquajoy::UpdateAquaTeleopJoyParamsResponse :init)))

(setf (get aquajoy::UpdateAquaTeleopJoyParamsRequest :md5sum-) "1e83859aeb42bc42c7f92e0fd76391e7")
(setf (get aquajoy::UpdateAquaTeleopJoyParamsRequest :datatype-) "aquajoy/UpdateAquaTeleopJoyParamsRequest")
(setf (get aquajoy::UpdateAquaTeleopJoyParamsRequest :definition-)
      "aquajoy/AquaTeleopJoyParams new_params

================================================================================
MSG: aquajoy/AquaTeleopJoyParams
# Range: [0, 1]
float64 joy_axis_deadzone
  
# Range: [0, 1]
float64 max_speed_cmd
float64 max_heave_cmd
float64 max_roll_cmd
float64 max_pitch_cmd
float64 max_yaw_cmd
  
# Recommended range: [0, 180] (degrees)
float64 max_roll_pos
float64 max_pitch_pos
float64 max_yaw_pos

# Recommended range: [-2, 1] (m)
float64 min_depth

# Recommended range: [0, 100] (m)
float64 max_depth

# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]
float64 default_fixed_depth
  
# Recommended range: [0, 180] (deg/s)
float64 max_roll_vel
float64 max_pitch_vel
float64 max_yaw_vel
  
# Recommended range: [0, 1] (m/s)
float64 max_depth_vel
---


")

(setf (get aquajoy::UpdateAquaTeleopJoyParamsResponse :md5sum-) "1e83859aeb42bc42c7f92e0fd76391e7")
(setf (get aquajoy::UpdateAquaTeleopJoyParamsResponse :datatype-) "aquajoy/UpdateAquaTeleopJoyParamsResponse")
(setf (get aquajoy::UpdateAquaTeleopJoyParamsResponse :definition-)
      "aquajoy/AquaTeleopJoyParams new_params

================================================================================
MSG: aquajoy/AquaTeleopJoyParams
# Range: [0, 1]
float64 joy_axis_deadzone
  
# Range: [0, 1]
float64 max_speed_cmd
float64 max_heave_cmd
float64 max_roll_cmd
float64 max_pitch_cmd
float64 max_yaw_cmd
  
# Recommended range: [0, 180] (degrees)
float64 max_roll_pos
float64 max_pitch_pos
float64 max_yaw_pos

# Recommended range: [-2, 1] (m)
float64 min_depth

# Recommended range: [0, 100] (m)
float64 max_depth

# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]
float64 default_fixed_depth
  
# Recommended range: [0, 180] (deg/s)
float64 max_roll_vel
float64 max_pitch_vel
float64 max_yaw_vel
  
# Recommended range: [0, 1] (m/s)
float64 max_depth_vel
---


")



(provide :aquajoy/UpdateAquaTeleopJoyParams "1e83859aeb42bc42c7f92e0fd76391e7")


