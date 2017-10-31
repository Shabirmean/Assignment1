;; Auto-generated. Do not edit!


(when (boundp 'aquacore::KeepAlive)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'KeepAlive (find-package "AQUACORE")))
(unless (find-package "AQUACORE::KEEPALIVE")
  (make-package "AQUACORE::KEEPALIVE"))

(in-package "ROS")
;;//! \htmlinclude KeepAlive.msg.html


(defclass aquacore::KeepAlive
  :super ros::object
  :slots (_keepalive ))

(defmethod aquacore::KeepAlive
  (:init
   (&key
    ((:keepalive __keepalive) nil)
    )
   (send-super :init)
   (setq _keepalive __keepalive)
   self)
  (:keepalive
   (&optional __keepalive)
   (if __keepalive (setq _keepalive __keepalive)) _keepalive)
  (:serialization-length
   ()
   (+
    ;; bool _keepalive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _keepalive
       (if _keepalive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _keepalive
     (setq _keepalive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get aquacore::KeepAlive :md5sum-) "24fb7054ad8b54e70f691c17acc4088d")
(setf (get aquacore::KeepAlive :datatype-) "aquacore/KeepAlive")
(setf (get aquacore::KeepAlive :definition-)
      "bool keepalive
")



(provide :aquacore/KeepAlive "24fb7054ad8b54e70f691c17acc4088d")


