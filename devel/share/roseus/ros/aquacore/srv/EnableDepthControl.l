;; Auto-generated. Do not edit!


(when (boundp 'aquacore::EnableDepthControl)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'EnableDepthControl (find-package "AQUACORE")))
(unless (find-package "AQUACORE::ENABLEDEPTHCONTROL")
  (make-package "AQUACORE::ENABLEDEPTHCONTROL"))
(unless (find-package "AQUACORE::ENABLEDEPTHCONTROLREQUEST")
  (make-package "AQUACORE::ENABLEDEPTHCONTROLREQUEST"))
(unless (find-package "AQUACORE::ENABLEDEPTHCONTROLRESPONSE")
  (make-package "AQUACORE::ENABLEDEPTHCONTROLRESPONSE"))

(in-package "ROS")





(defclass aquacore::EnableDepthControlRequest
  :super ros::object
  :slots (_state ))

(defmethod aquacore::EnableDepthControlRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::EnableDepthControlResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::EnableDepthControlResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aquacore::EnableDepthControl
  :super ros::object
  :slots ())

(setf (get aquacore::EnableDepthControl :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableDepthControl :datatype-) "aquacore/EnableDepthControl")
(setf (get aquacore::EnableDepthControl :request) aquacore::EnableDepthControlRequest)
(setf (get aquacore::EnableDepthControl :response) aquacore::EnableDepthControlResponse)

(defmethod aquacore::EnableDepthControlRequest
  (:response () (instance aquacore::EnableDepthControlResponse :init)))

(setf (get aquacore::EnableDepthControlRequest :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableDepthControlRequest :datatype-) "aquacore/EnableDepthControlRequest")
(setf (get aquacore::EnableDepthControlRequest :definition-)
      "int32 state
---
bool response
")

(setf (get aquacore::EnableDepthControlResponse :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableDepthControlResponse :datatype-) "aquacore/EnableDepthControlResponse")
(setf (get aquacore::EnableDepthControlResponse :definition-)
      "int32 state
---
bool response
")



(provide :aquacore/EnableDepthControl "8ae95d1385d7365f05201d22aea7ac68")


