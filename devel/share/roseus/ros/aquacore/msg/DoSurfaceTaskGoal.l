;; Auto-generated. Do not edit!


(when (boundp 'aquacore::DoSurfaceTaskGoal)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'DoSurfaceTaskGoal (find-package "AQUACORE")))
(unless (find-package "AQUACORE::DOSURFACETASKGOAL")
  (make-package "AQUACORE::DOSURFACETASKGOAL"))

(in-package "ROS")
;;//! \htmlinclude DoSurfaceTaskGoal.msg.html


(defclass aquacore::DoSurfaceTaskGoal
  :super ros::object
  :slots (_task _ascend_speed ))

(defmethod aquacore::DoSurfaceTaskGoal
  (:init
   (&key
    ((:task __task) 0)
    ((:ascend_speed __ascend_speed) 0.0)
    )
   (send-super :init)
   (setq _task (round __task))
   (setq _ascend_speed (float __ascend_speed))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:ascend_speed
   (&optional __ascend_speed)
   (if __ascend_speed (setq _ascend_speed __ascend_speed)) _ascend_speed)
  (:serialization-length
   ()
   (+
    ;; byte _task
    1
    ;; float64 _ascend_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _task
       (write-byte _task s)
     ;; float64 _ascend_speed
       (sys::poke _ascend_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _task
     (setq _task (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _task 127) (setq _task (- _task 256)))
   ;; float64 _ascend_speed
     (setq _ascend_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aquacore::DoSurfaceTaskGoal :md5sum-) "182b1839eeeb8a6283216175bc34cfac")
(setf (get aquacore::DoSurfaceTaskGoal :datatype-) "aquacore/DoSurfaceTaskGoal")
(setf (get aquacore::DoSurfaceTaskGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Desired Goal
byte task                                # see SurfaceTaskTypes.msg
float64 ascend_speed                     # in m/s (using depth autopilot) or pseudo-unit-rate (using angles autopilot)


")



(provide :aquacore/DoSurfaceTaskGoal "182b1839eeeb8a6283216175bc34cfac")


