;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetLegParams)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetLegParams (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETLEGPARAMS")
  (make-package "AQUACORE::GETLEGPARAMS"))
(unless (find-package "AQUACORE::GETLEGPARAMSREQUEST")
  (make-package "AQUACORE::GETLEGPARAMSREQUEST"))
(unless (find-package "AQUACORE::GETLEGPARAMSRESPONSE")
  (make-package "AQUACORE::GETLEGPARAMSRESPONSE"))

(in-package "ROS")





(defclass aquacore::GetLegParamsRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetLegParamsRequest
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

(defclass aquacore::GetLegParamsResponse
  :super ros::object
  :slots (_amplitude _period ))

(defmethod aquacore::GetLegParamsResponse
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

(defclass aquacore::GetLegParams
  :super ros::object
  :slots ())

(setf (get aquacore::GetLegParams :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::GetLegParams :datatype-) "aquacore/GetLegParams")
(setf (get aquacore::GetLegParams :request) aquacore::GetLegParamsRequest)
(setf (get aquacore::GetLegParams :response) aquacore::GetLegParamsResponse)

(defmethod aquacore::GetLegParamsRequest
  (:response () (instance aquacore::GetLegParamsResponse :init)))

(setf (get aquacore::GetLegParamsRequest :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::GetLegParamsRequest :datatype-) "aquacore/GetLegParamsRequest")
(setf (get aquacore::GetLegParamsRequest :definition-)
      "---
float32 amplitude
float32 period


")

(setf (get aquacore::GetLegParamsResponse :md5sum-) "1792bf569e4223f89286c37967c01dcf")
(setf (get aquacore::GetLegParamsResponse :datatype-) "aquacore/GetLegParamsResponse")
(setf (get aquacore::GetLegParamsResponse :definition-)
      "---
float32 amplitude
float32 period


")



(provide :aquacore/GetLegParams "1792bf569e4223f89286c37967c01dcf")


