;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GotoGoal)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GotoGoal (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GOTOGOAL")
  (make-package "AQUACORE::GOTOGOAL"))

(in-package "ROS")
;;//! \htmlinclude GotoGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass aquacore::GotoGoal
  :super ros::object
  :slots (_target_waypoint _start_towards_last_bearing ))

(defmethod aquacore::GotoGoal
  (:init
   (&key
    ((:target_waypoint __target_waypoint) (instance geometry_msgs::Pose :init))
    ((:start_towards_last_bearing __start_towards_last_bearing) nil)
    )
   (send-super :init)
   (setq _target_waypoint __target_waypoint)
   (setq _start_towards_last_bearing __start_towards_last_bearing)
   self)
  (:target_waypoint
   (&rest __target_waypoint)
   (if (keywordp (car __target_waypoint))
       (send* _target_waypoint __target_waypoint)
     (progn
       (if __target_waypoint (setq _target_waypoint (car __target_waypoint)))
       _target_waypoint)))
  (:start_towards_last_bearing
   (&optional __start_towards_last_bearing)
   (if __start_towards_last_bearing (setq _start_towards_last_bearing __start_towards_last_bearing)) _start_towards_last_bearing)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _target_waypoint
    (send _target_waypoint :serialization-length)
    ;; bool _start_towards_last_bearing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _target_waypoint
       (send _target_waypoint :serialize s)
     ;; bool _start_towards_last_bearing
       (if _start_towards_last_bearing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _target_waypoint
     (send _target_waypoint :deserialize buf ptr-) (incf ptr- (send _target_waypoint :serialization-length))
   ;; bool _start_towards_last_bearing
     (setq _start_towards_last_bearing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get aquacore::GotoGoal :md5sum-) "5fbff635c879e970e24112664f7e3eb1")
(setf (get aquacore::GotoGoal :datatype-) "aquacore/GotoGoal")
(setf (get aquacore::GotoGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Desired goal

# (x,y) denotes latitude and longitude respectively (in degrees)
# z denotes depth, > 0 above the water, 0 on the surface, < 0 underwater (in meters)
# orientation is currently not handled 
geometry_msgs/Pose target_waypoint

# True if we want to avoid a random step to initialize the global heading of the robot 
# and instead use the last known heading from the previous goal. 
# This is useful when we have a chain of goals to reach, one after the other, because
# it avoids ugly turns in the beginning of the trajectory towards the next goal..
bool   start_towards_last_bearing 

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :aquacore/GotoGoal "5fbff635c879e970e24112664f7e3eb1")


