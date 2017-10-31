;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetAutopilotState)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetAutopilotState (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETAUTOPILOTSTATE")
  (make-package "AQUACORE::GETAUTOPILOTSTATE"))
(unless (find-package "AQUACORE::GETAUTOPILOTSTATEREQUEST")
  (make-package "AQUACORE::GETAUTOPILOTSTATEREQUEST"))
(unless (find-package "AQUACORE::GETAUTOPILOTSTATERESPONSE")
  (make-package "AQUACORE::GETAUTOPILOTSTATERESPONSE"))

(in-package "ROS")





(defclass aquacore::GetAutopilotStateRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetAutopilotStateRequest
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

(defclass aquacore::GetAutopilotStateResponse
  :super ros::object
  :slots (_ap_state _ap_mode _params _target_depth _target_roll _target_pitch _target_yaw ))

(defmethod aquacore::GetAutopilotStateResponse
  (:init
   (&key
    ((:ap_state __ap_state) 0)
    ((:ap_mode __ap_mode) 0)
    ((:params __params) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_depth __target_depth) 0.0)
    ((:target_roll __target_roll) 0.0)
    ((:target_pitch __target_pitch) 0.0)
    ((:target_yaw __target_yaw) 0.0)
    )
   (send-super :init)
   (setq _ap_state (round __ap_state))
   (setq _ap_mode (round __ap_mode))
   (setq _params __params)
   (setq _target_depth (float __target_depth))
   (setq _target_roll (float __target_roll))
   (setq _target_pitch (float __target_pitch))
   (setq _target_yaw (float __target_yaw))
   self)
  (:ap_state
   (&optional __ap_state)
   (if __ap_state (setq _ap_state __ap_state)) _ap_state)
  (:ap_mode
   (&optional __ap_mode)
   (if __ap_mode (setq _ap_mode __ap_mode)) _ap_mode)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:target_depth
   (&optional __target_depth)
   (if __target_depth (setq _target_depth __target_depth)) _target_depth)
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
    ;; int32 _ap_state
    4
    ;; int32 _ap_mode
    4
    ;; float32[] _params
    (* 4    (length _params)) 4
    ;; float32 _target_depth
    4
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
     ;; int32 _ap_state
       (write-long _ap_state s)
     ;; int32 _ap_mode
       (write-long _ap_mode s)
     ;; float32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _target_depth
       (sys::poke _target_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; int32 _ap_state
     (setq _ap_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ap_mode
     (setq _ap_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _target_depth
     (setq _target_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_roll
     (setq _target_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_pitch
     (setq _target_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_yaw
     (setq _target_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::GetAutopilotState
  :super ros::object
  :slots ())

(setf (get aquacore::GetAutopilotState :md5sum-) "8c8eeaafe647710bb35d5cfef6b22f76")
(setf (get aquacore::GetAutopilotState :datatype-) "aquacore/GetAutopilotState")
(setf (get aquacore::GetAutopilotState :request) aquacore::GetAutopilotStateRequest)
(setf (get aquacore::GetAutopilotState :response) aquacore::GetAutopilotStateResponse)

(defmethod aquacore::GetAutopilotStateRequest
  (:response () (instance aquacore::GetAutopilotStateResponse :init)))

(setf (get aquacore::GetAutopilotStateRequest :md5sum-) "8c8eeaafe647710bb35d5cfef6b22f76")
(setf (get aquacore::GetAutopilotStateRequest :datatype-) "aquacore/GetAutopilotStateRequest")
(setf (get aquacore::GetAutopilotStateRequest :definition-)
      "---
int32	   ap_state
int32	   ap_mode
float32[] params
float32    target_depth
float32    target_roll
float32    target_pitch
float32    target_yaw
")

(setf (get aquacore::GetAutopilotStateResponse :md5sum-) "8c8eeaafe647710bb35d5cfef6b22f76")
(setf (get aquacore::GetAutopilotStateResponse :datatype-) "aquacore/GetAutopilotStateResponse")
(setf (get aquacore::GetAutopilotStateResponse :definition-)
      "---
int32	   ap_state
int32	   ap_mode
float32[] params
float32    target_depth
float32    target_roll
float32    target_pitch
float32    target_yaw
")



(provide :aquacore/GetAutopilotState "8c8eeaafe647710bb35d5cfef6b22f76")


