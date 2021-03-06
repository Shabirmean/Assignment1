# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquajoy/AquaTeleopJoyParams.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AquaTeleopJoyParams(genpy.Message):
  _md5sum = "706bf780e630eefcca324213e5cf91d4"
  _type = "aquajoy/AquaTeleopJoyParams"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Range: [0, 1]
float64 joy_axis_deadzone
  
# Range: [0, 1]
float64 max_speed_cmd
float64 max_heave_cmd
float64 max_roll_cmd
float64 max_pitch_cmd
float64 max_yaw_cmd
  
# Recommended range: [0, 180] (degrees)
float64 max_roll_pos
float64 max_pitch_pos
float64 max_yaw_pos

# Recommended range: [-2, 1] (m)
float64 min_depth

# Recommended range: [0, 100] (m)
float64 max_depth

# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]
float64 default_fixed_depth
  
# Recommended range: [0, 180] (deg/s)
float64 max_roll_vel
float64 max_pitch_vel
float64 max_yaw_vel
  
# Recommended range: [0, 1] (m/s)
float64 max_depth_vel
"""
  __slots__ = ['joy_axis_deadzone','max_speed_cmd','max_heave_cmd','max_roll_cmd','max_pitch_cmd','max_yaw_cmd','max_roll_pos','max_pitch_pos','max_yaw_pos','min_depth','max_depth','default_fixed_depth','max_roll_vel','max_pitch_vel','max_yaw_vel','max_depth_vel']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joy_axis_deadzone,max_speed_cmd,max_heave_cmd,max_roll_cmd,max_pitch_cmd,max_yaw_cmd,max_roll_pos,max_pitch_pos,max_yaw_pos,min_depth,max_depth,default_fixed_depth,max_roll_vel,max_pitch_vel,max_yaw_vel,max_depth_vel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AquaTeleopJoyParams, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.joy_axis_deadzone is None:
        self.joy_axis_deadzone = 0.
      if self.max_speed_cmd is None:
        self.max_speed_cmd = 0.
      if self.max_heave_cmd is None:
        self.max_heave_cmd = 0.
      if self.max_roll_cmd is None:
        self.max_roll_cmd = 0.
      if self.max_pitch_cmd is None:
        self.max_pitch_cmd = 0.
      if self.max_yaw_cmd is None:
        self.max_yaw_cmd = 0.
      if self.max_roll_pos is None:
        self.max_roll_pos = 0.
      if self.max_pitch_pos is None:
        self.max_pitch_pos = 0.
      if self.max_yaw_pos is None:
        self.max_yaw_pos = 0.
      if self.min_depth is None:
        self.min_depth = 0.
      if self.max_depth is None:
        self.max_depth = 0.
      if self.default_fixed_depth is None:
        self.default_fixed_depth = 0.
      if self.max_roll_vel is None:
        self.max_roll_vel = 0.
      if self.max_pitch_vel is None:
        self.max_pitch_vel = 0.
      if self.max_yaw_vel is None:
        self.max_yaw_vel = 0.
      if self.max_depth_vel is None:
        self.max_depth_vel = 0.
    else:
      self.joy_axis_deadzone = 0.
      self.max_speed_cmd = 0.
      self.max_heave_cmd = 0.
      self.max_roll_cmd = 0.
      self.max_pitch_cmd = 0.
      self.max_yaw_cmd = 0.
      self.max_roll_pos = 0.
      self.max_pitch_pos = 0.
      self.max_yaw_pos = 0.
      self.min_depth = 0.
      self.max_depth = 0.
      self.default_fixed_depth = 0.
      self.max_roll_vel = 0.
      self.max_pitch_vel = 0.
      self.max_yaw_vel = 0.
      self.max_depth_vel = 0.

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
      buff.write(_get_struct_16d().pack(_x.joy_axis_deadzone, _x.max_speed_cmd, _x.max_heave_cmd, _x.max_roll_cmd, _x.max_pitch_cmd, _x.max_yaw_cmd, _x.max_roll_pos, _x.max_pitch_pos, _x.max_yaw_pos, _x.min_depth, _x.max_depth, _x.default_fixed_depth, _x.max_roll_vel, _x.max_pitch_vel, _x.max_yaw_vel, _x.max_depth_vel))
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
      end += 128
      (_x.joy_axis_deadzone, _x.max_speed_cmd, _x.max_heave_cmd, _x.max_roll_cmd, _x.max_pitch_cmd, _x.max_yaw_cmd, _x.max_roll_pos, _x.max_pitch_pos, _x.max_yaw_pos, _x.min_depth, _x.max_depth, _x.default_fixed_depth, _x.max_roll_vel, _x.max_pitch_vel, _x.max_yaw_vel, _x.max_depth_vel,) = _get_struct_16d().unpack(str[start:end])
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
      buff.write(_get_struct_16d().pack(_x.joy_axis_deadzone, _x.max_speed_cmd, _x.max_heave_cmd, _x.max_roll_cmd, _x.max_pitch_cmd, _x.max_yaw_cmd, _x.max_roll_pos, _x.max_pitch_pos, _x.max_yaw_pos, _x.min_depth, _x.max_depth, _x.default_fixed_depth, _x.max_roll_vel, _x.max_pitch_vel, _x.max_yaw_vel, _x.max_depth_vel))
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
      end += 128
      (_x.joy_axis_deadzone, _x.max_speed_cmd, _x.max_heave_cmd, _x.max_roll_cmd, _x.max_pitch_cmd, _x.max_yaw_cmd, _x.max_roll_pos, _x.max_pitch_pos, _x.max_yaw_pos, _x.min_depth, _x.max_depth, _x.default_fixed_depth, _x.max_roll_vel, _x.max_pitch_vel, _x.max_yaw_vel, _x.max_depth_vel,) = _get_struct_16d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16d = None
def _get_struct_16d():
    global _struct_16d
    if _struct_16d is None:
        _struct_16d = struct.Struct("<16d")
    return _struct_16d
