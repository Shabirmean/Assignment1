;; Auto-generated. Do not edit!


(when (boundp 'aquacore::Command)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'Command (find-package "AQUACORE")))
(unless (find-package "AQUACORE::COMMAND")
  (make-package "AQUACORE::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass aquacore::Command
  :super ros::object
  :slots (_speed _yaw _pitch _roll _heave ))

(defmethod aquacore::Command
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:heave __heave) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _heave (float __heave))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:heave
   (&optional __heave)
   (if __heave (setq _heave __heave)) _heave)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _heave
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heave
       (sys::poke _heave (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heave
     (setq _heave (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aquacore::Command :md5sum-) "25d10593eab44377302838c0a409503e")
(setf (get aquacore::Command :datatype-) "aquacore/Command")
(setf (get aquacore::Command :definition-)
      "# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a
# non-linear way; see Giguere et al. IROS 2006 \"Characterizing...\" for similar pseudo-rate mapping plots
# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.

# All saturations are performed by RoboDevel

float32 speed # unitless pseudo-rate, [0, 1]
float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right
float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down
float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right
float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up


")



(provide :aquacore/Command "25d10593eab44377302838c0a409503e")


