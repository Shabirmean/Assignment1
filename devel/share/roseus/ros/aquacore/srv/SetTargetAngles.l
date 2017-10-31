;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetTargetAngles)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetTargetAngles (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETTARGETANGLES")
  (make-package "AQUACORE::SETTARGETANGLES"))
(unless (find-package "AQUACORE::SETTARGETANGLESREQUEST")
  (make-package "AQUACORE::SETTARGETANGLESREQUEST"))
(unless (find-package "AQUACORE::SETTARGETANGLESRESPONSE")
  (make-package "AQUACORE::SETTARGETANGLESRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetTargetAnglesRequest
  :super ros::object
  :slots (_target_roll _target_pitch _target_yaw ))

(defmethod aquacore::SetTargetAnglesRequest
  (:init
   (&key
    ((:target_roll __target_roll) 0.0)
    ((:target_pitch __target_pitch) 0.0)
    ((:target_yaw __target_yaw) 0.0)
    )
   (send-super :init)
   (setq _target_roll (float __target_roll))
   (setq _target_pitch (float __target_pitch))
   (setq _target_yaw (float __target_yaw))
   self)
  (:target_roll
   (&optional __target_roll)
   (if __target_roll (setq _target_roll __target_roll)) _target_roll)
  (:target_pitch
   (&optional __target_pitch)
   (if __target_pitch (setq _target_pitch __target_pitch)) _target_pitch)
  (:target_yaw
   (&optional __target_yaw)
   (if __target_yaw (setq _target_yaw __target_yaw)) _target_yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _target_roll
    4
    ;; float32 _target_pitch
    4
    ;; float32 _target_yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_roll
       (sys::poke _target_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_pitch
       (sys::poke _target_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_yaw
       (sys::poke _target_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_roll
     (setq _target_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_pitch
     (setq _target_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_yaw
     (setq _target_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetTargetAnglesResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::SetTargetAnglesResponse
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

(defclass aquacore::SetTargetAngles
  :super ros::object
  :slots ())

(setf (get aquacore::SetTargetAngles :md5sum-) "25f74f3de9b4229892e03ee79c3e9669")
(setf (get aquacore::SetTargetAngles :datatype-) "aquacore/SetTargetAngles")
(setf (get aquacore::SetTargetAngles :request) aquacore::SetTargetAnglesRequest)
(setf (get aquacore::SetTargetAngles :response) aquacore::SetTargetAnglesResponse)

(defmethod aquacore::SetTargetAnglesRequest
  (:response () (instance aquacore::SetTargetAnglesResponse :init)))

(setf (get aquacore::SetTargetAnglesRequest :md5sum-) "25f74f3de9b4229892e03ee79c3e9669")
(setf (get aquacore::SetTargetAnglesRequest :datatype-) "aquacore/SetTargetAnglesRequest")
(setf (get aquacore::SetTargetAnglesRequest :definition-)
      "float32 target_roll
float32 target_pitch
float32 target_yaw
---
bool response
")

(setf (get aquacore::SetTargetAnglesResponse :md5sum-) "25f74f3de9b4229892e03ee79c3e9669")
(setf (get aquacore::SetTargetAnglesResponse :datatype-) "aquacore/SetTargetAnglesResponse")
(setf (get aquacore::SetTargetAnglesResponse :definition-)
      "float32 target_roll
float32 target_pitch
float32 target_yaw
---
bool response
")



(provide :aquacore/SetTargetAngles "25f74f3de9b4229892e03ee79c3e9669")


