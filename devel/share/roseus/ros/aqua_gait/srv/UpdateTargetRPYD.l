;; Auto-generated. Do not edit!


(when (boundp 'aqua_gait::UpdateTargetRPYD)
  (if (not (find-package "AQUA_GAIT"))
    (make-package "AQUA_GAIT"))
  (shadow 'UpdateTargetRPYD (find-package "AQUA_GAIT")))
(unless (find-package "AQUA_GAIT::UPDATETARGETRPYD")
  (make-package "AQUA_GAIT::UPDATETARGETRPYD"))
(unless (find-package "AQUA_GAIT::UPDATETARGETRPYDREQUEST")
  (make-package "AQUA_GAIT::UPDATETARGETRPYDREQUEST"))
(unless (find-package "AQUA_GAIT::UPDATETARGETRPYDRESPONSE")
  (make-package "AQUA_GAIT::UPDATETARGETRPYDRESPONSE"))

(in-package "ROS")





(defclass aqua_gait::UpdateTargetRPYDRequest
  :super ros::object
  :slots (_target_roll_deg _target_pitch_deg _target_yaw_deg _target_depth_m ))

(defmethod aqua_gait::UpdateTargetRPYDRequest
  (:init
   (&key
    ((:target_roll_deg __target_roll_deg) 0.0)
    ((:target_pitch_deg __target_pitch_deg) 0.0)
    ((:target_yaw_deg __target_yaw_deg) 0.0)
    ((:target_depth_m __target_depth_m) 0.0)
    )
   (send-super :init)
   (setq _target_roll_deg (float __target_roll_deg))
   (setq _target_pitch_deg (float __target_pitch_deg))
   (setq _target_yaw_deg (float __target_yaw_deg))
   (setq _target_depth_m (float __target_depth_m))
   self)
  (:target_roll_deg
   (&optional __target_roll_deg)
   (if __target_roll_deg (setq _target_roll_deg __target_roll_deg)) _target_roll_deg)
  (:target_pitch_deg
   (&optional __target_pitch_deg)
   (if __target_pitch_deg (setq _target_pitch_deg __target_pitch_deg)) _target_pitch_deg)
  (:target_yaw_deg
   (&optional __target_yaw_deg)
   (if __target_yaw_deg (setq _target_yaw_deg __target_yaw_deg)) _target_yaw_deg)
  (:target_depth_m
   (&optional __target_depth_m)
   (if __target_depth_m (setq _target_depth_m __target_depth_m)) _target_depth_m)
  (:serialization-length
   ()
   (+
    ;; float64 _target_roll_deg
    8
    ;; float64 _target_pitch_deg
    8
    ;; float64 _target_yaw_deg
    8
    ;; float64 _target_depth_m
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_roll_deg
       (sys::poke _target_roll_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_pitch_deg
       (sys::poke _target_pitch_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_yaw_deg
       (sys::poke _target_yaw_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_depth_m
       (sys::poke _target_depth_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_roll_deg
     (setq _target_roll_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_pitch_deg
     (setq _target_pitch_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_yaw_deg
     (setq _target_yaw_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_depth_m
     (setq _target_depth_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass aqua_gait::UpdateTargetRPYDResponse
  :super ros::object
  :slots ())

(defmethod aqua_gait::UpdateTargetRPYDResponse
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

(defclass aqua_gait::UpdateTargetRPYD
  :super ros::object
  :slots ())

(setf (get aqua_gait::UpdateTargetRPYD :md5sum-) "67eb34f7772a72c0462945d31ff2da84")
(setf (get aqua_gait::UpdateTargetRPYD :datatype-) "aqua_gait/UpdateTargetRPYD")
(setf (get aqua_gait::UpdateTargetRPYD :request) aqua_gait::UpdateTargetRPYDRequest)
(setf (get aqua_gait::UpdateTargetRPYD :response) aqua_gait::UpdateTargetRPYDResponse)

(defmethod aqua_gait::UpdateTargetRPYDRequest
  (:response () (instance aqua_gait::UpdateTargetRPYDResponse :init)))

(setf (get aqua_gait::UpdateTargetRPYDRequest :md5sum-) "67eb34f7772a72c0462945d31ff2da84")
(setf (get aqua_gait::UpdateTargetRPYDRequest :datatype-) "aqua_gait/UpdateTargetRPYDRequest")
(setf (get aqua_gait::UpdateTargetRPYDRequest :definition-)
      "float64 target_roll_deg
float64 target_pitch_deg
float64 target_yaw_deg
float64 target_depth_m

---



")

(setf (get aqua_gait::UpdateTargetRPYDResponse :md5sum-) "67eb34f7772a72c0462945d31ff2da84")
(setf (get aqua_gait::UpdateTargetRPYDResponse :datatype-) "aqua_gait/UpdateTargetRPYDResponse")
(setf (get aqua_gait::UpdateTargetRPYDResponse :definition-)
      "float64 target_roll_deg
float64 target_pitch_deg
float64 target_yaw_deg
float64 target_depth_m

---



")



(provide :aqua_gait/UpdateTargetRPYD "67eb34f7772a72c0462945d31ff2da84")


