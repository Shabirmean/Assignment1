;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetBool)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetBool (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETBOOL")
  (make-package "AQUACORE::SETBOOL"))
(unless (find-package "AQUACORE::SETBOOLREQUEST")
  (make-package "AQUACORE::SETBOOLREQUEST"))
(unless (find-package "AQUACORE::SETBOOLRESPONSE")
  (make-package "AQUACORE::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetBoolRequest
  :super ros::object
  :slots (_value ))

(defmethod aquacore::SetBoolRequest
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

(defclass aquacore::SetBoolResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetBoolResponse
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

(defclass aquacore::SetBool
  :super ros::object
  :slots ())

(setf (get aquacore::SetBool :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::SetBool :datatype-) "aquacore/SetBool")
(setf (get aquacore::SetBool :request) aquacore::SetBoolRequest)
(setf (get aquacore::SetBool :response) aquacore::SetBoolResponse)

(defmethod aquacore::SetBoolRequest
  (:response () (instance aquacore::SetBoolResponse :init)))

(setf (get aquacore::SetBoolRequest :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::SetBoolRequest :datatype-) "aquacore/SetBoolRequest")
(setf (get aquacore::SetBoolRequest :definition-)
      "bool value
---

")

(setf (get aquacore::SetBoolResponse :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get aquacore::SetBoolResponse :datatype-) "aquacore/SetBoolResponse")
(setf (get aquacore::SetBoolResponse :definition-)
      "bool value
---

")



(provide :aquacore/SetBool "e431d687bf4b2c65fbd94b12ae0cb5d9")


