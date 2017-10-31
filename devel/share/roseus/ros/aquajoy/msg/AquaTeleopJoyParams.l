;; Auto-generated. Do not edit!


(when (boundp 'aquajoy::AquaTeleopJoyParams)
  (if (not (find-package "AQUAJOY"))
    (make-package "AQUAJOY"))
  (shadow 'AquaTeleopJoyParams (find-package "AQUAJOY")))
(unless (find-package "AQUAJOY::AQUATELEOPJOYPARAMS")
  (make-package "AQUAJOY::AQUATELEOPJOYPARAMS"))

(in-package "ROS")
;;//! \htmlinclude AquaTeleopJoyParams.msg.html


(defclass aquajoy::AquaTeleopJoyParams
  :super ros::object
  :slots (_joy_axis_deadzone _max_speed_cmd _max_heave_cmd _max_roll_cmd _max_pitch_cmd _max_yaw_cmd _max_roll_pos _max_pitch_pos _max_yaw_pos _min_depth _max_depth _default_fixed_depth _max_roll_vel _max_pitch_vel _max_yaw_vel _max_depth_vel ))

(defmethod aquajoy::AquaTeleopJoyParams
  (:init
   (&key
    ((:joy_axis_deadzone __joy_axis_deadzone) 0.0)
    ((:max_speed_cmd __max_speed_cmd) 0.0)
    ((:max_heave_cmd __max_heave_cmd) 0.0)
    ((:max_roll_cmd __max_roll_cmd) 0.0)
    ((:max_pitch_cmd __max_pitch_cmd) 0.0)
    ((:max_yaw_cmd __max_yaw_cmd) 0.0)
    ((:max_roll_pos __max_roll_pos) 0.0)
    ((:max_pitch_pos __max_pitch_pos) 0.0)
    ((:max_yaw_pos __max_yaw_pos) 0.0)
    ((:min_depth __min_depth) 0.0)
    ((:max_depth __max_depth) 0.0)
    ((:default_fixed_depth __default_fixed_depth) 0.0)
    ((:max_roll_vel __max_roll_vel) 0.0)
    ((:max_pitch_vel __max_pitch_vel) 0.0)
    ((:max_yaw_vel __max_yaw_vel) 0.0)
    ((:max_depth_vel __max_depth_vel) 0.0)
    )
   (send-super :init)
   (setq _joy_axis_deadzone (float __joy_axis_deadzone))
   (setq _max_speed_cmd (float __max_speed_cmd))
   (setq _max_heave_cmd (float __max_heave_cmd))
   (setq _max_roll_cmd (float __max_roll_cmd))
   (setq _max_pitch_cmd (float __max_pitch_cmd))
   (setq _max_yaw_cmd (float __max_yaw_cmd))
   (setq _max_roll_pos (float __max_roll_pos))
   (setq _max_pitch_pos (float __max_pitch_pos))
   (setq _max_yaw_pos (float __max_yaw_pos))
   (setq _min_depth (float __min_depth))
   (setq _max_depth (float __max_depth))
   (setq _default_fixed_depth (float __default_fixed_depth))
   (setq _max_roll_vel (float __max_roll_vel))
   (setq _max_pitch_vel (float __max_pitch_vel))
   (setq _max_yaw_vel (float __max_yaw_vel))
   (setq _max_depth_vel (float __max_depth_vel))
   self)
  (:joy_axis_deadzone
   (&optional __joy_axis_deadzone)
   (if __joy_axis_deadzone (setq _joy_axis_deadzone __joy_axis_deadzone)) _joy_axis_deadzone)
  (:max_speed_cmd
   (&optional __max_speed_cmd)
   (if __max_speed_cmd (setq _max_speed_cmd __max_speed_cmd)) _max_speed_cmd)
  (:max_heave_cmd
   (&optional __max_heave_cmd)
   (if __max_heave_cmd (setq _max_heave_cmd __max_heave_cmd)) _max_heave_cmd)
  (:max_roll_cmd
   (&optional __max_roll_cmd)
   (if __max_roll_cmd (setq _max_roll_cmd __max_roll_cmd)) _max_roll_cmd)
  (:max_pitch_cmd
   (&optional __max_pitch_cmd)
   (if __max_pitch_cmd (setq _max_pitch_cmd __max_pitch_cmd)) _max_pitch_cmd)
  (:max_yaw_cmd
   (&optional __max_yaw_cmd)
   (if __max_yaw_cmd (setq _max_yaw_cmd __max_yaw_cmd)) _max_yaw_cmd)
  (:max_roll_pos
   (&optional __max_roll_pos)
   (if __max_roll_pos (setq _max_roll_pos __max_roll_pos)) _max_roll_pos)
  (:max_pitch_pos
   (&optional __max_pitch_pos)
   (if __max_pitch_pos (setq _max_pitch_pos __max_pitch_pos)) _max_pitch_pos)
  (:max_yaw_pos
   (&optional __max_yaw_pos)
   (if __max_yaw_pos (setq _max_yaw_pos __max_yaw_pos)) _max_yaw_pos)
  (:min_depth
   (&optional __min_depth)
   (if __min_depth (setq _min_depth __min_depth)) _min_depth)
  (:max_depth
   (&optional __max_depth)
   (if __max_depth (setq _max_depth __max_depth)) _max_depth)
  (:default_fixed_depth
   (&optional __default_fixed_depth)
   (if __default_fixed_depth (setq _default_fixed_depth __default_fixed_depth)) _default_fixed_depth)
  (:max_roll_vel
   (&optional __max_roll_vel)
   (if __max_roll_vel (setq _max_roll_vel __max_roll_vel)) _max_roll_vel)
  (:max_pitch_vel
   (&optional __max_pitch_vel)
   (if __max_pitch_vel (setq _max_pitch_vel __max_pitch_vel)) _max_pitch_vel)
  (:max_yaw_vel
   (&optional __max_yaw_vel)
   (if __max_yaw_vel (setq _max_yaw_vel __max_yaw_vel)) _max_yaw_vel)
  (:max_depth_vel
   (&optional __max_depth_vel)
   (if __max_depth_vel (setq _max_depth_vel __max_depth_vel)) _max_depth_vel)
  (:serialization-length
   ()
   (+
    ;; float64 _joy_axis_deadzone
    8
    ;; float64 _max_speed_cmd
    8
    ;; float64 _max_heave_cmd
    8
    ;; float64 _max_roll_cmd
    8
    ;; float64 _max_pitch_cmd
    8
    ;; float64 _max_yaw_cmd
    8
    ;; float64 _max_roll_pos
    8
    ;; float64 _max_pitch_pos
    8
    ;; float64 _max_yaw_pos
    8
    ;; float64 _min_depth
    8
    ;; float64 _max_depth
    8
    ;; float64 _default_fixed_depth
    8
    ;; float64 _max_roll_vel
    8
    ;; float64 _max_pitch_vel
    8
    ;; float64 _max_yaw_vel
    8
    ;; float64 _max_depth_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joy_axis_deadzone
       (sys::poke _joy_axis_deadzone (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_speed_cmd
       (sys::poke _max_speed_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_heave_cmd
       (sys::poke _max_heave_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_roll_cmd
       (sys::poke _max_roll_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_pitch_cmd
       (sys::poke _max_pitch_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_yaw_cmd
       (sys::poke _max_yaw_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_roll_pos
       (sys::poke _max_roll_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_pitch_pos
       (sys::poke _max_pitch_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_yaw_pos
       (sys::poke _max_yaw_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_depth
       (sys::poke _min_depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_depth
       (sys::poke _max_depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _default_fixed_depth
       (sys::poke _default_fixed_depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_roll_vel
       (sys::poke _max_roll_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_pitch_vel
       (sys::poke _max_pitch_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_yaw_vel
       (sys::poke _max_yaw_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_depth_vel
       (sys::poke _max_depth_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joy_axis_deadzone
     (setq _joy_axis_deadzone (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_speed_cmd
     (setq _max_speed_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_heave_cmd
     (setq _max_heave_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_roll_cmd
     (setq _max_roll_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_pitch_cmd
     (setq _max_pitch_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_yaw_cmd
     (setq _max_yaw_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_roll_pos
     (setq _max_roll_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_pitch_pos
     (setq _max_pitch_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_yaw_pos
     (setq _max_yaw_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_depth
     (setq _min_depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_depth
     (setq _max_depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _default_fixed_depth
     (setq _default_fixed_depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_roll_vel
     (setq _max_roll_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_pitch_vel
     (setq _max_pitch_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_yaw_vel
     (setq _max_yaw_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_depth_vel
     (setq _max_depth_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aquajoy::AquaTeleopJoyParams :md5sum-) "706bf780e630eefcca324213e5cf91d4")
(setf (get aquajoy::AquaTeleopJoyParams :datatype-) "aquajoy/AquaTeleopJoyParams")
(setf (get aquajoy::AquaTeleopJoyParams :definition-)
      "# Range: [0, 1]
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

")



(provide :aquajoy/AquaTeleopJoyParams "706bf780e630eefcca324213e5cf91d4")


