# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquajoy/AquaTeleopJoyState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import aquacore.msg

class AquaTeleopJoyState(genpy.Message):
  _md5sum = "1ae4c9d6b55f827b7d46912c0ba341f6"
  _type = "aquajoy/AquaTeleopJoyState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 ctrl_mode
int8 CTRL_MODE_RAW = 0
int8 CTRL_MODE_GLOBAL_RP_POS = 1
int8 CTRL_MODE_GLOBAL_RP_POS_D = 2
int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3
int8 CTRL_MODE_FLATSWIM_D = 4

bool modifier

aquacore/Command raw_cmd

# NOTE: all angle units are in degrees

float64 roll_pos
float64 pitch_pos
float64 yaw_pos

float64 roll_vel
float64 pitch_vel
float64 yaw_vel

float64 depth_pos

float64 depth_vel

================================================================================
MSG: aquacore/Command
# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a
# non-linear way; see Giguere et al. IROS 2006 "Characterizing..." for similar pseudo-rate mapping plots
# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.

# All saturations are performed by RoboDevel

float32 speed # unitless pseudo-rate, [0, 1]
float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right
float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down
float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right
float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up

"""
  # Pseudo-constants
  CTRL_MODE_RAW = 0
  CTRL_MODE_GLOBAL_RP_POS = 1
  CTRL_MODE_GLOBAL_RP_POS_D = 2
  CTRL_MODE_GLOBAL_RP_VEL_D = 3
  CTRL_MODE_FLATSWIM_D = 4

  __slots__ = ['ctrl_mode','modifier','raw_cmd','roll_pos','pitch_pos','yaw_pos','roll_vel','pitch_vel','yaw_vel','depth_pos','depth_vel']
  _slot_types = ['int8','bool','aquacore/Command','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ctrl_mode,modifier,raw_cmd,roll_pos,pitch_pos,yaw_pos,roll_vel,pitch_vel,yaw_vel,depth_pos,depth_vel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AquaTeleopJoyState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ctrl_mode is None:
        self.ctrl_mode = 0
      if self.modifier is None:
        self.modifier = False
      if self.raw_cmd is None:
        self.raw_cmd = aquacore.msg.Command()
      if self.roll_pos is None:
        self.roll_pos = 0.
      if self.pitch_pos is None:
        self.pitch_pos = 0.
      if self.yaw_pos is None:
        self.yaw_pos = 0.
      if self.roll_vel is None:
        self.roll_vel = 0.
      if self.pitch_vel is None:
        self.pitch_vel = 0.
      if self.yaw_vel is None:
        self.yaw_vel = 0.
      if self.depth_pos is None:
        self.depth_pos = 0.
      if self.depth_vel is None:
        self.depth_vel = 0.
    else:
      self.ctrl_mode = 0
      self.modifier = False
      self.raw_cmd = aquacore.msg.Command()
      self.roll_pos = 0.
      self.pitch_pos = 0.
      self.yaw_pos = 0.
      self.roll_vel = 0.
      self.pitch_vel = 0.
      self.yaw_vel = 0.
      self.depth_pos = 0.
      self.depth_vel = 0.

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
      buff.write(_get_struct_bB5f8d().pack(_x.ctrl_mode, _x.modifier, _x.raw_cmd.speed, _x.raw_cmd.yaw, _x.raw_cmd.pitch, _x.raw_cmd.roll, _x.raw_cmd.heave, _x.roll_pos, _x.pitch_pos, _x.yaw_pos, _x.roll_vel, _x.pitch_vel, _x.yaw_vel, _x.depth_pos, _x.depth_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.raw_cmd is None:
        self.raw_cmd = aquacore.msg.Command()
      end = 0
      _x = self
      start = end
      end += 86
      (_x.ctrl_mode, _x.modifier, _x.raw_cmd.speed, _x.raw_cmd.yaw, _x.raw_cmd.pitch, _x.raw_cmd.roll, _x.raw_cmd.heave, _x.roll_pos, _x.pitch_pos, _x.yaw_pos, _x.roll_vel, _x.pitch_vel, _x.yaw_vel, _x.depth_pos, _x.depth_vel,) = _get_struct_bB5f8d().unpack(str[start:end])
      self.modifier = bool(self.modifier)
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
      buff.write(_get_struct_bB5f8d().pack(_x.ctrl_mode, _x.modifier, _x.raw_cmd.speed, _x.raw_cmd.yaw, _x.raw_cmd.pitch, _x.raw_cmd.roll, _x.raw_cmd.heave, _x.roll_pos, _x.pitch_pos, _x.yaw_pos, _x.roll_vel, _x.pitch_vel, _x.yaw_vel, _x.depth_pos, _x.depth_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.raw_cmd is None:
        self.raw_cmd = aquacore.msg.Command()
      end = 0
      _x = self
      start = end
      end += 86
      (_x.ctrl_mode, _x.modifier, _x.raw_cmd.speed, _x.raw_cmd.yaw, _x.raw_cmd.pitch, _x.raw_cmd.roll, _x.raw_cmd.heave, _x.roll_pos, _x.pitch_pos, _x.yaw_pos, _x.roll_vel, _x.pitch_vel, _x.yaw_vel, _x.depth_pos, _x.depth_vel,) = _get_struct_bB5f8d().unpack(str[start:end])
      self.modifier = bool(self.modifier)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_bB5f8d = None
def _get_struct_bB5f8d():
    global _struct_bB5f8d
    if _struct_bB5f8d is None:
        _struct_bB5f8d = struct.Struct("<bB5f8d")
    return _struct_bB5f8d
