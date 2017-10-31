;; Auto-generated. Do not edit!


(when (boundp 'aquacore::SetAutopilotMode)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'SetAutopilotMode (find-package "AQUACORE")))
(unless (find-package "AQUACORE::SETAUTOPILOTMODE")
  (make-package "AQUACORE::SETAUTOPILOTMODE"))
(unless (find-package "AQUACORE::SETAUTOPILOTMODEREQUEST")
  (make-package "AQUACORE::SETAUTOPILOTMODEREQUEST"))
(unless (find-package "AQUACORE::SETAUTOPILOTMODERESPONSE")
  (make-package "AQUACORE::SETAUTOPILOTMODERESPONSE"))

(in-package "ROS")





(defclass aquacore::SetAutopilotModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod aquacore::SetAutopilotModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::SetAutopilotModeResponse
  :super ros::object
  :slots (_response ))

(defmethod aquacore::SetAutopilotModeResponse
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

(defclass aquacore::SetAutopilotMode
  :super ros::object
  :slots ())

(setf (get aquacore::SetAutopilotMode :md5sum-) "0b08a36ed67e50c96239bec8f215b27f")
(setf (get aquacore::SetAutopilotMode :datatype-) "aquacore/SetAutopilotMode")
(setf (get aquacore::SetAutopilotMode :request) aquacore::SetAutopilotModeRequest)
(setf (get aquacore::SetAutopilotMode :response) aquacore::SetAutopilotModeResponse)

(defmethod aquacore::SetAutopilotModeRequest
  (:response () (instance aquacore::SetAutopilotModeResponse :init)))

(setf (get aquacore::SetAutopilotModeRequest :md5sum-) "0b08a36ed67e50c96239bec8f215b27f")
(setf (get aquacore::SetAutopilotModeRequest :datatype-) "aquacore/SetAutopilotModeRequest")
(setf (get aquacore::SetAutopilotModeRequest :definition-)
      "
int32 mode
---
bool response

")

(setf (get aquacore::SetAutopilotModeResponse :md5sum-) "0b08a36ed67e50c96239bec8f215b27f")
(setf (get aquacore::SetAutopilotModeResponse :datatype-) "aquacore/SetAutopilotModeResponse")
(setf (get aquacore::SetAutopilotModeResponse :definition-)
      "
int32 mode
---
bool response

")



(provide :aquacore/SetAutopilotMode "0b08a36ed67e50c96239bec8f215b27f")


