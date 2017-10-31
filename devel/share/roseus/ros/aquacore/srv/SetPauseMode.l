;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetPauseMode)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetPauseMode (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETPAUSEMODE")
  (make-package "AQUACORE::SETPAUSEMODE"))
(unless (find-package "AQUACORE::SETPAUSEMODEREQUEST")
  (make-package "AQUACORE::SETPAUSEMODEREQUEST"))
(unless (find-package "AQUACORE::SETPAUSEMODERESPONSE")
  (make-package "AQUACORE::SETPAUSEMODERESPONSE"))

(in-package "ROS")





(defclass aquacore::SetPauseModeRequest
  :super ros::object
  :slots (_value ))

(defmethod aquacore::SetPauseModeRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aquacore::SetPauseModeResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::SetPauseModeResponse
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

(defclass aquacore::SetPauseMode
  :super ros::object
  :slots ())

(setf (get aquacore::SetPauseMode :md5sum-) "313b4007c7badea2cfc258f5f204bf3a")
(setf (get aquacore::SetPauseMode :datatype-) "aquacore/SetPauseMode")
(setf (get aquacore::SetPauseMode :request) aquacore::SetPauseModeRequest)
(setf (get aquacore::SetPauseMode :response) aquacore::SetPauseModeResponse)

(defmethod aquacore::SetPauseModeRequest
  (:response () (instance aquacore::SetPauseModeResponse :init)))

(setf (get aquacore::SetPauseModeRequest :md5sum-) "313b4007c7badea2cfc258f5f204bf3a")
(setf (get aquacore::SetPauseModeRequest :datatype-) "aquacore/SetPauseModeRequest")
(setf (get aquacore::SetPauseModeRequest :definition-)
      "bool value
---
bool response
")

(setf (get aquacore::SetPauseModeResponse :md5sum-) "313b4007c7badea2cfc258f5f204bf3a")
(setf (get aquacore::SetPauseModeResponse :datatype-) "aquacore/SetPauseModeResponse")
(setf (get aquacore::SetPauseModeResponse :definition-)
      "bool value
---
bool response
")



(provide :aquacore/SetPauseMode "313b4007c7badea2cfc258f5f204bf3a")


