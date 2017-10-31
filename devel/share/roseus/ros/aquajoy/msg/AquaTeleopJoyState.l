;; Auto-generated. Do not edit!


(when (boundp 'aquajoy::AquaTeleopJoyState)
  (if (not (find-package "AQUAJOY"))
    (make-package "AQUAJOY"))
  (shadow 'AquaTeleopJoyState (find-package "AQUAJOY")))
(unless (find-package "AQUAJOY::AQUATELEOPJOYSTATE")
  (make-package "AQUAJOY::AQUATELEOPJOYSTATE"))

(in-package "ROS")
;;//! \htmlinclude AquaTeleopJoyState.msg.html
(if (not (find-package "AQUACORE"))
  (ros::roseus-add-msgs "aquacore"))


(intern "*CTRL_MODE_RAW*" (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(shadow '*CTRL_MODE_RAW* (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(defconstant aquajoy::AquaTeleopJoyState::*CTRL_MODE_RAW* 0)
(intern "*CTRL_MODE_GLOBAL_RP_POS*" (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(shadow '*CTRL_MODE_GLOBAL_RP_POS* (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(defconstant aquajoy::AquaTeleopJoyState::*CTRL_MODE_GLOBAL_RP_POS* 1)
(intern "*CTRL_MODE_GLOBAL_RP_POS_D*" (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(shadow '*CTRL_MODE_GLOBAL_RP_POS_D* (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(defconstant aquajoy::AquaTeleopJoyState::*CTRL_MODE_GLOBAL_RP_POS_D* 2)
(intern "*CTRL_MODE_GLOBAL_RP_VEL_D*" (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(shadow '*CTRL_MODE_GLOBAL_RP_VEL_D* (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(defconstant aquajoy::AquaTeleopJoyState::*CTRL_MODE_GLOBAL_RP_VEL_D* 3)
(intern "*CTRL_MODE_FLATSWIM_D*" (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(shadow '*CTRL_MODE_FLATSWIM_D* (find-package "AQUAJOY::AQUATELEOPJOYSTATE"))
(defconstant aquajoy::AquaTeleopJoyState::*CTRL_MODE_FLATSWIM_D* 4)
(defclass aquajoy::AquaTeleopJoyState
  :super ros::object
  :slots (_ctrl_mode _modifier _raw_cmd _roll_pos _pitch_pos _yaw_pos _roll_vel _pitch_vel _yaw_vel _depth_pos _depth_vel ))

(defmethod aquajoy::AquaTeleopJoyState
  (:init
   (&key
    ((:ctrl_mode __ctrl_mode) 0)
    ((:modifier __modifier) nil)
    ((:raw_cmd __raw_cmd) (instance aquacore::Command :init))
    ((:roll_pos __roll_pos) 0.0)
    ((:pitch_pos __pitch_pos) 0.0)
    ((:yaw_pos __yaw_pos) 0.0)
    ((:roll_vel __roll_vel) 0.0)
    ((:pitch_vel __pitch_vel) 0.0)
    ((:yaw_vel __yaw_vel) 0.0)
    ((:depth_pos __depth_pos) 0.0)
    ((:depth_vel __depth_vel) 0.0)
    )
   (send-super :init)
   (setq _ctrl_mode (round __ctrl_mode))
   (setq _modifier __modifier)
   (setq _raw_cmd __raw_cmd)
   (setq _roll_pos (float __roll_pos))
   (setq _pitch_pos (float __pitch_pos))
   (setq _yaw_pos (float __yaw_pos))
   (setq _roll_vel (float __roll_vel))
   (setq _pitch_vel (float __pitch_vel))
   (setq _yaw_vel (float __yaw_vel))
   (setq _depth_pos (float __depth_pos))
   (setq _depth_vel (float __depth_vel))
   self)
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:modifier
   (&optional __modifier)
   (if __modifier (setq _modifier __modifier)) _modifier)
  (:raw_cmd
   (&rest __raw_cmd)
   (if (keywordp (car __raw_cmd))
       (send* _raw_cmd __raw_cmd)
     (progn
       (if __raw_cmd (setq _raw_cmd (car __raw_cmd)))
       _raw_cmd)))
  (:roll_pos
   (&optional __roll_pos)
   (if __roll_pos (setq _roll_pos __roll_pos)) _roll_pos)
  (:pitch_pos
   (&optional __pitch_pos)
   (if __pitch_pos (setq _pitch_pos __pitch_pos)) _pitch_pos)
  (:yaw_pos
   (&optional __yaw_pos)
   (if __yaw_pos (setq _yaw_pos __yaw_pos)) _yaw_pos)
  (:roll_vel
   (&optional __roll_vel)
   (if __roll_vel (setq _roll_vel __roll_vel)) _roll_vel)
  (:pitch_vel
   (&optional __pitch_vel)
   (if __pitch_vel (setq _pitch_vel __pitch_vel)) _pitch_vel)
  (:yaw_vel
   (&optional __yaw_vel)
   (if __yaw_vel (setq _yaw_vel __yaw_vel)) _yaw_vel)
  (:depth_pos
   (&optional __depth_pos)
   (if __depth_pos (setq _depth_pos __depth_pos)) _depth_pos)
  (:depth_vel
   (&optional __depth_vel)
   (if __depth_vel (setq _depth_vel __depth_vel)) _depth_vel)
  (:serialization-length
   ()
   (+
    ;; int8 _ctrl_mode
    1
    ;; bool _modifier
    1
    ;; aquacore/Command _raw_cmd
    (send _raw_cmd :serialization-length)
    ;; float64 _roll_pos
    8
    ;; float64 _pitch_pos
    8
    ;; float64 _yaw_pos
    8
    ;; float64 _roll_vel
    8
    ;; float64 _pitch_vel
    8
    ;; float64 _yaw_vel
    8
    ;; float64 _depth_pos
    8
    ;; float64 _depth_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ctrl_mode
       (write-byte _ctrl_mode s)
     ;; bool _modifier
       (if _modifier (write-byte -1 s) (write-byte 0 s))
     ;; aquacore/Command _raw_cmd
       (send _raw_cmd :serialize s)
     ;; float64 _roll_pos
       (sys::poke _roll_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_pos
       (sys::poke _pitch_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_pos
       (sys::poke _yaw_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_vel
       (sys::poke _roll_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_vel
       (sys::poke _pitch_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_vel
       (sys::poke _yaw_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_pos
       (sys::poke _depth_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_vel
       (sys::poke _depth_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ctrl_mode
     (setq _ctrl_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ctrl_mode 127) (setq _ctrl_mode (- _ctrl_mode 256)))
   ;; bool _modifier
     (setq _modifier (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; aquacore/Command _raw_cmd
     (send _raw_cmd :deserialize buf ptr-) (incf ptr- (send _raw_cmd :serialization-length))
   ;; float64 _roll_pos
     (setq _roll_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_pos
     (setq _pitch_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_pos
     (setq _yaw_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_vel
     (setq _roll_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_vel
     (setq _pitch_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_vel
     (setq _yaw_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_pos
     (setq _depth_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_vel
     (setq _depth_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aquajoy::AquaTeleopJoyState :md5sum-) "1ae4c9d6b55f827b7d46912c0ba341f6")
(setf (get aquajoy::AquaTeleopJoyState :datatype-) "aquajoy/AquaTeleopJoyState")
(setf (get aquajoy::AquaTeleopJoyState :definition-)
      "int8 ctrl_mode
int8 CTRL_MODE_RAW = 0
int8 CTRL_MODE_GLOBAL_RP_POS = 1
int8 CTRL_MODE_GLOBAL_RP_POS_D = 2
int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3
int8 CTRL_MODE_FLATSWIM_D = 4

bool modifier

aquacore/Command raw_cmd

# NOTE: all angle units are in degrees

float64 roll_pos
float64 pitch_pos
float64 yaw_pos

float64 roll_vel
float64 pitch_vel
float64 yaw_vel

float64 depth_pos

float64 depth_vel

================================================================================
MSG: aquacore/Command
# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a
# non-linear way; see Giguere et al. IROS 2006 \"Characterizing...\" for similar pseudo-rate mapping plots
# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.

# All saturations are performed by RoboDevel

float32 speed # unitless pseudo-rate, [0, 1]
float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right
float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down
float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right
float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up


")



(provide :aquajoy/AquaTeleopJoyState "1ae4c9d6b55f827b7d46912c0ba341f6")


