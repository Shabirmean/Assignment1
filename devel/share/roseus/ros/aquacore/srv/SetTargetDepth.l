;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetTargetDepth)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetTargetDepth (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETTARGETDEPTH")
  (make-package "AQUACORE::SETTARGETDEPTH"))
(unless (find-package "AQUACORE::SETTARGETDEPTHREQUEST")
  (make-package "AQUACORE::SETTARGETDEPTHREQUEST"))
(unless (find-package "AQUACORE::SETTARGETDEPTHRESPONSE")
  (make-package "AQUACORE::SETTARGETDEPTHRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetTargetDepthRequest
  :super ros::object
  :slots (_depth ))

(defmethod aquacore::SetTargetDepthRequest
  (:init
   (&key
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _depth (float __depth))
   self)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; float32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetTargetDepthResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::SetTargetDepthResponse
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

(defclass aquacore::SetTargetDepth
  :super ros::object
  :slots ())

(setf (get aquacore::SetTargetDepth :md5sum-) "0c5e51c957e48bd29e418e983a93b9a7")
(setf (get aquacore::SetTargetDepth :datatype-) "aquacore/SetTargetDepth")
(setf (get aquacore::SetTargetDepth :request) aquacore::SetTargetDepthRequest)
(setf (get aquacore::SetTargetDepth :response) aquacore::SetTargetDepthResponse)

(defmethod aquacore::SetTargetDepthRequest
  (:response () (instance aquacore::SetTargetDepthResponse :init)))

(setf (get aquacore::SetTargetDepthRequest :md5sum-) "0c5e51c957e48bd29e418e983a93b9a7")
(setf (get aquacore::SetTargetDepthRequest :datatype-) "aquacore/SetTargetDepthRequest")
(setf (get aquacore::SetTargetDepthRequest :definition-)
      "float32 depth
---
bool response
")

(setf (get aquacore::SetTargetDepthResponse :md5sum-) "0c5e51c957e48bd29e418e983a93b9a7")
(setf (get aquacore::SetTargetDepthResponse :datatype-) "aquacore/SetTargetDepthResponse")
(setf (get aquacore::SetTargetDepthResponse :definition-)
      "float32 depth
---
bool response
")



(provide :aquacore/SetTargetDepth "0c5e51c957e48bd29e418e983a93b9a7")


