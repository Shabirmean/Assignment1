;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetDirection)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetDirection (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETDIRECTION")
  (make-package "AQUACORE::SETDIRECTION"))
(unless (find-package "AQUACORE::SETDIRECTIONREQUEST")
  (make-package "AQUACORE::SETDIRECTIONREQUEST"))
(unless (find-package "AQUACORE::SETDIRECTIONRESPONSE")
  (make-package "AQUACORE::SETDIRECTIONRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetDirectionRequest
  :super ros::object
  :slots (_forward ))

(defmethod aquacore::SetDirectionRequest
  (:init
   (&key
    ((:forward __forward) nil)
    )
   (send-super :init)
   (setq _forward __forward)
   self)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:serialization-length
   ()
   (+
    ;; bool _forward
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aquacore::SetDirectionResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetDirectionResponse
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

(defclass aquacore::SetDirection
  :super ros::object
  :slots ())

(setf (get aquacore::SetDirection :md5sum-) "0fc3bc45e28c68f06921185960eb727c")
(setf (get aquacore::SetDirection :datatype-) "aquacore/SetDirection")
(setf (get aquacore::SetDirection :request) aquacore::SetDirectionRequest)
(setf (get aquacore::SetDirection :response) aquacore::SetDirectionResponse)

(defmethod aquacore::SetDirectionRequest
  (:response () (instance aquacore::SetDirectionResponse :init)))

(setf (get aquacore::SetDirectionRequest :md5sum-) "0fc3bc45e28c68f06921185960eb727c")
(setf (get aquacore::SetDirectionRequest :datatype-) "aquacore/SetDirectionRequest")
(setf (get aquacore::SetDirectionRequest :definition-)
      "bool forward
---

")

(setf (get aquacore::SetDirectionResponse :md5sum-) "0fc3bc45e28c68f06921185960eb727c")
(setf (get aquacore::SetDirectionResponse :datatype-) "aquacore/SetDirectionResponse")
(setf (get aquacore::SetDirectionResponse :definition-)
      "bool forward
---

")



(provide :aquacore/SetDirection "0fc3bc45e28c68f06921185960eb727c")


