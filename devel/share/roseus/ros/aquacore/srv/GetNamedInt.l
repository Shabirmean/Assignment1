;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetNamedInt)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetNamedInt (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETNAMEDINT")
  (make-package "AQUACORE::GETNAMEDINT"))
(unless (find-package "AQUACORE::GETNAMEDINTREQUEST")
  (make-package "AQUACORE::GETNAMEDINTREQUEST"))
(unless (find-package "AQUACORE::GETNAMEDINTRESPONSE")
  (make-package "AQUACORE::GETNAMEDINTRESPONSE"))

(in-package "ROS")





(defclass aquacore::GetNamedIntRequest
  :super ros::object
  :slots (_name ))

(defmethod aquacore::GetNamedIntRequest
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

(defclass aquacore::GetNamedIntResponse
  :super ros::object
  :slots (_value ))

(defmethod aquacore::GetNamedIntResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::GetNamedInt
  :super ros::object
  :slots ())

(setf (get aquacore::GetNamedInt :md5sum-) "2322c7c7ab60b6436d5b3b659c10095f")
(setf (get aquacore::GetNamedInt :datatype-) "aquacore/GetNamedInt")
(setf (get aquacore::GetNamedInt :request) aquacore::GetNamedIntRequest)
(setf (get aquacore::GetNamedInt :response) aquacore::GetNamedIntResponse)

(defmethod aquacore::GetNamedIntRequest
  (:response () (instance aquacore::GetNamedIntResponse :init)))

(setf (get aquacore::GetNamedIntRequest :md5sum-) "2322c7c7ab60b6436d5b3b659c10095f")
(setf (get aquacore::GetNamedIntRequest :datatype-) "aquacore/GetNamedIntRequest")
(setf (get aquacore::GetNamedIntRequest :definition-)
      "string name
---
int32 value

")

(setf (get aquacore::GetNamedIntResponse :md5sum-) "2322c7c7ab60b6436d5b3b659c10095f")
(setf (get aquacore::GetNamedIntResponse :datatype-) "aquacore/GetNamedIntResponse")
(setf (get aquacore::GetNamedIntResponse :definition-)
      "string name
---
int32 value

")



(provide :aquacore/GetNamedInt "2322c7c7ab60b6436d5b3b659c10095f")


