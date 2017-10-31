;; Auto-generated. Do not edit!


(when (boundp 'aquacore::IsCalibrated)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'IsCalibrated (find-package "AQUACORE")))
(unless (find-package "AQUACORE::ISCALIBRATED")
  (make-package "AQUACORE::ISCALIBRATED"))
(unless (find-package "AQUACORE::ISCALIBRATEDREQUEST")
  (make-package "AQUACORE::ISCALIBRATEDREQUEST"))
(unless (find-package "AQUACORE::ISCALIBRATEDRESPONSE")
  (make-package "AQUACORE::ISCALIBRATEDRESPONSE"))

(in-package "ROS")





(defclass aquacore::IsCalibratedRequest
  :super ros::object
  :slots ())

(defmethod aquacore::IsCalibratedRequest
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

(defclass aquacore::IsCalibratedResponse
  :super ros::object
  :slots (_value ))

(defmethod aquacore::IsCalibratedResponse
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

(defclass aquacore::IsCalibrated
  :super ros::object
  :slots ())

(setf (get aquacore::IsCalibrated :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::IsCalibrated :datatype-) "aquacore/IsCalibrated")
(setf (get aquacore::IsCalibrated :request) aquacore::IsCalibratedRequest)
(setf (get aquacore::IsCalibrated :response) aquacore::IsCalibratedResponse)

(defmethod aquacore::IsCalibratedRequest
  (:response () (instance aquacore::IsCalibratedResponse :init)))

(setf (get aquacore::IsCalibratedRequest :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::IsCalibratedRequest :datatype-) "aquacore/IsCalibratedRequest")
(setf (get aquacore::IsCalibratedRequest :definition-)
      "---
bool value

")

(setf (get aquacore::IsCalibratedResponse :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::IsCalibratedResponse :datatype-) "aquacore/IsCalibratedResponse")
(setf (get aquacore::IsCalibratedResponse :definition-)
      "---
bool value

")



(provide :aquacore/IsCalibrated "e431d687bf4b2c65fbd94b12ae0cb5d9")


