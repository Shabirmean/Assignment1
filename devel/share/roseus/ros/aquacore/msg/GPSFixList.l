;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GPSFixList)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GPSFixList (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GPSFIXLIST")
  (make-package "AQUACORE::GPSFIXLIST"))

(in-package "ROS")
;;//! \htmlinclude GPSFixList.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass aquacore::GPSFixList
  :super ros::object
  :slots (_fixList ))

(defmethod aquacore::GPSFixList
  (:init
   (&key
    ((:fixList __fixList) (let (r) (dotimes (i 0) (push (instance sensor_msgs::NavSatFix :init) r)) r))
    )
   (send-super :init)
   (setq _fixList __fixList)
   self)
  (:fixList
   (&rest __fixList)
   (if (keywordp (car __fixList))
       (send* _fixList __fixList)
     (progn
       (if __fixList (setq _fixList (car __fixList)))
       _fixList)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/NavSatFix[] _fixList
    (apply #'+ (send-all _fixList :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/NavSatFix[] _fixList
     (write-long (length _fixList) s)
     (dolist (elem _fixList)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/NavSatFix[] _fixList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fixList (let (r) (dotimes (i n) (push (instance sensor_msgs::NavSatFix :init) r)) r))
     (dolist (elem- _fixList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get aquacore::GPSFixList :md5sum-) "9b7c260d015d47b2d1fb72deb079fdb5")
(setf (get aquacore::GPSFixList :datatype-) "aquacore/GPSFixList")
(setf (get aquacore::GPSFixList :definition-)
      "sensor_msgs/NavSatFix[] fixList

================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

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
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :aquacore/GPSFixList "9b7c260d015d47b2d1fb72deb079fdb5")


