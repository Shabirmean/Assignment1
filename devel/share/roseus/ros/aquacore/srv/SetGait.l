;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetGait)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetGait (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETGAIT")
  (make-package "AQUACORE::SETGAIT"))
(unless (find-package "AQUACORE::SETGAITREQUEST")
  (make-package "AQUACORE::SETGAITREQUEST"))
(unless (find-package "AQUACORE::SETGAITRESPONSE")
  (make-package "AQUACORE::SETGAITRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetGaitRequest
  :super ros::object
  :slots (_gait ))

(defmethod aquacore::SetGaitRequest
  (:init
   (&key
    ((:gait __gait) "")
    )
   (send-super :init)
   (setq _gait (string __gait))
   self)
  (:gait
   (&optional __gait)
   (if __gait (setq _gait __gait)) _gait)
  (:serialization-length
   ()
   (+
    ;; string _gait
    4 (length _gait)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gait
       (write-long (length _gait) s) (princ _gait s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gait
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gait (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aquacore::SetGaitResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::SetGaitResponse
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

(defclass aquacore::SetGait
  :super ros::object
  :slots ())

(setf (get aquacore::SetGait :md5sum-) "32777b381fb403c1a3470fd2f46597fe")
(setf (get aquacore::SetGait :datatype-) "aquacore/SetGait")
(setf (get aquacore::SetGait :request) aquacore::SetGaitRequest)
(setf (get aquacore::SetGait :response) aquacore::SetGaitResponse)

(defmethod aquacore::SetGaitRequest
  (:response () (instance aquacore::SetGaitResponse :init)))

(setf (get aquacore::SetGaitRequest :md5sum-) "32777b381fb403c1a3470fd2f46597fe")
(setf (get aquacore::SetGaitRequest :datatype-) "aquacore/SetGaitRequest")
(setf (get aquacore::SetGaitRequest :definition-)
      "string gait
---
bool response
")

(setf (get aquacore::SetGaitResponse :md5sum-) "32777b381fb403c1a3470fd2f46597fe")
(setf (get aquacore::SetGaitResponse :datatype-) "aquacore/SetGaitResponse")
(setf (get aquacore::SetGaitResponse :definition-)
      "string gait
---
bool response
")



(provide :aquacore/SetGait "32777b381fb403c1a3470fd2f46597fe")


