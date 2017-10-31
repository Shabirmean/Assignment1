;; Auto-generated. Do not edit!


(when (boundp 'aquaautopilot::UberpilotStatus)
  (if (not (find-package "AQUAAUTOPILOT"))
    (make-package "AQUAAUTOPILOT"))
  (shadow 'UberpilotStatus (find-package "AQUAAUTOPILOT")))
(unless (find-package "AQUAAUTOPILOT::UBERPILOTSTATUS")
  (make-package "AQUAAUTOPILOT::UBERPILOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude UberpilotStatus.msg.html


(defclass aquaautopilot::UberpilotStatus
  :super ros::object
  :slots (_roll_p_gain _pitch_p_gain _yaw_p_gain _roll_i_gain _pitch_i_gain _yaw_i_gain _roll_d_gain _pitch_d_gain _yaw_d_gain _roll_const_gain _roll_error _pitch_error _yaw_error _depth_error _roll_error_integral _pitch_error_integral _yaw_error_integral _roll_p_contrib _pitch_p_contrib _yaw_p_contrib _roll_i_contrib _pitch_i_contrib _yaw_i_contrib _roll_d_contrib _pitch_d_contrib _yaw_d_contrib _roll_const_contrib _depth_p_gain _depth_d_gain _depth_derivative _depth_p_contrib _depth_d_contrib _resultant_roll _resultant_pitch _resultant_yaw _filtered_depth_derivative _depth_d_filter_period _filtered_roll_deriv _filtered_pitch_deriv _filtered_yaw_deriv _roll_d_filter_period _pitch_d_filter_period _yaw_d_filter_period _roll_target _pitch_target _yaw_target _current_roll _current_pitch _current_yaw ))

(defmethod aquaautopilot::UberpilotStatus
  (:init
   (&key
    ((:roll_p_gain __roll_p_gain) 0.0)
    ((:pitch_p_gain __pitch_p_gain) 0.0)
    ((:yaw_p_gain __yaw_p_gain) 0.0)
    ((:roll_i_gain __roll_i_gain) 0.0)
    ((:pitch_i_gain __pitch_i_gain) 0.0)
    ((:yaw_i_gain __yaw_i_gain) 0.0)
    ((:roll_d_gain __roll_d_gain) 0.0)
    ((:pitch_d_gain __pitch_d_gain) 0.0)
    ((:yaw_d_gain __yaw_d_gain) 0.0)
    ((:roll_const_gain __roll_const_gain) 0.0)
    ((:roll_error __roll_error) 0.0)
    ((:pitch_error __pitch_error) 0.0)
    ((:yaw_error __yaw_error) 0.0)
    ((:depth_error __depth_error) 0.0)
    ((:roll_error_integral __roll_error_integral) 0.0)
    ((:pitch_error_integral __pitch_error_integral) 0.0)
    ((:yaw_error_integral __yaw_error_integral) 0.0)
    ((:roll_p_contrib __roll_p_contrib) 0.0)
    ((:pitch_p_contrib __pitch_p_contrib) 0.0)
    ((:yaw_p_contrib __yaw_p_contrib) 0.0)
    ((:roll_i_contrib __roll_i_contrib) 0.0)
    ((:pitch_i_contrib __pitch_i_contrib) 0.0)
    ((:yaw_i_contrib __yaw_i_contrib) 0.0)
    ((:roll_d_contrib __roll_d_contrib) 0.0)
    ((:pitch_d_contrib __pitch_d_contrib) 0.0)
    ((:yaw_d_contrib __yaw_d_contrib) 0.0)
    ((:roll_const_contrib __roll_const_contrib) 0.0)
    ((:depth_p_gain __depth_p_gain) 0.0)
    ((:depth_d_gain __depth_d_gain) 0.0)
    ((:depth_derivative __depth_derivative) 0.0)
    ((:depth_p_contrib __depth_p_contrib) 0.0)
    ((:depth_d_contrib __depth_d_contrib) 0.0)
    ((:resultant_roll __resultant_roll) 0.0)
    ((:resultant_pitch __resultant_pitch) 0.0)
    ((:resultant_yaw __resultant_yaw) 0.0)
    ((:filtered_depth_derivative __filtered_depth_derivative) 0.0)
    ((:depth_d_filter_period __depth_d_filter_period) 0.0)
    ((:filtered_roll_deriv __filtered_roll_deriv) 0.0)
    ((:filtered_pitch_deriv __filtered_pitch_deriv) 0.0)
    ((:filtered_yaw_deriv __filtered_yaw_deriv) 0.0)
    ((:roll_d_filter_period __roll_d_filter_period) 0.0)
    ((:pitch_d_filter_period __pitch_d_filter_period) 0.0)
    ((:yaw_d_filter_period __yaw_d_filter_period) 0.0)
    ((:roll_target __roll_target) 0.0)
    ((:pitch_target __pitch_target) 0.0)
    ((:yaw_target __yaw_target) 0.0)
    ((:current_roll __current_roll) 0.0)
    ((:current_pitch __current_pitch) 0.0)
    ((:current_yaw __current_yaw) 0.0)
    )
   (send-super :init)
   (setq _roll_p_gain (float __roll_p_gain))
   (setq _pitch_p_gain (float __pitch_p_gain))
   (setq _yaw_p_gain (float __yaw_p_gain))
   (setq _roll_i_gain (float __roll_i_gain))
   (setq _pitch_i_gain (float __pitch_i_gain))
   (setq _yaw_i_gain (float __yaw_i_gain))
   (setq _roll_d_gain (float __roll_d_gain))
   (setq _pitch_d_gain (float __pitch_d_gain))
   (setq _yaw_d_gain (float __yaw_d_gain))
   (setq _roll_const_gain (float __roll_const_gain))
   (setq _roll_error (float __roll_error))
   (setq _pitch_error (float __pitch_error))
   (setq _yaw_error (float __yaw_error))
   (setq _depth_error (float __depth_error))
   (setq _roll_error_integral (float __roll_error_integral))
   (setq _pitch_error_integral (float __pitch_error_integral))
   (setq _yaw_error_integral (float __yaw_error_integral))
   (setq _roll_p_contrib (float __roll_p_contrib))
   (setq _pitch_p_contrib (float __pitch_p_contrib))
   (setq _yaw_p_contrib (float __yaw_p_contrib))
   (setq _roll_i_contrib (float __roll_i_contrib))
   (setq _pitch_i_contrib (float __pitch_i_contrib))
   (setq _yaw_i_contrib (float __yaw_i_contrib))
   (setq _roll_d_contrib (float __roll_d_contrib))
   (setq _pitch_d_contrib (float __pitch_d_contrib))
   (setq _yaw_d_contrib (float __yaw_d_contrib))
   (setq _roll_const_contrib (float __roll_const_contrib))
   (setq _depth_p_gain (float __depth_p_gain))
   (setq _depth_d_gain (float __depth_d_gain))
   (setq _depth_derivative (float __depth_derivative))
   (setq _depth_p_contrib (float __depth_p_contrib))
   (setq _depth_d_contrib (float __depth_d_contrib))
   (setq _resultant_roll (float __resultant_roll))
   (setq _resultant_pitch (float __resultant_pitch))
   (setq _resultant_yaw (float __resultant_yaw))
   (setq _filtered_depth_derivative (float __filtered_depth_derivative))
   (setq _depth_d_filter_period (float __depth_d_filter_period))
   (setq _filtered_roll_deriv (float __filtered_roll_deriv))
   (setq _filtered_pitch_deriv (float __filtered_pitch_deriv))
   (setq _filtered_yaw_deriv (float __filtered_yaw_deriv))
   (setq _roll_d_filter_period (float __roll_d_filter_period))
   (setq _pitch_d_filter_period (float __pitch_d_filter_period))
   (setq _yaw_d_filter_period (float __yaw_d_filter_period))
   (setq _roll_target (float __roll_target))
   (setq _pitch_target (float __pitch_target))
   (setq _yaw_target (float __yaw_target))
   (setq _current_roll (float __current_roll))
   (setq _current_pitch (float __current_pitch))
   (setq _current_yaw (float __current_yaw))
   self)
  (:roll_p_gain
   (&optional __roll_p_gain)
   (if __roll_p_gain (setq _roll_p_gain __roll_p_gain)) _roll_p_gain)
  (:pitch_p_gain
   (&optional __pitch_p_gain)
   (if __pitch_p_gain (setq _pitch_p_gain __pitch_p_gain)) _pitch_p_gain)
  (:yaw_p_gain
   (&optional __yaw_p_gain)
   (if __yaw_p_gain (setq _yaw_p_gain __yaw_p_gain)) _yaw_p_gain)
  (:roll_i_gain
   (&optional __roll_i_gain)
   (if __roll_i_gain (setq _roll_i_gain __roll_i_gain)) _roll_i_gain)
  (:pitch_i_gain
   (&optional __pitch_i_gain)
   (if __pitch_i_gain (setq _pitch_i_gain __pitch_i_gain)) _pitch_i_gain)
  (:yaw_i_gain
   (&optional __yaw_i_gain)
   (if __yaw_i_gain (setq _yaw_i_gain __yaw_i_gain)) _yaw_i_gain)
  (:roll_d_gain
   (&optional __roll_d_gain)
   (if __roll_d_gain (setq _roll_d_gain __roll_d_gain)) _roll_d_gain)
  (:pitch_d_gain
   (&optional __pitch_d_gain)
   (if __pitch_d_gain (setq _pitch_d_gain __pitch_d_gain)) _pitch_d_gain)
  (:yaw_d_gain
   (&optional __yaw_d_gain)
   (if __yaw_d_gain (setq _yaw_d_gain __yaw_d_gain)) _yaw_d_gain)
  (:roll_const_gain
   (&optional __roll_const_gain)
   (if __roll_const_gain (setq _roll_const_gain __roll_const_gain)) _roll_const_gain)
  (:roll_error
   (&optional __roll_error)
   (if __roll_error (setq _roll_error __roll_error)) _roll_error)
  (:pitch_error
   (&optional __pitch_error)
   (if __pitch_error (setq _pitch_error __pitch_error)) _pitch_error)
  (:yaw_error
   (&optional __yaw_error)
   (if __yaw_error (setq _yaw_error __yaw_error)) _yaw_error)
  (:depth_error
   (&optional __depth_error)
   (if __depth_error (setq _depth_error __depth_error)) _depth_error)
  (:roll_error_integral
   (&optional __roll_error_integral)
   (if __roll_error_integral (setq _roll_error_integral __roll_error_integral)) _roll_error_integral)
  (:pitch_error_integral
   (&optional __pitch_error_integral)
   (if __pitch_error_integral (setq _pitch_error_integral __pitch_error_integral)) _pitch_error_integral)
  (:yaw_error_integral
   (&optional __yaw_error_integral)
   (if __yaw_error_integral (setq _yaw_error_integral __yaw_error_integral)) _yaw_error_integral)
  (:roll_p_contrib
   (&optional __roll_p_contrib)
   (if __roll_p_contrib (setq _roll_p_contrib __roll_p_contrib)) _roll_p_contrib)
  (:pitch_p_contrib
   (&optional __pitch_p_contrib)
   (if __pitch_p_contrib (setq _pitch_p_contrib __pitch_p_contrib)) _pitch_p_contrib)
  (:yaw_p_contrib
   (&optional __yaw_p_contrib)
   (if __yaw_p_contrib (setq _yaw_p_contrib __yaw_p_contrib)) _yaw_p_contrib)
  (:roll_i_contrib
   (&optional __roll_i_contrib)
   (if __roll_i_contrib (setq _roll_i_contrib __roll_i_contrib)) _roll_i_contrib)
  (:pitch_i_contrib
   (&optional __pitch_i_contrib)
   (if __pitch_i_contrib (setq _pitch_i_contrib __pitch_i_contrib)) _pitch_i_contrib)
  (:yaw_i_contrib
   (&optional __yaw_i_contrib)
   (if __yaw_i_contrib (setq _yaw_i_contrib __yaw_i_contrib)) _yaw_i_contrib)
  (:roll_d_contrib
   (&optional __roll_d_contrib)
   (if __roll_d_contrib (setq _roll_d_contrib __roll_d_contrib)) _roll_d_contrib)
  (:pitch_d_contrib
   (&optional __pitch_d_contrib)
   (if __pitch_d_contrib (setq _pitch_d_contrib __pitch_d_contrib)) _pitch_d_contrib)
  (:yaw_d_contrib
   (&optional __yaw_d_contrib)
   (if __yaw_d_contrib (setq _yaw_d_contrib __yaw_d_contrib)) _yaw_d_contrib)
  (:roll_const_contrib
   (&optional __roll_const_contrib)
   (if __roll_const_contrib (setq _roll_const_contrib __roll_const_contrib)) _roll_const_contrib)
  (:depth_p_gain
   (&optional __depth_p_gain)
   (if __depth_p_gain (setq _depth_p_gain __depth_p_gain)) _depth_p_gain)
  (:depth_d_gain
   (&optional __depth_d_gain)
   (if __depth_d_gain (setq _depth_d_gain __depth_d_gain)) _depth_d_gain)
  (:depth_derivative
   (&optional __depth_derivative)
   (if __depth_derivative (setq _depth_derivative __depth_derivative)) _depth_derivative)
  (:depth_p_contrib
   (&optional __depth_p_contrib)
   (if __depth_p_contrib (setq _depth_p_contrib __depth_p_contrib)) _depth_p_contrib)
  (:depth_d_contrib
   (&optional __depth_d_contrib)
   (if __depth_d_contrib (setq _depth_d_contrib __depth_d_contrib)) _depth_d_contrib)
  (:resultant_roll
   (&optional __resultant_roll)
   (if __resultant_roll (setq _resultant_roll __resultant_roll)) _resultant_roll)
  (:resultant_pitch
   (&optional __resultant_pitch)
   (if __resultant_pitch (setq _resultant_pitch __resultant_pitch)) _resultant_pitch)
  (:resultant_yaw
   (&optional __resultant_yaw)
   (if __resultant_yaw (setq _resultant_yaw __resultant_yaw)) _resultant_yaw)
  (:filtered_depth_derivative
   (&optional __filtered_depth_derivative)
   (if __filtered_depth_derivative (setq _filtered_depth_derivative __filtered_depth_derivative)) _filtered_depth_derivative)
  (:depth_d_filter_period
   (&optional __depth_d_filter_period)
   (if __depth_d_filter_period (setq _depth_d_filter_period __depth_d_filter_period)) _depth_d_filter_period)
  (:filtered_roll_deriv
   (&optional __filtered_roll_deriv)
   (if __filtered_roll_deriv (setq _filtered_roll_deriv __filtered_roll_deriv)) _filtered_roll_deriv)
  (:filtered_pitch_deriv
   (&optional __filtered_pitch_deriv)
   (if __filtered_pitch_deriv (setq _filtered_pitch_deriv __filtered_pitch_deriv)) _filtered_pitch_deriv)
  (:filtered_yaw_deriv
   (&optional __filtered_yaw_deriv)
   (if __filtered_yaw_deriv (setq _filtered_yaw_deriv __filtered_yaw_deriv)) _filtered_yaw_deriv)
  (:roll_d_filter_period
   (&optional __roll_d_filter_period)
   (if __roll_d_filter_period (setq _roll_d_filter_period __roll_d_filter_period)) _roll_d_filter_period)
  (:pitch_d_filter_period
   (&optional __pitch_d_filter_period)
   (if __pitch_d_filter_period (setq _pitch_d_filter_period __pitch_d_filter_period)) _pitch_d_filter_period)
  (:yaw_d_filter_period
   (&optional __yaw_d_filter_period)
   (if __yaw_d_filter_period (setq _yaw_d_filter_period __yaw_d_filter_period)) _yaw_d_filter_period)
  (:roll_target
   (&optional __roll_target)
   (if __roll_target (setq _roll_target __roll_target)) _roll_target)
  (:pitch_target
   (&optional __pitch_target)
   (if __pitch_target (setq _pitch_target __pitch_target)) _pitch_target)
  (:yaw_target
   (&optional __yaw_target)
   (if __yaw_target (setq _yaw_target __yaw_target)) _yaw_target)
  (:current_roll
   (&optional __current_roll)
   (if __current_roll (setq _current_roll __current_roll)) _current_roll)
  (:current_pitch
   (&optional __current_pitch)
   (if __current_pitch (setq _current_pitch __current_pitch)) _current_pitch)
  (:current_yaw
   (&optional __current_yaw)
   (if __current_yaw (setq _current_yaw __current_yaw)) _current_yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _roll_p_gain
    8
    ;; float64 _pitch_p_gain
    8
    ;; float64 _yaw_p_gain
    8
    ;; float64 _roll_i_gain
    8
    ;; float64 _pitch_i_gain
    8
    ;; float64 _yaw_i_gain
    8
    ;; float64 _roll_d_gain
    8
    ;; float64 _pitch_d_gain
    8
    ;; float64 _yaw_d_gain
    8
    ;; float64 _roll_const_gain
    8
    ;; float64 _roll_error
    8
    ;; float64 _pitch_error
    8
    ;; float64 _yaw_error
    8
    ;; float64 _depth_error
    8
    ;; float64 _roll_error_integral
    8
    ;; float64 _pitch_error_integral
    8
    ;; float64 _yaw_error_integral
    8
    ;; float64 _roll_p_contrib
    8
    ;; float64 _pitch_p_contrib
    8
    ;; float64 _yaw_p_contrib
    8
    ;; float64 _roll_i_contrib
    8
    ;; float64 _pitch_i_contrib
    8
    ;; float64 _yaw_i_contrib
    8
    ;; float64 _roll_d_contrib
    8
    ;; float64 _pitch_d_contrib
    8
    ;; float64 _yaw_d_contrib
    8
    ;; float64 _roll_const_contrib
    8
    ;; float64 _depth_p_gain
    8
    ;; float64 _depth_d_gain
    8
    ;; float64 _depth_derivative
    8
    ;; float64 _depth_p_contrib
    8
    ;; float64 _depth_d_contrib
    8
    ;; float64 _resultant_roll
    8
    ;; float64 _resultant_pitch
    8
    ;; float64 _resultant_yaw
    8
    ;; float64 _filtered_depth_derivative
    8
    ;; float64 _depth_d_filter_period
    8
    ;; float64 _filtered_roll_deriv
    8
    ;; float64 _filtered_pitch_deriv
    8
    ;; float64 _filtered_yaw_deriv
    8
    ;; float64 _roll_d_filter_period
    8
    ;; float64 _pitch_d_filter_period
    8
    ;; float64 _yaw_d_filter_period
    8
    ;; float64 _roll_target
    8
    ;; float64 _pitch_target
    8
    ;; float64 _yaw_target
    8
    ;; float64 _current_roll
    8
    ;; float64 _current_pitch
    8
    ;; float64 _current_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll_p_gain
       (sys::poke _roll_p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_p_gain
       (sys::poke _pitch_p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_p_gain
       (sys::poke _yaw_p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_i_gain
       (sys::poke _roll_i_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_i_gain
       (sys::poke _pitch_i_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_i_gain
       (sys::poke _yaw_i_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_d_gain
       (sys::poke _roll_d_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_d_gain
       (sys::poke _pitch_d_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_d_gain
       (sys::poke _yaw_d_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_const_gain
       (sys::poke _roll_const_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_error
       (sys::poke _roll_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_error
       (sys::poke _pitch_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_error
       (sys::poke _yaw_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_error
       (sys::poke _depth_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_error_integral
       (sys::poke _roll_error_integral (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_error_integral
       (sys::poke _pitch_error_integral (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_error_integral
       (sys::poke _yaw_error_integral (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_p_contrib
       (sys::poke _roll_p_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_p_contrib
       (sys::poke _pitch_p_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_p_contrib
       (sys::poke _yaw_p_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_i_contrib
       (sys::poke _roll_i_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_i_contrib
       (sys::poke _pitch_i_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_i_contrib
       (sys::poke _yaw_i_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_d_contrib
       (sys::poke _roll_d_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_d_contrib
       (sys::poke _pitch_d_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_d_contrib
       (sys::poke _yaw_d_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_const_contrib
       (sys::poke _roll_const_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_p_gain
       (sys::poke _depth_p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_d_gain
       (sys::poke _depth_d_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_derivative
       (sys::poke _depth_derivative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_p_contrib
       (sys::poke _depth_p_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_d_contrib
       (sys::poke _depth_d_contrib (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _resultant_roll
       (sys::poke _resultant_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _resultant_pitch
       (sys::poke _resultant_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _resultant_yaw
       (sys::poke _resultant_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_depth_derivative
       (sys::poke _filtered_depth_derivative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_d_filter_period
       (sys::poke _depth_d_filter_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_roll_deriv
       (sys::poke _filtered_roll_deriv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_pitch_deriv
       (sys::poke _filtered_pitch_deriv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_yaw_deriv
       (sys::poke _filtered_yaw_deriv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_d_filter_period
       (sys::poke _roll_d_filter_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_d_filter_period
       (sys::poke _pitch_d_filter_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_d_filter_period
       (sys::poke _yaw_d_filter_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_target
       (sys::poke _roll_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_target
       (sys::poke _pitch_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_target
       (sys::poke _yaw_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_roll
       (sys::poke _current_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_pitch
       (sys::poke _current_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_yaw
       (sys::poke _current_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll_p_gain
     (setq _roll_p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_p_gain
     (setq _pitch_p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_p_gain
     (setq _yaw_p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_i_gain
     (setq _roll_i_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_i_gain
     (setq _pitch_i_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_i_gain
     (setq _yaw_i_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_d_gain
     (setq _roll_d_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_d_gain
     (setq _pitch_d_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_d_gain
     (setq _yaw_d_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_const_gain
     (setq _roll_const_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_error
     (setq _roll_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_error
     (setq _pitch_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_error
     (setq _yaw_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_error
     (setq _depth_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_error_integral
     (setq _roll_error_integral (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_error_integral
     (setq _pitch_error_integral (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_error_integral
     (setq _yaw_error_integral (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_p_contrib
     (setq _roll_p_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_p_contrib
     (setq _pitch_p_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_p_contrib
     (setq _yaw_p_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_i_contrib
     (setq _roll_i_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_i_contrib
     (setq _pitch_i_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_i_contrib
     (setq _yaw_i_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_d_contrib
     (setq _roll_d_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_d_contrib
     (setq _pitch_d_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_d_contrib
     (setq _yaw_d_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_const_contrib
     (setq _roll_const_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_p_gain
     (setq _depth_p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_d_gain
     (setq _depth_d_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_derivative
     (setq _depth_derivative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_p_contrib
     (setq _depth_p_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_d_contrib
     (setq _depth_d_contrib (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _resultant_roll
     (setq _resultant_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _resultant_pitch
     (setq _resultant_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _resultant_yaw
     (setq _resultant_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_depth_derivative
     (setq _filtered_depth_derivative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_d_filter_period
     (setq _depth_d_filter_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_roll_deriv
     (setq _filtered_roll_deriv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_pitch_deriv
     (setq _filtered_pitch_deriv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_yaw_deriv
     (setq _filtered_yaw_deriv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_d_filter_period
     (setq _roll_d_filter_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_d_filter_period
     (setq _pitch_d_filter_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_d_filter_period
     (setq _yaw_d_filter_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_target
     (setq _roll_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_target
     (setq _pitch_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_target
     (setq _yaw_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_roll
     (setq _current_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_pitch
     (setq _current_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_yaw
     (setq _current_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aquaautopilot::UberpilotStatus :md5sum-) "9759835ed61618efecb1f4276b2aa836")
(setf (get aquaautopilot::UberpilotStatus :datatype-) "aquaautopilot/UberpilotStatus")
(setf (get aquaautopilot::UberpilotStatus :definition-)
      "float64 roll_p_gain
float64 pitch_p_gain
float64 yaw_p_gain
float64 roll_i_gain
float64 pitch_i_gain
float64 yaw_i_gain
float64 roll_d_gain
float64 pitch_d_gain
float64 yaw_d_gain
float64 roll_const_gain

float64 roll_error
float64 pitch_error
float64 yaw_error
float64 depth_error

float64 roll_error_integral
float64 pitch_error_integral
float64 yaw_error_integral

float64 roll_p_contrib
float64 pitch_p_contrib
float64 yaw_p_contrib
float64 roll_i_contrib
float64 pitch_i_contrib
float64 yaw_i_contrib
float64 roll_d_contrib
float64 pitch_d_contrib
float64 yaw_d_contrib
float64 roll_const_contrib

float64 depth_p_gain
float64 depth_d_gain
float64 depth_derivative
float64 depth_p_contrib
float64 depth_d_contrib

float64 resultant_roll
float64 resultant_pitch
float64 resultant_yaw

float64 filtered_depth_derivative
float64 depth_d_filter_period

float64 filtered_roll_deriv
float64 filtered_pitch_deriv
float64 filtered_yaw_deriv
float64 roll_d_filter_period
float64 pitch_d_filter_period
float64 yaw_d_filter_period

float64 roll_target
float64 pitch_target
float64 yaw_target

float64 current_roll
float64 current_pitch
float64 current_yaw

")



(provide :aquaautopilot/UberpilotStatus "9759835ed61618efecb1f4276b2aa836")


