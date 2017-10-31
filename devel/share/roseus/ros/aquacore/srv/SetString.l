;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetString)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetString (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETSTRING")
  (make-package "AQUACORE::SETSTRING"))
(unless (find-package "AQUACORE::SETSTRINGREQUEST")
  (make-package "AQUACORE::SETSTRINGREQUEST"))
(unless (find-package "AQUACORE::SETSTRINGRESPONSE")
  (make-package "AQUACORE::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetStringRequest
  :super ros::object
  :slots (_value ))

(defmethod aquacore::SetStringRequest
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aquacore::SetStringResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetStringResponse
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

(defclass aquacore::SetString
  :super ros::object
  :slots ())

(setf (get aquacore::SetString :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get aquacore::SetString :datatype-) "aquacore/SetString")
(setf (get aquacore::SetString :request) aquacore::SetStringRequest)
(setf (get aquacore::SetString :response) aquacore::SetStringResponse)

(defmethod aquacore::SetStringRequest
  (:response () (instance aquacore::SetStringResponse :init)))

(setf (get aquacore::SetStringRequest :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get aquacore::SetStringRequest :datatype-) "aquacore/SetStringRequest")
(setf (get aquacore::SetStringRequest :definition-)
      "string value
---

")

(setf (get aquacore::SetStringResponse :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get aquacore::SetStringResponse :datatype-) "aquacore/SetStringResponse")
(setf (get aquacore::SetStringResponse :definition-)
      "string value
---

")



(provide :aquacore/SetString "64e58419496c7248b4ef25731f88b8c3")


