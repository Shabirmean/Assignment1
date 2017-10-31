;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SurfaceTaskTypes)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SurfaceTaskTypes (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SURFACETASKTYPES")
  (make-package "AQUACORE::SURFACETASKTYPES"))

(in-package "ROS")
;;//! \htmlinclude SurfaceTaskTypes.msg.html


(intern "*SURFACE*" (find-package "AQUACORE::SURFACETASKTYPES"))
(shadow '*SURFACE* (find-package "AQUACORE::SURFACETASKTYPES"))
(defconstant aquacore::SurfaceTaskTypes::*SURFACE* 0)
(intern "*WAIT_FOR_GPS_FIX*" (find-package "AQUACORE::SURFACETASKTYPES"))
(shadow '*WAIT_FOR_GPS_FIX* (find-package "AQUACORE::SURFACETASKTYPES"))
(defconstant aquacore::SurfaceTaskTypes::*WAIT_FOR_GPS_FIX* 1)
(intern "*STAY_ON_SURFACE*" (find-package "AQUACORE::SURFACETASKTYPES"))
(shadow '*STAY_ON_SURFACE* (find-package "AQUACORE::SURFACETASKTYPES"))
(defconstant aquacore::SurfaceTaskTypes::*STAY_ON_SURFACE* 2)
(defclass aquacore::SurfaceTaskTypes
  :super ros::object
  :slots ())

(defmethod aquacore::SurfaceTaskTypes
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

(setf (get aquacore::SurfaceTaskTypes :md5sum-) "d902353c3ce8457f71121f1a0c1f3a87")
(setf (get aquacore::SurfaceTaskTypes :datatype-) "aquacore/SurfaceTaskTypes")
(setf (get aquacore::SurfaceTaskTypes :definition-)
      "# See DoSurfaceTask.action/Goal/task
byte SURFACE = 0
byte WAIT_FOR_GPS_FIX = 1
byte STAY_ON_SURFACE = 2

")



(provide :aquacore/SurfaceTaskTypes "d902353c3ce8457f71121f1a0c1f3a87")


