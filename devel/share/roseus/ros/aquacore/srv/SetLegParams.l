;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetLegParams)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetLegParams (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETLEGPARAMS")
  (make-package "AQUACORE::SETLEGPARAMS"))
(unless (find-package "AQUACORE::SETLEGPARAMSREQUEST")
  (make-package "AQUACORE::SETLEGPARAMSREQUEST"))
(unless (find-package "AQUACORE::SETLEGPARAMSRESPONSE")
  (make-package "AQUACORE::SETLEGPARAMSRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetLegParamsRequest
  :super ros::object
  :slots (_amplitude _period ))

(defmethod aquacore::SetLegParamsRequest
  (:init
   (&key
    ((:amplitude __amplitude) 0.0)
    ((:period __period) 0.0)
    )
   (send-super :init)
   (setq _amplitude (float __amplitude))
   (setq _period (float __period))
   self)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:serialization-length
   ()
   (+
    ;; float32 _amplitude
    4
    ;; float32 _period
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _amplitude
       (sys::poke _amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _period
       (sys::poke _period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _amplitude
     (setq _amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _period
     (setq _period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetLegParamsResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetLegParamsResponse
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

(defclass aquacore::SetLegParams
  :super ros::object
  :slots ())

(setf (get aquacore::SetLegParams :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::SetLegParams :datatype-) "aquacore/SetLegParams")
(setf (get aquacore::SetLegParams :request) aquacore::SetLegParamsRequest)
(setf (get aquacore::SetLegParams :response) aquacore::SetLegParamsResponse)

(defmethod aquacore::SetLegParamsRequest
  (:response () (instance aquacore::SetLegParamsResponse :init)))

(setf (get aquacore::SetLegParamsRequest :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::SetLegParamsRequest :datatype-) "aquacore/SetLegParamsRequest")
(setf (get aquacore::SetLegParamsRequest :definition-)
      "float32 amplitude
float32 period
---

")

(setf (get aquacore::SetLegParamsResponse :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::SetLegParamsResponse :datatype-) "aquacore/SetLegParamsResponse")
(setf (get aquacore::SetLegParamsResponse :definition-)
      "float32 amplitude
float32 period
---

")



(provide :aquacore/SetLegParams "1792bf569e4223f89286c37967c01dcf")


