;; Auto-generated. Do not edit!


(when (boundp 'aquacore::GotoAction)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'GotoAction (find-package "AQUACORE")))
(unless (find-package "AQUACORE::GOTOACTION")
  (make-package "AQUACORE::GOTOACTION"))

(in-package "ROS")
;;//! \htmlinclude GotoAction.msg.html


(defclass aquacore::GotoAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod aquacore::GotoAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance aquacore::GotoActionGoal :init))
    ((:action_result __action_result) (instance aquacore::GotoActionResult :init))
    ((:action_feedback __action_feedback) (instance aquacore::GotoActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; aquacore/GotoActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; aquacore/GotoActionResult _action_result
    (send _action_result :serialization-length)
    ;; aquacore/GotoActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; aquacore/GotoActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; aquacore/GotoActionResult _action_result
       (send _action_result :serialize s)
     ;; aquacore/GotoActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; aquacore/GotoActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; aquacore/GotoActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; aquacore/GotoActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get aquacore::GotoAction :md5sum-) "f742afa55c705f6ce959f02f5ce50477")
(setf (get aquacore::GotoAction :datatype-) "aquacore/GotoAction")
(setf (get aquacore::GotoAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

GotoActionGoal action_goal
GotoActionResult action_result
GotoActionFeedback action_feedback

================================================================================
MSG: aquacore/GotoActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
GotoGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: aquacore/GotoGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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

================================================================================
MSG: aquacore/GotoActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
GotoResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: aquacore/GotoResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Result

bool arrived_successfully


================================================================================
MSG: aquacore/GotoActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
GotoFeedback feedback

================================================================================
MSG: aquacore/GotoFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Feedback 

# Current position and orientation. 
# Semantics as above.
geometry_msgs/Pose current_waypoint


")



(provide :aquacore/GotoAction "f742afa55c705f6ce959f02f5ce50477")

