;; Auto-generated. Do not edit!


(when (boundp 'aqua_gazebo::HydrodynamicsParams)
  (if (not (find-package "AQUA_GAZEBO"))
    (make-package "AQUA_GAZEBO"))
  (shadow 'HydrodynamicsParams (find-package "AQUA_GAZEBO")))
(unless (find-package "AQUA_GAZEBO::HYDRODYNAMICSPARAMS")
  (make-package "AQUA_GAZEBO::HYDRODYNAMICSPARAMS"))

(in-package "ROS")
;;//! \htmlinclude HydrodynamicsParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aqua_gazebo::HydrodynamicsParams
  :super ros::object
  :slots (_header _name _wobble _drag_scaling _density _viscosity _mass _volume _planar _K _D _I _com _cob ))

(defmethod aqua_gazebo::HydrodynamicsParams
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:wobble __wobble) 0.0)
    ((:drag_scaling __drag_scaling) 0.0)
    ((:density __density) 0.0)
    ((:viscosity __viscosity) 0.0)
    ((:mass __mass) 0.0)
    ((:volume __volume) 0.0)
    ((:planar __planar) 0.0)
    ((:K __K) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:D __D) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:I __I) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:com __com) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cob __cob) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _wobble (float __wobble))
   (setq _drag_scaling (float __drag_scaling))
   (setq _density (float __density))
   (setq _viscosity (float __viscosity))
   (setq _mass (float __mass))
   (setq _volume (float __volume))
   (setq _planar (float __planar))
   (setq _K __K)
   (setq _D __D)
   (setq _I __I)
   (setq _com __com)
   (setq _cob __cob)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:wobble
   (&optional __wobble)
   (if __wobble (setq _wobble __wobble)) _wobble)
  (:drag_scaling
   (&optional __drag_scaling)
   (if __drag_scaling (setq _drag_scaling __drag_scaling)) _drag_scaling)
  (:density
   (&optional __density)
   (if __density (setq _density __density)) _density)
  (:viscosity
   (&optional __viscosity)
   (if __viscosity (setq _viscosity __viscosity)) _viscosity)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:planar
   (&optional __planar)
   (if __planar (setq _planar __planar)) _planar)
  (:K
   (&optional __K)
   (if __K (setq _K __K)) _K)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:I
   (&optional __I)
   (if __I (setq _I __I)) _I)
  (:com
   (&optional __com)
   (if __com (setq _com __com)) _com)
  (:cob
   (&optional __cob)
   (if __cob (setq _cob __cob)) _cob)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; float64 _wobble
    8
    ;; float64 _drag_scaling
    8
    ;; float64 _density
    8
    ;; float64 _viscosity
    8
    ;; float64 _mass
    8
    ;; float64 _volume
    8
    ;; float64 _planar
    8
    ;; float64[] _K
    (* 8    (length _K)) 4
    ;; float64[] _D
    (* 8    (length _D)) 4
    ;; float64[] _I
    (* 8    (length _I)) 4
    ;; float64[] _com
    (* 8    (length _com)) 4
    ;; float64[] _cob
    (* 8    (length _cob)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _wobble
       (sys::poke _wobble (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _drag_scaling
       (sys::poke _drag_scaling (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _density
       (sys::poke _density (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _viscosity
       (sys::poke _viscosity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _volume
       (sys::poke _volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _planar
       (sys::poke _planar (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _K
     (write-long (length _K) s)
     (dotimes (i (length _K))
       (sys::poke (elt _K i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _D
     (write-long (length _D) s)
     (dotimes (i (length _D))
       (sys::poke (elt _D i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _I
     (write-long (length _I) s)
     (dotimes (i (length _I))
       (sys::poke (elt _I i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _com
     (write-long (length _com) s)
     (dotimes (i (length _com))
       (sys::poke (elt _com i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cob
     (write-long (length _cob) s)
     (dotimes (i (length _cob))
       (sys::poke (elt _cob i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _wobble
     (setq _wobble (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _drag_scaling
     (setq _drag_scaling (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _density
     (setq _density (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _viscosity
     (setq _viscosity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _volume
     (setq _volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _planar
     (setq _planar (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _K
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _K i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _I
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _I (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _I i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _com
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _com (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _com i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cob
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cob (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cob i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get aqua_gazebo::HydrodynamicsParams :md5sum-) "bd4bee8c863bd8ba3beda4555fcfa851")
(setf (get aqua_gazebo::HydrodynamicsParams :datatype-) "aqua_gazebo/HydrodynamicsParams")
(setf (get aqua_gazebo::HydrodynamicsParams :definition-)
      "std_msgs/Header header
string name
float64 wobble
float64 drag_scaling
float64 density
float64 viscosity
float64 mass
float64 volume
float64 planar
float64[] K
float64[] D
float64[] I
float64[] com
float64[] cob


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :aqua_gazebo/HydrodynamicsParams "bd4bee8c863bd8ba3beda4555fcfa851")


