;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetNamedFloat)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetNamedFloat (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETNAMEDFLOAT")
  (make-package "AQUACORE::SETNAMEDFLOAT"))
(unless (find-package "AQUACORE::SETNAMEDFLOATREQUEST")
  (make-package "AQUACORE::SETNAMEDFLOATREQUEST"))
(unless (find-package "AQUACORE::SETNAMEDFLOATRESPONSE")
  (make-package "AQUACORE::SETNAMEDFLOATRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetNamedFloatRequest
  :super ros::object
  :slots (_name _value ))

(defmethod aquacore::SetNamedFloatRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetNamedFloatResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetNamedFloatResponse
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

(defclass aquacore::SetNamedFloat
  :super ros::object
  :slots ())

(setf (get aquacore::SetNamedFloat :md5sum-) "db3486341a840969e8845548decf6f11")
(setf (get aquacore::SetNamedFloat :datatype-) "aquacore/SetNamedFloat")
(setf (get aquacore::SetNamedFloat :request) aquacore::SetNamedFloatRequest)
(setf (get aquacore::SetNamedFloat :response) aquacore::SetNamedFloatResponse)

(defmethod aquacore::SetNamedFloatRequest
  (:response () (instance aquacore::SetNamedFloatResponse :init)))

(setf (get aquacore::SetNamedFloatRequest :md5sum-) "db3486341a840969e8845548decf6f11")
(setf (get aquacore::SetNamedFloatRequest :datatype-) "aquacore/SetNamedFloatRequest")
(setf (get aquacore::SetNamedFloatRequest :definition-)
      "string name
float32 value
---

")

(setf (get aquacore::SetNamedFloatResponse :md5sum-) "db3486341a840969e8845548decf6f11")
(setf (get aquacore::SetNamedFloatResponse :datatype-) "aquacore/SetNamedFloatResponse")
(setf (get aquacore::SetNamedFloatResponse :definition-)
      "string name
float32 value
---

")



(provide :aquacore/SetNamedFloat "db3486341a840969e8845548decf6f11")


