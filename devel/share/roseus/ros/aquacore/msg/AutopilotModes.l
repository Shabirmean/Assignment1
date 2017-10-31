;; Auto-generated. Do not edit!


(when (boundp 'aquacore::AutopilotModes)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'AutopilotModes (find-package "AQUACORE")))
(unless (find-package "AQUACORE::AUTOPILOTMODES")
  (make-package "AQUACORE::AUTOPILOTMODES"))

(in-package "ROS")
;;//! \htmlinclude AutopilotModes.msg.html


(intern "*OFF*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*OFF* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*OFF* 0)
(intern "*ANGLES*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*ANGLES* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*ANGLES* 2)
(intern "*DEPTH*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*DEPTH* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*DEPTH* 4)
(intern "*AP_OFF*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*AP_OFF* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*AP_OFF* 0)
(intern "*AP_GLOBAL_ANGLES_LOCAL_THRUST*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*AP_GLOBAL_ANGLES_LOCAL_THRUST* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*AP_GLOBAL_ANGLES_LOCAL_THRUST* 2)
(intern "*AP_GLOBAL_ANGLES_FIXED_DEPTH*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*AP_GLOBAL_ANGLES_FIXED_DEPTH* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*AP_GLOBAL_ANGLES_FIXED_DEPTH* 4)
(intern "*AP_FIRST_INVALID_AP_MODE*" (find-package "AQUACORE::AUTOPILOTMODES"))
(shadow '*AP_FIRST_INVALID_AP_MODE* (find-package "AQUACORE::AUTOPILOTMODES"))
(defconstant aquacore::AutopilotModes::*AP_FIRST_INVALID_AP_MODE* 5)
(defclass aquacore::AutopilotModes
  :super ros::object
  :slots ())

(defmethod aquacore::AutopilotModes
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

(setf (get aquacore::AutopilotModes :md5sum-) "aaf40c41586272cf417462aa78a8b3a1")
(setf (get aquacore::AutopilotModes :datatype-) "aquacore/AutopilotModes")
(setf (get aquacore::AutopilotModes :definition-)
      "int32 OFF = 0
int32 ANGLES = 2
int32 DEPTH = 4 # depth-regulated AP includes angle-regulation as well

# The following are for 3D autopilot (see aquaautopilot ROS package)
int32 AP_OFF = 0
int32 AP_GLOBAL_ANGLES_LOCAL_THRUST = 2
int32 AP_GLOBAL_ANGLES_FIXED_DEPTH = 4
int32 AP_FIRST_INVALID_AP_MODE = 5

")



(provide :aquacore/AutopilotModes "aaf40c41586272cf417462aa78a8b3a1")


