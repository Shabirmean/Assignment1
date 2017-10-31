;; Auto-generated. Do not edit!


(when (boundp 'aquacore::StepSimulation)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'StepSimulation (find-package "AQUACORE")))
(unless (find-package "AQUACORE::STEPSIMULATION")
  (make-package "AQUACORE::STEPSIMULATION"))
(unless (find-package "AQUACORE::STEPSIMULATIONREQUEST")
  (make-package "AQUACORE::STEPSIMULATIONREQUEST"))
(unless (find-package "AQUACORE::STEPSIMULATIONRESPONSE")
  (make-package "AQUACORE::STEPSIMULATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass aquacore::StepSimulationRequest
  :super ros::object
  :slots (_duration ))

(defmethod aquacore::StepSimulationRequest
  (:init
   (&key
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _duration (float __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass aquacore::StepSimulationResponse
  :super ros::object
  :slots (_timestamp _frequencies _amplitudes _leg_offsets _phase_offsets _joint_angles _imu_data _integrated_velocity ))

(defmethod aquacore::StepSimulationResponse
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:frequencies __frequencies) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:amplitudes __amplitudes) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:leg_offsets __leg_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:phase_offsets __phase_offsets) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:joint_angles __joint_angles) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:imu_data __imu_data) (instance sensor_msgs::Imu :init))
    ((:integrated_velocity __integrated_velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _frequencies __frequencies)
   (setq _amplitudes __amplitudes)
   (setq _leg_offsets __leg_offsets)
   (setq _phase_offsets __phase_offsets)
   (setq _joint_angles __joint_angles)
   (setq _imu_data __imu_data)
   (setq _integrated_velocity __integrated_velocity)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:frequencies
   (&optional __frequencies)
   (if __frequencies (setq _frequencies __frequencies)) _frequencies)
  (:amplitudes
   (&optional __amplitudes)
   (if __amplitudes (setq _amplitudes __amplitudes)) _amplitudes)
  (:leg_offsets
   (&optional __leg_offsets)
   (if __leg_offsets (setq _leg_offsets __leg_offsets)) _leg_offsets)
  (:phase_offsets
   (&optional __phase_offsets)
   (if __phase_offsets (setq _phase_offsets __phase_offsets)) _phase_offsets)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:imu_data
   (&rest __imu_data)
   (if (keywordp (car __imu_data))
       (send* _imu_data __imu_data)
     (progn
       (if __imu_data (setq _imu_data (car __imu_data)))
       _imu_data)))
  (:integrated_velocity
   (&optional __integrated_velocity)
   (if __integrated_velocity (setq _integrated_velocity __integrated_velocity)) _integrated_velocity)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; float64[6] _frequencies
    (* 8    6)
    ;; float64[6] _amplitudes
    (* 8    6)
    ;; float64[6] _leg_offsets
    (* 8    6)
    ;; float64[6] _phase_offsets
    (* 8    6)
    ;; float64[6] _joint_angles
    (* 8    6)
    ;; sensor_msgs/Imu _imu_data
    (send _imu_data :serialization-length)
    ;; float64[3] _integrated_velocity
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float64[6] _frequencies
     (dotimes (i 6)
       (sys::poke (elt _frequencies i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _amplitudes
     (dotimes (i 6)
       (sys::poke (elt _amplitudes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _leg_offsets
     (dotimes (i 6)
       (sys::poke (elt _leg_offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _phase_offsets
     (dotimes (i 6)
       (sys::poke (elt _phase_offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _joint_angles
     (dotimes (i 6)
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; sensor_msgs/Imu _imu_data
       (send _imu_data :serialize s)
     ;; float64[3] _integrated_velocity
     (dotimes (i 3)
       (sys::poke (elt _integrated_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[6] _frequencies
   (dotimes (i (length _frequencies))
     (setf (elt _frequencies i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _amplitudes
   (dotimes (i (length _amplitudes))
     (setf (elt _amplitudes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _leg_offsets
   (dotimes (i (length _leg_offsets))
     (setf (elt _leg_offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _phase_offsets
   (dotimes (i (length _phase_offsets))
     (setf (elt _phase_offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _joint_angles
   (dotimes (i (length _joint_angles))
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; sensor_msgs/Imu _imu_data
     (send _imu_data :deserialize buf ptr-) (incf ptr- (send _imu_data :serialization-length))
   ;; float64[3] _integrated_velocity
   (dotimes (i (length _integrated_velocity))
     (setf (elt _integrated_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass aquacore::StepSimulation
  :super ros::object
  :slots ())

(setf (get aquacore::StepSimulation :md5sum-) "b3f60a70b50fa6577110da716cb22455")
(setf (get aquacore::StepSimulation :datatype-) "aquacore/StepSimulation")
(setf (get aquacore::StepSimulation :request) aquacore::StepSimulationRequest)
(setf (get aquacore::StepSimulation :response) aquacore::StepSimulationResponse)

(defmethod aquacore::StepSimulationRequest
  (:response () (instance aquacore::StepSimulationResponse :init)))

(setf (get aquacore::StepSimulationRequest :md5sum-) "b3f60a70b50fa6577110da716cb22455")
(setf (get aquacore::StepSimulationRequest :datatype-) "aquacore/StepSimulationRequest")
(setf (get aquacore::StepSimulationRequest :definition-)
      "float64 duration
---
time timestamp
float64[6] frequencies
float64[6] amplitudes
float64[6] leg_offsets
float64[6] phase_offsets
float64[6] joint_angles
sensor_msgs/Imu imu_data
float64[3] integrated_velocity


================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get aquacore::StepSimulationResponse :md5sum-) "b3f60a70b50fa6577110da716cb22455")
(setf (get aquacore::StepSimulationResponse :datatype-) "aquacore/StepSimulationResponse")
(setf (get aquacore::StepSimulationResponse :definition-)
      "float64 duration
---
time timestamp
float64[6] frequencies
float64[6] amplitudes
float64[6] leg_offsets
float64[6] phase_offsets
float64[6] joint_angles
sensor_msgs/Imu imu_data
float64[3] integrated_velocity


================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :aquacore/StepSimulation "b3f60a70b50fa6577110da716cb22455")


