;; Auto-generated. Do not edit!


(when (boundp 'aquacore::EnableAutopilot)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'EnableAutopilot (find-package "AQUACORE")))
(unless (find-package "AQUACORE::ENABLEAUTOPILOT")
  (make-package "AQUACORE::ENABLEAUTOPILOT"))
(unless (find-package "AQUACORE::ENABLEAUTOPILOTREQUEST")
  (make-package "AQUACORE::ENABLEAUTOPILOTREQUEST"))
(unless (find-package "AQUACORE::ENABLEAUTOPILOTRESPONSE")
  (make-package "AQUACORE::ENABLEAUTOPILOTRESPONSE"))

(in-package "ROS")





(defclass aquacore::EnableAutopilotRequest
  :super ros::object
  :slots (_state ))

(defmethod aquacore::EnableAutopilotRequest
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

(defclass aquacore::EnableAutopilotResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::EnableAutopilotResponse
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

(defclass aquacore::EnableAutopilot
  :super ros::object
  :slots ())

(setf (get aquacore::EnableAutopilot :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableAutopilot :datatype-) "aquacore/EnableAutopilot")
(setf (get aquacore::EnableAutopilot :request) aquacore::EnableAutopilotRequest)
(setf (get aquacore::EnableAutopilot :response) aquacore::EnableAutopilotResponse)

(defmethod aquacore::EnableAutopilotRequest
  (:response () (instance aquacore::EnableAutopilotResponse :init)))

(setf (get aquacore::EnableAutopilotRequest :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableAutopilotRequest :datatype-) "aquacore/EnableAutopilotRequest")
(setf (get aquacore::EnableAutopilotRequest :definition-)
      "int32 state
---
bool response
")

(setf (get aquacore::EnableAutopilotResponse :md5sum-) "8ae95d1385d7365f05201d22aea7ac68")
(setf (get aquacore::EnableAutopilotResponse :datatype-) "aquacore/EnableAutopilotResponse")
(setf (get aquacore::EnableAutopilotResponse :definition-)
      "int32 state
---
bool response
")



(provide :aquacore/EnableAutopilot "8ae95d1385d7365f05201d22aea7ac68")


