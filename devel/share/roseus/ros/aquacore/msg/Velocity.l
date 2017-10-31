;; Auto-generated. Do not edit!


(when (boundp 'aquacore::Velocity)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'Velocity (find-package "AQUACORE")))
(unless (find-package "AQUACORE::VELOCITY")
  (make-package "AQUACORE::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html


(defclass aquacore::Velocity
  :super ros::object
  :slots (_linear _yaw ))

(defmethod aquacore::Velocity
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _yaw (float __yaw))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _linear
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear
     (setq _linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aquacore::Velocity :md5sum-) "d679ec432b33ae98c4549fd75346c7b5")
(setf (get aquacore::Velocity :datatype-) "aquacore/Velocity")
(setf (get aquacore::Velocity :definition-)
      "float32 linear
float32 yaw

")



(provide :aquacore/Velocity "d679ec432b33ae98c4549fd75346c7b5")


