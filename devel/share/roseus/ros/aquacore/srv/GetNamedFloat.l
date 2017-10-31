;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetNamedFloat)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetNamedFloat (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETNAMEDFLOAT")
  (make-package "AQUACORE::GETNAMEDFLOAT"))
(unless (find-package "AQUACORE::GETNAMEDFLOATREQUEST")
  (make-package "AQUACORE::GETNAMEDFLOATREQUEST"))
(unless (find-package "AQUACORE::GETNAMEDFLOATRESPONSE")
  (make-package "AQUACORE::GETNAMEDFLOATRESPONSE"))

(in-package "ROS")





(defclass aquacore::GetNamedFloatRequest
  :super ros::object
  :slots (_name ))

(defmethod aquacore::GetNamedFloatRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aquacore::GetNamedFloatResponse
  :super ros::object
  :slots (_value ))

(defmethod aquacore::GetNamedFloatResponse
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::GetNamedFloat
  :super ros::object
  :slots ())

(setf (get aquacore::GetNamedFloat :md5sum-) "cab3e232f5ab7d227b43ff1e2453857d")
(setf (get aquacore::GetNamedFloat :datatype-) "aquacore/GetNamedFloat")
(setf (get aquacore::GetNamedFloat :request) aquacore::GetNamedFloatRequest)
(setf (get aquacore::GetNamedFloat :response) aquacore::GetNamedFloatResponse)

(defmethod aquacore::GetNamedFloatRequest
  (:response () (instance aquacore::GetNamedFloatResponse :init)))

(setf (get aquacore::GetNamedFloatRequest :md5sum-) "cab3e232f5ab7d227b43ff1e2453857d")
(setf (get aquacore::GetNamedFloatRequest :datatype-) "aquacore/GetNamedFloatRequest")
(setf (get aquacore::GetNamedFloatRequest :definition-)
      "string name
---
float32 value

")

(setf (get aquacore::GetNamedFloatResponse :md5sum-) "cab3e232f5ab7d227b43ff1e2453857d")
(setf (get aquacore::GetNamedFloatResponse :datatype-) "aquacore/GetNamedFloatResponse")
(setf (get aquacore::GetNamedFloatResponse :definition-)
      "string name
---
float32 value

")



(provide :aquacore/GetNamedFloat "cab3e232f5ab7d227b43ff1e2453857d")


