;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GetAutopilotParams)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GetAutopilotParams (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GETAUTOPILOTPARAMS")
  (make-package "AQUACORE::GETAUTOPILOTPARAMS"))
(unless (find-package "AQUACORE::GETAUTOPILOTPARAMSREQUEST")
  (make-package "AQUACORE::GETAUTOPILOTPARAMSREQUEST"))
(unless (find-package "AQUACORE::GETAUTOPILOTPARAMSRESPONSE")
  (make-package "AQUACORE::GETAUTOPILOTPARAMSRESPONSE"))

(in-package "ROS")





(defclass aquacore::GetAutopilotParamsRequest
  :super ros::object
  :slots ())

(defmethod aquacore::GetAutopilotParamsRequest
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

(defclass aquacore::GetAutopilotParamsResponse
  :super ros::object
  :slots (_params ))

(defmethod aquacore::GetAutopilotParamsResponse
  (:init
   (&key
    ((:params __params) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; float32[] _params
    (* 4    (length _params)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aquacore::GetAutopilotParams
  :super ros::object
  :slots ())

(setf (get aquacore::GetAutopilotParams :md5sum-) "8e22f8c3368a715022fd214d9775704d")
(setf (get aquacore::GetAutopilotParams :datatype-) "aquacore/GetAutopilotParams")
(setf (get aquacore::GetAutopilotParams :request) aquacore::GetAutopilotParamsRequest)
(setf (get aquacore::GetAutopilotParams :response) aquacore::GetAutopilotParamsResponse)

(defmethod aquacore::GetAutopilotParamsRequest
  (:response () (instance aquacore::GetAutopilotParamsResponse :init)))

(setf (get aquacore::GetAutopilotParamsRequest :md5sum-) "8e22f8c3368a715022fd214d9775704d")
(setf (get aquacore::GetAutopilotParamsRequest :datatype-) "aquacore/GetAutopilotParamsRequest")
(setf (get aquacore::GetAutopilotParamsRequest :definition-)
      "---
float32[] params

")

(setf (get aquacore::GetAutopilotParamsResponse :md5sum-) "8e22f8c3368a715022fd214d9775704d")
(setf (get aquacore::GetAutopilotParamsResponse :datatype-) "aquacore/GetAutopilotParamsResponse")
(setf (get aquacore::GetAutopilotParamsResponse :definition-)
      "---
float32[] params

")



(provide :aquacore/GetAutopilotParams "8e22f8c3368a715022fd214d9775704d")


