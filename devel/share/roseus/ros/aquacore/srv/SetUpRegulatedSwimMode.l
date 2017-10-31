;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetUpRegulatedSwimMode)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetUpRegulatedSwimMode (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETUPREGULATEDSWIMMODE")
  (make-package "AQUACORE::SETUPREGULATEDSWIMMODE"))
(unless (find-package "AQUACORE::SETUPREGULATEDSWIMMODEREQUEST")
  (make-package "AQUACORE::SETUPREGULATEDSWIMMODEREQUEST"))
(unless (find-package "AQUACORE::SETUPREGULATEDSWIMMODERESPONSE")
  (make-package "AQUACORE::SETUPREGULATEDSWIMMODERESPONSE"))

(in-package "ROS")





(defclass aquacore::SetUpRegulatedSwimModeRequest
  :super ros::object
  :slots (_target_yaw _target_depth ))

(defmethod aquacore::SetUpRegulatedSwimModeRequest
  (:init
   (&key
    ((:target_yaw __target_yaw) 0.0)
    ((:target_depth __target_depth) 0.0)
    )
   (send-super :init)
   (setq _target_yaw (float __target_yaw))
   (setq _target_depth (float __target_depth))
   self)
  (:target_yaw
   (&optional __target_yaw)
   (if __target_yaw (setq _target_yaw __target_yaw)) _target_yaw)
  (:target_depth
   (&optional __target_depth)
   (if __target_depth (setq _target_depth __target_depth)) _target_depth)
  (:serialization-length
   ()
   (+
    ;; float32 _target_yaw
    4
    ;; float32 _target_depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_yaw
       (sys::poke _target_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_depth
       (sys::poke _target_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_yaw
     (setq _target_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_depth
     (setq _target_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetUpRegulatedSwimModeResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetUpRegulatedSwimModeResponse
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

(defclass aquacore::SetUpRegulatedSwimMode
  :super ros::object
  :slots ())

(setf (get aquacore::SetUpRegulatedSwimMode :md5sum-) "0eb67c11df69dbb1cbae50ded84c7aa2")
(setf (get aquacore::SetUpRegulatedSwimMode :datatype-) "aquacore/SetUpRegulatedSwimMode")
(setf (get aquacore::SetUpRegulatedSwimMode :request) aquacore::SetUpRegulatedSwimModeRequest)
(setf (get aquacore::SetUpRegulatedSwimMode :response) aquacore::SetUpRegulatedSwimModeResponse)

(defmethod aquacore::SetUpRegulatedSwimModeRequest
  (:response () (instance aquacore::SetUpRegulatedSwimModeResponse :init)))

(setf (get aquacore::SetUpRegulatedSwimModeRequest :md5sum-) "0eb67c11df69dbb1cbae50ded84c7aa2")
(setf (get aquacore::SetUpRegulatedSwimModeRequest :datatype-) "aquacore/SetUpRegulatedSwimModeRequest")
(setf (get aquacore::SetUpRegulatedSwimModeRequest :definition-)
      "float32 target_yaw
float32 target_depth

---

")

(setf (get aquacore::SetUpRegulatedSwimModeResponse :md5sum-) "0eb67c11df69dbb1cbae50ded84c7aa2")
(setf (get aquacore::SetUpRegulatedSwimModeResponse :datatype-) "aquacore/SetUpRegulatedSwimModeResponse")
(setf (get aquacore::SetUpRegulatedSwimModeResponse :definition-)
      "float32 target_yaw
float32 target_depth

---

")



(provide :aquacore/SetUpRegulatedSwimMode "0eb67c11df69dbb1cbae50ded84c7aa2")


