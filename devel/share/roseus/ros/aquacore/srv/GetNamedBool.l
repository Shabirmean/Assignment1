;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetNamedBool)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetNamedBool (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETNAMEDBOOL")
  (make-package "AQUACORE::GETNAMEDBOOL"))
(unless (find-package "AQUACORE::GETNAMEDBOOLREQUEST")
  (make-package "AQUACORE::GETNAMEDBOOLREQUEST"))
(unless (find-package "AQUACORE::GETNAMEDBOOLRESPONSE")
  (make-package "AQUACORE::GETNAMEDBOOLRESPONSE"))

(in-package "ROS")





(defclass aquacore::GetNamedBoolRequest
  :super ros::object
  :slots (_name ))

(defmethod aquacore::GetNamedBoolRequest
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

(defclass aquacore::GetNamedBoolResponse
  :super ros::object
  :slots (_value ))

(defmethod aquacore::GetNamedBoolResponse
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

(defclass aquacore::GetNamedBool
  :super ros::object
  :slots ())

(setf (get aquacore::GetNamedBool :md5sum-) "03bb66919396d0c1affe599e1fba4f8f")
(setf (get aquacore::GetNamedBool :datatype-) "aquacore/GetNamedBool")
(setf (get aquacore::GetNamedBool :request) aquacore::GetNamedBoolRequest)
(setf (get aquacore::GetNamedBool :response) aquacore::GetNamedBoolResponse)

(defmethod aquacore::GetNamedBoolRequest
  (:response () (instance aquacore::GetNamedBoolResponse :init)))

(setf (get aquacore::GetNamedBoolRequest :md5sum-) "03bb66919396d0c1affe599e1fba4f8f")
(setf (get aquacore::GetNamedBoolRequest :datatype-) "aquacore/GetNamedBoolRequest")
(setf (get aquacore::GetNamedBoolRequest :definition-)
      "string name
---
bool value

")

(setf (get aquacore::GetNamedBoolResponse :md5sum-) "03bb66919396d0c1affe599e1fba4f8f")
(setf (get aquacore::GetNamedBoolResponse :datatype-) "aquacore/GetNamedBoolResponse")
(setf (get aquacore::GetNamedBoolResponse :definition-)
      "string name
---
bool value

")



(provide :aquacore/GetNamedBool "03bb66919396d0c1affe599e1fba4f8f")


