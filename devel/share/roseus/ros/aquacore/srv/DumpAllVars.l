;; Auto-generated. Do not edit!


(when (boundp 'aquacore::DumpAllVars)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'DumpAllVars (find-package "AQUACORE")))
(unless (find-package "AQUACORE::DUMPALLVARS")
  (make-package "AQUACORE::DUMPALLVARS"))
(unless (find-package "AQUACORE::DUMPALLVARSREQUEST")
  (make-package "AQUACORE::DUMPALLVARSREQUEST"))
(unless (find-package "AQUACORE::DUMPALLVARSRESPONSE")
  (make-package "AQUACORE::DUMPALLVARSRESPONSE"))

(in-package "ROS")





(defclass aquacore::DumpAllVarsRequest
  :super ros::object
  :slots (_current ))

(defmethod aquacore::DumpAllVarsRequest
  (:init
   (&key
    ((:current __current) nil)
    )
   (send-super :init)
   (setq _current __current)
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; bool _current
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _current
       (if _current (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _current
     (setq _current (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aquacore::DumpAllVarsResponse
  :super ros::object
  :slots (_foreaft _leftright _yaw _roll _pitch _heave _speed _visYawCmd _visPitchCmd _visSpeedCmd _isSpeedValid _gaitID _commandWord _PitchTrim _RollTrim _YawTrim _YawGyroDrift _gaitselect _enableIntegration _visEnable _setLEDs _AutopilotSelect _AutopilotMode _update _modePause _zeroDepth _SetGyro _SetGyroValue _period _oscRatio _amplitude _iir _visYawGain _visPitchGain _visSpeedGain _actuatorOffset _GuiTargetDepth _ApTargetRollCmd _ApTargetPitchCmd _ApTargetYawCmd _GuiParam0 _GuiParam1 _GuiParam2 _GuiParam3 _GuiParam4 _GuiParam5 _GuiParam6 _GuiParam7 _GuiParam8 ))

(defmethod aquacore::DumpAllVarsResponse
  (:init
   (&key
    ((:foreaft __foreaft) 0.0)
    ((:leftright __leftright) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:heave __heave) 0.0)
    ((:speed __speed) 0.0)
    ((:visYawCmd __visYawCmd) 0.0)
    ((:visPitchCmd __visPitchCmd) 0.0)
    ((:visSpeedCmd __visSpeedCmd) 0.0)
    ((:isSpeedValid __isSpeedValid) nil)
    ((:gaitID __gaitID) 0)
    ((:commandWord __commandWord) 0)
    ((:PitchTrim __PitchTrim) 0.0)
    ((:RollTrim __RollTrim) 0.0)
    ((:YawTrim __YawTrim) 0.0)
    ((:YawGyroDrift __YawGyroDrift) 0.0)
    ((:gaitselect __gaitselect) 0)
    ((:enableIntegration __enableIntegration) 0)
    ((:visEnable __visEnable) 0)
    ((:setLEDs __setLEDs) 0)
    ((:AutopilotSelect __AutopilotSelect) 0)
    ((:AutopilotMode __AutopilotMode) 0)
    ((:update __update) 0)
    ((:modePause __modePause) 0)
    ((:zeroDepth __zeroDepth) 0)
    ((:SetGyro __SetGyro) 0)
    ((:SetGyroValue __SetGyroValue) 0.0)
    ((:period __period) 0.0)
    ((:oscRatio __oscRatio) 0.0)
    ((:amplitude __amplitude) 0.0)
    ((:iir __iir) 0.0)
    ((:visYawGain __visYawGain) 0.0)
    ((:visPitchGain __visPitchGain) 0.0)
    ((:visSpeedGain __visSpeedGain) 0.0)
    ((:actuatorOffset __actuatorOffset) 0.0)
    ((:GuiTargetDepth __GuiTargetDepth) 0.0)
    ((:ApTargetRollCmd __ApTargetRollCmd) 0.0)
    ((:ApTargetPitchCmd __ApTargetPitchCmd) 0.0)
    ((:ApTargetYawCmd __ApTargetYawCmd) 0.0)
    ((:GuiParam0 __GuiParam0) 0.0)
    ((:GuiParam1 __GuiParam1) 0.0)
    ((:GuiParam2 __GuiParam2) 0.0)
    ((:GuiParam3 __GuiParam3) 0.0)
    ((:GuiParam4 __GuiParam4) 0.0)
    ((:GuiParam5 __GuiParam5) 0.0)
    ((:GuiParam6 __GuiParam6) 0.0)
    ((:GuiParam7 __GuiParam7) 0.0)
    ((:GuiParam8 __GuiParam8) 0.0)
    )
   (send-super :init)
   (setq _foreaft (float __foreaft))
   (setq _leftright (float __leftright))
   (setq _yaw (float __yaw))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _heave (float __heave))
   (setq _speed (float __speed))
   (setq _visYawCmd (float __visYawCmd))
   (setq _visPitchCmd (float __visPitchCmd))
   (setq _visSpeedCmd (float __visSpeedCmd))
   (setq _isSpeedValid __isSpeedValid)
   (setq _gaitID (round __gaitID))
   (setq _commandWord (round __commandWord))
   (setq _PitchTrim (float __PitchTrim))
   (setq _RollTrim (float __RollTrim))
   (setq _YawTrim (float __YawTrim))
   (setq _YawGyroDrift (float __YawGyroDrift))
   (setq _gaitselect (round __gaitselect))
   (setq _enableIntegration (round __enableIntegration))
   (setq _visEnable (round __visEnable))
   (setq _setLEDs (round __setLEDs))
   (setq _AutopilotSelect (round __AutopilotSelect))
   (setq _AutopilotMode (round __AutopilotMode))
   (setq _update (round __update))
   (setq _modePause (round __modePause))
   (setq _zeroDepth (round __zeroDepth))
   (setq _SetGyro (round __SetGyro))
   (setq _SetGyroValue (float __SetGyroValue))
   (setq _period (float __period))
   (setq _oscRatio (float __oscRatio))
   (setq _amplitude (float __amplitude))
   (setq _iir (float __iir))
   (setq _visYawGain (float __visYawGain))
   (setq _visPitchGain (float __visPitchGain))
   (setq _visSpeedGain (float __visSpeedGain))
   (setq _actuatorOffset (float __actuatorOffset))
   (setq _GuiTargetDepth (float __GuiTargetDepth))
   (setq _ApTargetRollCmd (float __ApTargetRollCmd))
   (setq _ApTargetPitchCmd (float __ApTargetPitchCmd))
   (setq _ApTargetYawCmd (float __ApTargetYawCmd))
   (setq _GuiParam0 (float __GuiParam0))
   (setq _GuiParam1 (float __GuiParam1))
   (setq _GuiParam2 (float __GuiParam2))
   (setq _GuiParam3 (float __GuiParam3))
   (setq _GuiParam4 (float __GuiParam4))
   (setq _GuiParam5 (float __GuiParam5))
   (setq _GuiParam6 (float __GuiParam6))
   (setq _GuiParam7 (float __GuiParam7))
   (setq _GuiParam8 (float __GuiParam8))
   self)
  (:foreaft
   (&optional __foreaft)
   (if __foreaft (setq _foreaft __foreaft)) _foreaft)
  (:leftright
   (&optional __leftright)
   (if __leftright (setq _leftright __leftright)) _leftright)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:heave
   (&optional __heave)
   (if __heave (setq _heave __heave)) _heave)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:visYawCmd
   (&optional __visYawCmd)
   (if __visYawCmd (setq _visYawCmd __visYawCmd)) _visYawCmd)
  (:visPitchCmd
   (&optional __visPitchCmd)
   (if __visPitchCmd (setq _visPitchCmd __visPitchCmd)) _visPitchCmd)
  (:visSpeedCmd
   (&optional __visSpeedCmd)
   (if __visSpeedCmd (setq _visSpeedCmd __visSpeedCmd)) _visSpeedCmd)
  (:isSpeedValid
   (&optional __isSpeedValid)
   (if __isSpeedValid (setq _isSpeedValid __isSpeedValid)) _isSpeedValid)
  (:gaitID
   (&optional __gaitID)
   (if __gaitID (setq _gaitID __gaitID)) _gaitID)
  (:commandWord
   (&optional __commandWord)
   (if __commandWord (setq _commandWord __commandWord)) _commandWord)
  (:PitchTrim
   (&optional __PitchTrim)
   (if __PitchTrim (setq _PitchTrim __PitchTrim)) _PitchTrim)
  (:RollTrim
   (&optional __RollTrim)
   (if __RollTrim (setq _RollTrim __RollTrim)) _RollTrim)
  (:YawTrim
   (&optional __YawTrim)
   (if __YawTrim (setq _YawTrim __YawTrim)) _YawTrim)
  (:YawGyroDrift
   (&optional __YawGyroDrift)
   (if __YawGyroDrift (setq _YawGyroDrift __YawGyroDrift)) _YawGyroDrift)
  (:gaitselect
   (&optional __gaitselect)
   (if __gaitselect (setq _gaitselect __gaitselect)) _gaitselect)
  (:enableIntegration
   (&optional __enableIntegration)
   (if __enableIntegration (setq _enableIntegration __enableIntegration)) _enableIntegration)
  (:visEnable
   (&optional __visEnable)
   (if __visEnable (setq _visEnable __visEnable)) _visEnable)
  (:setLEDs
   (&optional __setLEDs)
   (if __setLEDs (setq _setLEDs __setLEDs)) _setLEDs)
  (:AutopilotSelect
   (&optional __AutopilotSelect)
   (if __AutopilotSelect (setq _AutopilotSelect __AutopilotSelect)) _AutopilotSelect)
  (:AutopilotMode
   (&optional __AutopilotMode)
   (if __AutopilotMode (setq _AutopilotMode __AutopilotMode)) _AutopilotMode)
  (:update
   (&optional __update)
   (if __update (setq _update __update)) _update)
  (:modePause
   (&optional __modePause)
   (if __modePause (setq _modePause __modePause)) _modePause)
  (:zeroDepth
   (&optional __zeroDepth)
   (if __zeroDepth (setq _zeroDepth __zeroDepth)) _zeroDepth)
  (:SetGyro
   (&optional __SetGyro)
   (if __SetGyro (setq _SetGyro __SetGyro)) _SetGyro)
  (:SetGyroValue
   (&optional __SetGyroValue)
   (if __SetGyroValue (setq _SetGyroValue __SetGyroValue)) _SetGyroValue)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:oscRatio
   (&optional __oscRatio)
   (if __oscRatio (setq _oscRatio __oscRatio)) _oscRatio)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:iir
   (&optional __iir)
   (if __iir (setq _iir __iir)) _iir)
  (:visYawGain
   (&optional __visYawGain)
   (if __visYawGain (setq _visYawGain __visYawGain)) _visYawGain)
  (:visPitchGain
   (&optional __visPitchGain)
   (if __visPitchGain (setq _visPitchGain __visPitchGain)) _visPitchGain)
  (:visSpeedGain
   (&optional __visSpeedGain)
   (if __visSpeedGain (setq _visSpeedGain __visSpeedGain)) _visSpeedGain)
  (:actuatorOffset
   (&optional __actuatorOffset)
   (if __actuatorOffset (setq _actuatorOffset __actuatorOffset)) _actuatorOffset)
  (:GuiTargetDepth
   (&optional __GuiTargetDepth)
   (if __GuiTargetDepth (setq _GuiTargetDepth __GuiTargetDepth)) _GuiTargetDepth)
  (:ApTargetRollCmd
   (&optional __ApTargetRollCmd)
   (if __ApTargetRollCmd (setq _ApTargetRollCmd __ApTargetRollCmd)) _ApTargetRollCmd)
  (:ApTargetPitchCmd
   (&optional __ApTargetPitchCmd)
   (if __ApTargetPitchCmd (setq _ApTargetPitchCmd __ApTargetPitchCmd)) _ApTargetPitchCmd)
  (:ApTargetYawCmd
   (&optional __ApTargetYawCmd)
   (if __ApTargetYawCmd (setq _ApTargetYawCmd __ApTargetYawCmd)) _ApTargetYawCmd)
  (:GuiParam0
   (&optional __GuiParam0)
   (if __GuiParam0 (setq _GuiParam0 __GuiParam0)) _GuiParam0)
  (:GuiParam1
   (&optional __GuiParam1)
   (if __GuiParam1 (setq _GuiParam1 __GuiParam1)) _GuiParam1)
  (:GuiParam2
   (&optional __GuiParam2)
   (if __GuiParam2 (setq _GuiParam2 __GuiParam2)) _GuiParam2)
  (:GuiParam3
   (&optional __GuiParam3)
   (if __GuiParam3 (setq _GuiParam3 __GuiParam3)) _GuiParam3)
  (:GuiParam4
   (&optional __GuiParam4)
   (if __GuiParam4 (setq _GuiParam4 __GuiParam4)) _GuiParam4)
  (:GuiParam5
   (&optional __GuiParam5)
   (if __GuiParam5 (setq _GuiParam5 __GuiParam5)) _GuiParam5)
  (:GuiParam6
   (&optional __GuiParam6)
   (if __GuiParam6 (setq _GuiParam6 __GuiParam6)) _GuiParam6)
  (:GuiParam7
   (&optional __GuiParam7)
   (if __GuiParam7 (setq _GuiParam7 __GuiParam7)) _GuiParam7)
  (:GuiParam8
   (&optional __GuiParam8)
   (if __GuiParam8 (setq _GuiParam8 __GuiParam8)) _GuiParam8)
  (:serialization-length
   ()
   (+
    ;; float32 _foreaft
    4
    ;; float32 _leftright
    4
    ;; float32 _yaw
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _heave
    4
    ;; float32 _speed
    4
    ;; float32 _visYawCmd
    4
    ;; float32 _visPitchCmd
    4
    ;; float32 _visSpeedCmd
    4
    ;; bool _isSpeedValid
    1
    ;; int32 _gaitID
    4
    ;; int32 _commandWord
    4
    ;; float32 _PitchTrim
    4
    ;; float32 _RollTrim
    4
    ;; float32 _YawTrim
    4
    ;; float32 _YawGyroDrift
    4
    ;; int32 _gaitselect
    4
    ;; int32 _enableIntegration
    4
    ;; int32 _visEnable
    4
    ;; int32 _setLEDs
    4
    ;; int32 _AutopilotSelect
    4
    ;; int32 _AutopilotMode
    4
    ;; int32 _update
    4
    ;; int32 _modePause
    4
    ;; int32 _zeroDepth
    4
    ;; int32 _SetGyro
    4
    ;; float32 _SetGyroValue
    4
    ;; float32 _period
    4
    ;; float32 _oscRatio
    4
    ;; float32 _amplitude
    4
    ;; float32 _iir
    4
    ;; float32 _visYawGain
    4
    ;; float32 _visPitchGain
    4
    ;; float32 _visSpeedGain
    4
    ;; float32 _actuatorOffset
    4
    ;; float32 _GuiTargetDepth
    4
    ;; float32 _ApTargetRollCmd
    4
    ;; float32 _ApTargetPitchCmd
    4
    ;; float32 _ApTargetYawCmd
    4
    ;; float32 _GuiParam0
    4
    ;; float32 _GuiParam1
    4
    ;; float32 _GuiParam2
    4
    ;; float32 _GuiParam3
    4
    ;; float32 _GuiParam4
    4
    ;; float32 _GuiParam5
    4
    ;; float32 _GuiParam6
    4
    ;; float32 _GuiParam7
    4
    ;; float32 _GuiParam8
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _foreaft
       (sys::poke _foreaft (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _leftright
       (sys::poke _leftright (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heave
       (sys::poke _heave (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visYawCmd
       (sys::poke _visYawCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visPitchCmd
       (sys::poke _visPitchCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visSpeedCmd
       (sys::poke _visSpeedCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isSpeedValid
       (if _isSpeedValid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gaitID
       (write-long _gaitID s)
     ;; int32 _commandWord
       (write-long _commandWord s)
     ;; float32 _PitchTrim
       (sys::poke _PitchTrim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RollTrim
       (sys::poke _RollTrim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YawTrim
       (sys::poke _YawTrim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YawGyroDrift
       (sys::poke _YawGyroDrift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _gaitselect
       (write-long _gaitselect s)
     ;; int32 _enableIntegration
       (write-long _enableIntegration s)
     ;; int32 _visEnable
       (write-long _visEnable s)
     ;; int32 _setLEDs
       (write-long _setLEDs s)
     ;; int32 _AutopilotSelect
       (write-long _AutopilotSelect s)
     ;; int32 _AutopilotMode
       (write-long _AutopilotMode s)
     ;; int32 _update
       (write-long _update s)
     ;; int32 _modePause
       (write-long _modePause s)
     ;; int32 _zeroDepth
       (write-long _zeroDepth s)
     ;; int32 _SetGyro
       (write-long _SetGyro s)
     ;; float32 _SetGyroValue
       (sys::poke _SetGyroValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _period
       (sys::poke _period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _oscRatio
       (sys::poke _oscRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _amplitude
       (sys::poke _amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _iir
       (sys::poke _iir (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visYawGain
       (sys::poke _visYawGain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visPitchGain
       (sys::poke _visPitchGain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visSpeedGain
       (sys::poke _visSpeedGain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actuatorOffset
       (sys::poke _actuatorOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiTargetDepth
       (sys::poke _GuiTargetDepth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ApTargetRollCmd
       (sys::poke _ApTargetRollCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ApTargetPitchCmd
       (sys::poke _ApTargetPitchCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ApTargetYawCmd
       (sys::poke _ApTargetYawCmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam0
       (sys::poke _GuiParam0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam1
       (sys::poke _GuiParam1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam2
       (sys::poke _GuiParam2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam3
       (sys::poke _GuiParam3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam4
       (sys::poke _GuiParam4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam5
       (sys::poke _GuiParam5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam6
       (sys::poke _GuiParam6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam7
       (sys::poke _GuiParam7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GuiParam8
       (sys::poke _GuiParam8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _foreaft
     (setq _foreaft (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _leftright
     (setq _leftright (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heave
     (setq _heave (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visYawCmd
     (setq _visYawCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visPitchCmd
     (setq _visPitchCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visSpeedCmd
     (setq _visSpeedCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isSpeedValid
     (setq _isSpeedValid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gaitID
     (setq _gaitID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _commandWord
     (setq _commandWord (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _PitchTrim
     (setq _PitchTrim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RollTrim
     (setq _RollTrim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YawTrim
     (setq _YawTrim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YawGyroDrift
     (setq _YawGyroDrift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _gaitselect
     (setq _gaitselect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enableIntegration
     (setq _enableIntegration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _visEnable
     (setq _visEnable (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _setLEDs
     (setq _setLEDs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _AutopilotSelect
     (setq _AutopilotSelect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _AutopilotMode
     (setq _AutopilotMode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _update
     (setq _update (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _modePause
     (setq _modePause (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _zeroDepth
     (setq _zeroDepth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _SetGyro
     (setq _SetGyro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _SetGyroValue
     (setq _SetGyroValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _period
     (setq _period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _oscRatio
     (setq _oscRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _amplitude
     (setq _amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _iir
     (setq _iir (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visYawGain
     (setq _visYawGain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visPitchGain
     (setq _visPitchGain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visSpeedGain
     (setq _visSpeedGain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actuatorOffset
     (setq _actuatorOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiTargetDepth
     (setq _GuiTargetDepth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ApTargetRollCmd
     (setq _ApTargetRollCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ApTargetPitchCmd
     (setq _ApTargetPitchCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ApTargetYawCmd
     (setq _ApTargetYawCmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam0
     (setq _GuiParam0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam1
     (setq _GuiParam1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam2
     (setq _GuiParam2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam3
     (setq _GuiParam3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam4
     (setq _GuiParam4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam5
     (setq _GuiParam5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam6
     (setq _GuiParam6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam7
     (setq _GuiParam7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GuiParam8
     (setq _GuiParam8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::DumpAllVars
  :super ros::object
  :slots ())

(setf (get aquacore::DumpAllVars :md5sum-) "0a763daf42d6252113b71c689c9e864f")
(setf (get aquacore::DumpAllVars :datatype-) "aquacore/DumpAllVars")
(setf (get aquacore::DumpAllVars :request) aquacore::DumpAllVarsRequest)
(setf (get aquacore::DumpAllVars :response) aquacore::DumpAllVarsResponse)

(defmethod aquacore::DumpAllVarsRequest
  (:response () (instance aquacore::DumpAllVarsResponse :init)))

(setf (get aquacore::DumpAllVarsRequest :md5sum-) "0a763daf42d6252113b71c689c9e864f")
(setf (get aquacore::DumpAllVarsRequest :datatype-) "aquacore/DumpAllVarsRequest")
(setf (get aquacore::DumpAllVarsRequest :definition-)
      "bool current
---
float32 foreaft
float32 leftright
float32 yaw
float32 roll
float32 pitch
float32 heave
float32 speed
float32 visYawCmd
float32 visPitchCmd
float32 visSpeedCmd
bool isSpeedValid
int32 gaitID
int32 commandWord
float32 PitchTrim
float32 RollTrim
float32 YawTrim
float32 YawGyroDrift
int32 gaitselect
int32 enableIntegration
int32 visEnable
int32 setLEDs
int32 AutopilotSelect
int32 AutopilotMode
int32 update
int32 modePause
int32 zeroDepth
int32 SetGyro
float32 SetGyroValue


float32 period
float32 oscRatio
float32 amplitude
float32 iir
float32 visYawGain
float32 visPitchGain
float32 visSpeedGain
float32 actuatorOffset
float32 GuiTargetDepth
float32 ApTargetRollCmd
float32 ApTargetPitchCmd
float32 ApTargetYawCmd
float32 GuiParam0
float32 GuiParam1
float32 GuiParam2
float32 GuiParam3
float32 GuiParam4
float32 GuiParam5
float32 GuiParam6
float32 GuiParam7
float32 GuiParam8
")

(setf (get aquacore::DumpAllVarsResponse :md5sum-) "0a763daf42d6252113b71c689c9e864f")
(setf (get aquacore::DumpAllVarsResponse :datatype-) "aquacore/DumpAllVarsResponse")
(setf (get aquacore::DumpAllVarsResponse :definition-)
      "bool current
---
float32 foreaft
float32 leftright
float32 yaw
float32 roll
float32 pitch
float32 heave
float32 speed
float32 visYawCmd
float32 visPitchCmd
float32 visSpeedCmd
bool isSpeedValid
int32 gaitID
int32 commandWord
float32 PitchTrim
float32 RollTrim
float32 YawTrim
float32 YawGyroDrift
int32 gaitselect
int32 enableIntegration
int32 visEnable
int32 setLEDs
int32 AutopilotSelect
int32 AutopilotMode
int32 update
int32 modePause
int32 zeroDepth
int32 SetGyro
float32 SetGyroValue


float32 period
float32 oscRatio
float32 amplitude
float32 iir
float32 visYawGain
float32 visPitchGain
float32 visSpeedGain
float32 actuatorOffset
float32 GuiTargetDepth
float32 ApTargetRollCmd
float32 ApTargetPitchCmd
float32 ApTargetYawCmd
float32 GuiParam0
float32 GuiParam1
float32 GuiParam2
float32 GuiParam3
float32 GuiParam4
float32 GuiParam5
float32 GuiParam6
float32 GuiParam7
float32 GuiParam8
")



(provide :aquacore/DumpAllVars "0a763daf42d6252113b71c689c9e864f")


