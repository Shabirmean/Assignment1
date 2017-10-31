;; Auto-generated. Do not edit!


(when (boundp 'aquacore::EmptyBool)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'EmptyBool (find-package "AQUACORE")))
(unless (find-package "AQUACORE::EMPTYBOOL")
  (make-package "AQUACORE::EMPTYBOOL"))
(unless (find-package "AQUACORE::EMPTYBOOLREQUEST")
  (make-package "AQUACORE::EMPTYBOOLREQUEST"))
(unless (find-package "AQUACORE::EMPTYBOOLRESPONSE")
  (make-package "AQUACORE::EMPTYBOOLRESPONSE"))

(in-package "ROS")





(defclass aquacore::EmptyBoolRequest
  :super ros::object
  :slots ())

(defmethod aquacore::EmptyBoolRequest
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

(defclass aquacore::EmptyBoolResponse
  :super ros::object
  :slots (_result ))

(defmethod aquacore::EmptyBoolResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aquacore::EmptyBool
  :super ros::object
  :slots ())

(setf (get aquacore::EmptyBool :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get aquacore::EmptyBool :datatype-) "aquacore/EmptyBool")
(setf (get aquacore::EmptyBool :request) aquacore::EmptyBoolRequest)
(setf (get aquacore::EmptyBool :response) aquacore::EmptyBoolResponse)

(defmethod aquacore::EmptyBoolRequest
  (:response () (instance aquacore::EmptyBoolResponse :init)))

(setf (get aquacore::EmptyBoolRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get aquacore::EmptyBoolRequest :datatype-) "aquacore/EmptyBoolRequest")
(setf (get aquacore::EmptyBoolRequest :definition-)
      "
---
bool result
")

(setf (get aquacore::EmptyBoolResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get aquacore::EmptyBoolResponse :datatype-) "aquacore/EmptyBoolResponse")
(setf (get aquacore::EmptyBoolResponse :definition-)
      "
---
bool result
")



(provide :aquacore/EmptyBool "eb13ac1f1354ccecb7941ee8fa2192e8")


