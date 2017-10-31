# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquacore/DumpAllVarsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DumpAllVarsRequest(genpy.Message):
  _md5sum = "505dc5e366ed09a17f865d02426eb5e3"
  _type = "aquacore/DumpAllVarsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool current
"""
  __slots__ = ['current']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       current

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DumpAllVarsRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.current is None:
        self.current = False
    else:
      self.current = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.current,) = _get_struct_B().unpack(str[start:end])
      self.current = bool(self.current)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.current,) = _get_struct_B().unpack(str[start:end])
      self.current = bool(self.current)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquacore/DumpAllVarsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DumpAllVarsResponse(genpy.Message):
  _md5sum = "fde576d15cca1da7597e8c96378fef78"
  _type = "aquacore/DumpAllVarsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 foreaft
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
"""
  __slots__ = ['foreaft','leftright','yaw','roll','pitch','heave','speed','visYawCmd','visPitchCmd','visSpeedCmd','isSpeedValid','gaitID','commandWord','PitchTrim','RollTrim','YawTrim','YawGyroDrift','gaitselect','enableIntegration','visEnable','setLEDs','AutopilotSelect','AutopilotMode','update','modePause','zeroDepth','SetGyro','SetGyroValue','period','oscRatio','amplitude','iir','visYawGain','visPitchGain','visSpeedGain','actuatorOffset','GuiTargetDepth','ApTargetRollCmd','ApTargetPitchCmd','ApTargetYawCmd','GuiParam0','GuiParam1','GuiParam2','GuiParam3','GuiParam4','GuiParam5','GuiParam6','GuiParam7','GuiParam8']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','bool','int32','int32','float32','float32','float32','float32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       foreaft,leftright,yaw,roll,pitch,heave,speed,visYawCmd,visPitchCmd,visSpeedCmd,isSpeedValid,gaitID,commandWord,PitchTrim,RollTrim,YawTrim,YawGyroDrift,gaitselect,enableIntegration,visEnable,setLEDs,AutopilotSelect,AutopilotMode,update,modePause,zeroDepth,SetGyro,SetGyroValue,period,oscRatio,amplitude,iir,visYawGain,visPitchGain,visSpeedGain,actuatorOffset,GuiTargetDepth,ApTargetRollCmd,ApTargetPitchCmd,ApTargetYawCmd,GuiParam0,GuiParam1,GuiParam2,GuiParam3,GuiParam4,GuiParam5,GuiParam6,GuiParam7,GuiParam8

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DumpAllVarsResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.foreaft is None:
        self.foreaft = 0.
      if self.leftright is None:
        self.leftright = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.heave is None:
        self.heave = 0.
      if self.speed is None:
        self.speed = 0.
      if self.visYawCmd is None:
        self.visYawCmd = 0.
      if self.visPitchCmd is None:
        self.visPitchCmd = 0.
      if self.visSpeedCmd is None:
        self.visSpeedCmd = 0.
      if self.isSpeedValid is None:
        self.isSpeedValid = False
      if self.gaitID is None:
        self.gaitID = 0
      if self.commandWord is None:
        self.commandWord = 0
      if self.PitchTrim is None:
        self.PitchTrim = 0.
      if self.RollTrim is None:
        self.RollTrim = 0.
      if self.YawTrim is None:
        self.YawTrim = 0.
      if self.YawGyroDrift is None:
        self.YawGyroDrift = 0.
      if self.gaitselect is None:
        self.gaitselect = 0
      if self.enableIntegration is None:
        self.enableIntegration = 0
      if self.visEnable is None:
        self.visEnable = 0
      if self.setLEDs is None:
        self.setLEDs = 0
      if self.AutopilotSelect is None:
        self.AutopilotSelect = 0
      if self.AutopilotMode is None:
        self.AutopilotMode = 0
      if self.update is None:
        self.update = 0
      if self.modePause is None:
        self.modePause = 0
      if self.zeroDepth is None:
        self.zeroDepth = 0
      if self.SetGyro is None:
        self.SetGyro = 0
      if self.SetGyroValue is None:
        self.SetGyroValue = 0.
      if self.period is None:
        self.period = 0.
      if self.oscRatio is None:
        self.oscRatio = 0.
      if self.amplitude is None:
        self.amplitude = 0.
      if self.iir is None:
        self.iir = 0.
      if self.visYawGain is None:
        self.visYawGain = 0.
      if self.visPitchGain is None:
        self.visPitchGain = 0.
      if self.visSpeedGain is None:
        self.visSpeedGain = 0.
      if self.actuatorOffset is None:
        self.actuatorOffset = 0.
      if self.GuiTargetDepth is None:
        self.GuiTargetDepth = 0.
      if self.ApTargetRollCmd is None:
        self.ApTargetRollCmd = 0.
      if self.ApTargetPitchCmd is None:
        self.ApTargetPitchCmd = 0.
      if self.ApTargetYawCmd is None:
        self.ApTargetYawCmd = 0.
      if self.GuiParam0 is None:
        self.GuiParam0 = 0.
      if self.GuiParam1 is None:
        self.GuiParam1 = 0.
      if self.GuiParam2 is None:
        self.GuiParam2 = 0.
      if self.GuiParam3 is None:
        self.GuiParam3 = 0.
      if self.GuiParam4 is None:
        self.GuiParam4 = 0.
      if self.GuiParam5 is None:
        self.GuiParam5 = 0.
      if self.GuiParam6 is None:
        self.GuiParam6 = 0.
      if self.GuiParam7 is None:
        self.GuiParam7 = 0.
      if self.GuiParam8 is None:
        self.GuiParam8 = 0.
    else:
      self.foreaft = 0.
      self.leftright = 0.
      self.yaw = 0.
      self.roll = 0.
      self.pitch = 0.
      self.heave = 0.
      self.speed = 0.
      self.visYawCmd = 0.
      self.visPitchCmd = 0.
      self.visSpeedCmd = 0.
      self.isSpeedValid = False
      self.gaitID = 0
      self.commandWord = 0
      self.PitchTrim = 0.
      self.RollTrim = 0.
      self.YawTrim = 0.
      self.YawGyroDrift = 0.
      self.gaitselect = 0
      self.enableIntegration = 0
      self.visEnable = 0
      self.setLEDs = 0
      self.AutopilotSelect = 0
      self.AutopilotMode = 0
      self.update = 0
      self.modePause = 0
      self.zeroDepth = 0
      self.SetGyro = 0
      self.SetGyroValue = 0.
      self.period = 0.
      self.oscRatio = 0.
      self.amplitude = 0.
      self.iir = 0.
      self.visYawGain = 0.
      self.visPitchGain = 0.
      self.visSpeedGain = 0.
      self.actuatorOffset = 0.
      self.GuiTargetDepth = 0.
      self.ApTargetRollCmd = 0.
      self.ApTargetPitchCmd = 0.
      self.ApTargetYawCmd = 0.
      self.GuiParam0 = 0.
      self.GuiParam1 = 0.
      self.GuiParam2 = 0.
      self.GuiParam3 = 0.
      self.GuiParam4 = 0.
      self.GuiParam5 = 0.
      self.GuiParam6 = 0.
      self.GuiParam7 = 0.
      self.GuiParam8 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_10fB2i4f10i22f().pack(_x.foreaft, _x.leftright, _x.yaw, _x.roll, _x.pitch, _x.heave, _x.speed, _x.visYawCmd, _x.visPitchCmd, _x.visSpeedCmd, _x.isSpeedValid, _x.gaitID, _x.commandWord, _x.PitchTrim, _x.RollTrim, _x.YawTrim, _x.YawGyroDrift, _x.gaitselect, _x.enableIntegration, _x.visEnable, _x.setLEDs, _x.AutopilotSelect, _x.AutopilotMode, _x.update, _x.modePause, _x.zeroDepth, _x.SetGyro, _x.SetGyroValue, _x.period, _x.oscRatio, _x.amplitude, _x.iir, _x.visYawGain, _x.visPitchGain, _x.visSpeedGain, _x.actuatorOffset, _x.GuiTargetDepth, _x.ApTargetRollCmd, _x.ApTargetPitchCmd, _x.ApTargetYawCmd, _x.GuiParam0, _x.GuiParam1, _x.GuiParam2, _x.GuiParam3, _x.GuiParam4, _x.GuiParam5, _x.GuiParam6, _x.GuiParam7, _x.GuiParam8))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 193
      (_x.foreaft, _x.leftright, _x.yaw, _x.roll, _x.pitch, _x.heave, _x.speed, _x.visYawCmd, _x.visPitchCmd, _x.visSpeedCmd, _x.isSpeedValid, _x.gaitID, _x.commandWord, _x.PitchTrim, _x.RollTrim, _x.YawTrim, _x.YawGyroDrift, _x.gaitselect, _x.enableIntegration, _x.visEnable, _x.setLEDs, _x.AutopilotSelect, _x.AutopilotMode, _x.update, _x.modePause, _x.zeroDepth, _x.SetGyro, _x.SetGyroValue, _x.period, _x.oscRatio, _x.amplitude, _x.iir, _x.visYawGain, _x.visPitchGain, _x.visSpeedGain, _x.actuatorOffset, _x.GuiTargetDepth, _x.ApTargetRollCmd, _x.ApTargetPitchCmd, _x.ApTargetYawCmd, _x.GuiParam0, _x.GuiParam1, _x.GuiParam2, _x.GuiParam3, _x.GuiParam4, _x.GuiParam5, _x.GuiParam6, _x.GuiParam7, _x.GuiParam8,) = _get_struct_10fB2i4f10i22f().unpack(str[start:end])
      self.isSpeedValid = bool(self.isSpeedValid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_10fB2i4f10i22f().pack(_x.foreaft, _x.leftright, _x.yaw, _x.roll, _x.pitch, _x.heave, _x.speed, _x.visYawCmd, _x.visPitchCmd, _x.visSpeedCmd, _x.isSpeedValid, _x.gaitID, _x.commandWord, _x.PitchTrim, _x.RollTrim, _x.YawTrim, _x.YawGyroDrift, _x.gaitselect, _x.enableIntegration, _x.visEnable, _x.setLEDs, _x.AutopilotSelect, _x.AutopilotMode, _x.update, _x.modePause, _x.zeroDepth, _x.SetGyro, _x.SetGyroValue, _x.period, _x.oscRatio, _x.amplitude, _x.iir, _x.visYawGain, _x.visPitchGain, _x.visSpeedGain, _x.actuatorOffset, _x.GuiTargetDepth, _x.ApTargetRollCmd, _x.ApTargetPitchCmd, _x.ApTargetYawCmd, _x.GuiParam0, _x.GuiParam1, _x.GuiParam2, _x.GuiParam3, _x.GuiParam4, _x.GuiParam5, _x.GuiParam6, _x.GuiParam7, _x.GuiParam8))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 193
      (_x.foreaft, _x.leftright, _x.yaw, _x.roll, _x.pitch, _x.heave, _x.speed, _x.visYawCmd, _x.visPitchCmd, _x.visSpeedCmd, _x.isSpeedValid, _x.gaitID, _x.commandWord, _x.PitchTrim, _x.RollTrim, _x.YawTrim, _x.YawGyroDrift, _x.gaitselect, _x.enableIntegration, _x.visEnable, _x.setLEDs, _x.AutopilotSelect, _x.AutopilotMode, _x.update, _x.modePause, _x.zeroDepth, _x.SetGyro, _x.SetGyroValue, _x.period, _x.oscRatio, _x.amplitude, _x.iir, _x.visYawGain, _x.visPitchGain, _x.visSpeedGain, _x.actuatorOffset, _x.GuiTargetDepth, _x.ApTargetRollCmd, _x.ApTargetPitchCmd, _x.ApTargetYawCmd, _x.GuiParam0, _x.GuiParam1, _x.GuiParam2, _x.GuiParam3, _x.GuiParam4, _x.GuiParam5, _x.GuiParam6, _x.GuiParam7, _x.GuiParam8,) = _get_struct_10fB2i4f10i22f().unpack(str[start:end])
      self.isSpeedValid = bool(self.isSpeedValid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10fB2i4f10i22f = None
def _get_struct_10fB2i4f10i22f():
    global _struct_10fB2i4f10i22f
    if _struct_10fB2i4f10i22f is None:
        _struct_10fB2i4f10i22f = struct.Struct("<10fB2i4f10i22f")
    return _struct_10fB2i4f10i22f
class DumpAllVars(object):
  _type          = 'aquacore/DumpAllVars'
  _md5sum = '0a763daf42d6252113b71c689c9e864f'
  _request_class  = DumpAllVarsRequest
  _response_class = DumpAllVarsResponse
