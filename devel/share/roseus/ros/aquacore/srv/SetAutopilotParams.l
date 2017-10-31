;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetAutopilotParams)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetAutopilotParams (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETAUTOPILOTPARAMS")
  (make-package "AQUACORE::SETAUTOPILOTPARAMS"))
(unless (find-package "AQUACORE::SETAUTOPILOTPARAMSREQUEST")
  (make-package "AQUACORE::SETAUTOPILOTPARAMSREQUEST"))
(unless (find-package "AQUACORE::SETAUTOPILOTPARAMSRESPONSE")
  (make-package "AQUACORE::SETAUTOPILOTPARAMSRESPONSE"))

(in-package "ROS")





(defclass aquacore::SetAutopilotParamsRequest
  :super ros::object
  :slots (_values ))

(defmethod aquacore::SetAutopilotParamsRequest
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; float32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aquacore::SetAutopilotParamsResponse
  :super ros::object
  :slots ())

(defmethod aquacore::SetAutopilotParamsResponse
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

(defclass aquacore::SetAutopilotParams
  :super ros::object
  :slots ())

(setf (get aquacore::SetAutopilotParams :md5sum-) "e2c9c4a808bfa8ef83980bb0222137bf")
(setf (get aquacore::SetAutopilotParams :datatype-) "aquacore/SetAutopilotParams")
(setf (get aquacore::SetAutopilotParams :request) aquacore::SetAutopilotParamsRequest)
(setf (get aquacore::SetAutopilotParams :response) aquacore::SetAutopilotParamsResponse)

(defmethod aquacore::SetAutopilotParamsRequest
  (:response () (instance aquacore::SetAutopilotParamsResponse :init)))

(setf (get aquacore::SetAutopilotParamsRequest :md5sum-) "e2c9c4a808bfa8ef83980bb0222137bf")
(setf (get aquacore::SetAutopilotParamsRequest :datatype-) "aquacore/SetAutopilotParamsRequest")
(setf (get aquacore::SetAutopilotParamsRequest :definition-)
      "float32[] values
---

")

(setf (get aquacore::SetAutopilotParamsResponse :md5sum-) "e2c9c4a808bfa8ef83980bb0222137bf")
(setf (get aquacore::SetAutopilotParamsResponse :datatype-) "aquacore/SetAutopilotParamsResponse")
(setf (get aquacore::SetAutopilotParamsResponse :definition-)
      "float32[] values
---

")



(provide :aquacore/SetAutopilotParams "e2c9c4a808bfa8ef83980bb0222137bf")


