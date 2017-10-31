# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquajoy/UpdateAquaTeleopJoyParamsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import aquajoy.msg

class UpdateAquaTeleopJoyParamsRequest(genpy.Message):
  _md5sum = "1e83859aeb42bc42c7f92e0fd76391e7"
  _type = "aquajoy/UpdateAquaTeleopJoyParamsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """aquajoy/AquaTeleopJoyParams new_params

================================================================================
MSG: aquajoy/AquaTeleopJoyParams
# Range: [0, 1]
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
  __slots__ = ['new_params']
  _slot_types = ['aquajoy/AquaTeleopJoyParams']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       new_params

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UpdateAquaTeleopJoyParamsRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.new_params is None:
        self.new_params = aquajoy.msg.AquaTeleopJoyParams()
    else:
      self.new_params = aquajoy.msg.AquaTeleopJoyParams()

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
      buff.write(_get_struct_16d().pack(_x.new_params.joy_axis_deadzone, _x.new_params.max_speed_cmd, _x.new_params.max_heave_cmd, _x.new_params.max_roll_cmd, _x.new_params.max_pitch_cmd, _x.new_params.max_yaw_cmd, _x.new_params.max_roll_pos, _x.new_params.max_pitch_pos, _x.new_params.max_yaw_pos, _x.new_params.min_depth, _x.new_params.max_depth, _x.new_params.default_fixed_depth, _x.new_params.max_roll_vel, _x.new_params.max_pitch_vel, _x.new_params.max_yaw_vel, _x.new_params.max_depth_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.new_params is None:
        self.new_params = aquajoy.msg.AquaTeleopJoyParams()
      end = 0
      _x = self
      start = end
      end += 128
      (_x.new_params.joy_axis_deadzone, _x.new_params.max_speed_cmd, _x.new_params.max_heave_cmd, _x.new_params.max_roll_cmd, _x.new_params.max_pitch_cmd, _x.new_params.max_yaw_cmd, _x.new_params.max_roll_pos, _x.new_params.max_pitch_pos, _x.new_params.max_yaw_pos, _x.new_params.min_depth, _x.new_params.max_depth, _x.new_params.default_fixed_depth, _x.new_params.max_roll_vel, _x.new_params.max_pitch_vel, _x.new_params.max_yaw_vel, _x.new_params.max_depth_vel,) = _get_struct_16d().unpack(str[start:end])
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
      buff.write(_get_struct_16d().pack(_x.new_params.joy_axis_deadzone, _x.new_params.max_speed_cmd, _x.new_params.max_heave_cmd, _x.new_params.max_roll_cmd, _x.new_params.max_pitch_cmd, _x.new_params.max_yaw_cmd, _x.new_params.max_roll_pos, _x.new_params.max_pitch_pos, _x.new_params.max_yaw_pos, _x.new_params.min_depth, _x.new_params.max_depth, _x.new_params.default_fixed_depth, _x.new_params.max_roll_vel, _x.new_params.max_pitch_vel, _x.new_params.max_yaw_vel, _x.new_params.max_depth_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.new_params is None:
        self.new_params = aquajoy.msg.AquaTeleopJoyParams()
      end = 0
      _x = self
      start = end
      end += 128
      (_x.new_params.joy_axis_deadzone, _x.new_params.max_speed_cmd, _x.new_params.max_heave_cmd, _x.new_params.max_roll_cmd, _x.new_params.max_pitch_cmd, _x.new_params.max_yaw_cmd, _x.new_params.max_roll_pos, _x.new_params.max_pitch_pos, _x.new_params.max_yaw_pos, _x.new_params.min_depth, _x.new_params.max_depth, _x.new_params.default_fixed_depth, _x.new_params.max_roll_vel, _x.new_params.max_pitch_vel, _x.new_params.max_yaw_vel, _x.new_params.max_depth_vel,) = _get_struct_16d().unpack(str[start:end])
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
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquajoy/UpdateAquaTeleopJoyParamsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UpdateAquaTeleopJoyParamsResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "aquajoy/UpdateAquaTeleopJoyParamsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UpdateAquaTeleopJoyParamsResponse, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
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
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class UpdateAquaTeleopJoyParams(object):
  _type          = 'aquajoy/UpdateAquaTeleopJoyParams'
  _md5sum = '1e83859aeb42bc42c7f92e0fd76391e7'
  _request_class  = UpdateAquaTeleopJoyParamsRequest
  _response_class = UpdateAquaTeleopJoyParamsResponse