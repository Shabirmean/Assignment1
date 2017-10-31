;; Auto-generated. Do not edit!


(when (boundp 'aquacore::cuROSTityScore)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'cuROSTityScore (find-package "AQUACORE")))
(unless (find-package "AQUACORE::CUROSTITYSCORE")
  (make-package "AQUACORE::CUROSTITYSCORE"))

(in-package "ROS")
;;//! \htmlinclude cuROSTityScore.msg.html


(defclass aquacore::cuROSTityScore
  :super ros::object
  :slots (_latitude _longitude _depth _cuROSTity_score ))

(defmethod aquacore::cuROSTityScore
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:depth __depth) 0.0)
    ((:cuROSTity_score __cuROSTity_score) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _depth (float __depth))
   (setq _cuROSTity_score (float __cuROSTity_score))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:cuROSTity_score
   (&optional __cuROSTity_score)
   (if __cuROSTity_score (setq _cuROSTity_score __cuROSTity_score)) _cuROSTity_score)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _depth
    8
    ;; float64 _cuROSTity_score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cuROSTity_score
       (sys::poke _cuROSTity_score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cuROSTity_score
     (setq _cuROSTity_score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get aquacore::cuROSTityScore :md5sum-) "56f5e575876926277093a9d563a2480f")
(setf (get aquacore::cuROSTityScore :datatype-) "aquacore/cuROSTityScore")
(setf (get aquacore::cuROSTityScore :definition-)
      "float64 latitude
float64 longitude
float64 depth
float64 cuROSTity_score


")



(provide :aquacore/cuROSTityScore "56f5e575876926277093a9d563a2480f")


