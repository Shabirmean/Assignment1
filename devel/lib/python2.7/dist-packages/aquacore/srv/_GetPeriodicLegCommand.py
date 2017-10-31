# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquacore/GetPeriodicLegCommandRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetPeriodicLegCommandRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "aquacore/GetPeriodicLegCommandRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
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
      super(GetPeriodicLegCommandRequest, self).__init__(*args, **kwds)

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
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aquacore/GetPeriodicLegCommandResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class GetPeriodicLegCommandResponse(genpy.Message):
  _md5sum = "d3befc8a5e5142617cdb8fa5f1aeaff0"
  _type = "aquacore/GetPeriodicLegCommandResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Header stamp
float64[6] frequencies
float64[6] amplitudes
float64[6] leg_offsets
float64[6] phase_offsets


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
"""
  __slots__ = ['stamp','frequencies','amplitudes','leg_offsets','phase_offsets']
  _slot_types = ['std_msgs/Header','float64[6]','float64[6]','float64[6]','float64[6]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,frequencies,amplitudes,leg_offsets,phase_offsets

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPeriodicLegCommandResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = std_msgs.msg.Header()
      if self.frequencies is None:
        self.frequencies = [0.] * 6
      if self.amplitudes is None:
        self.amplitudes = [0.] * 6
      if self.leg_offsets is None:
        self.leg_offsets = [0.] * 6
      if self.phase_offsets is None:
        self.phase_offsets = [0.] * 6
    else:
      self.stamp = std_msgs.msg.Header()
      self.frequencies = [0.] * 6
      self.amplitudes = [0.] * 6
      self.leg_offsets = [0.] * 6
      self.phase_offsets = [0.] * 6

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
      buff.write(_get_struct_3I().pack(_x.stamp.seq, _x.stamp.stamp.secs, _x.stamp.stamp.nsecs))
      _x = self.stamp.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_6d().pack(*self.frequencies))
      buff.write(_get_struct_6d().pack(*self.amplitudes))
      buff.write(_get_struct_6d().pack(*self.leg_offsets))
      buff.write(_get_struct_6d().pack(*self.phase_offsets))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.stamp is None:
        self.stamp = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.stamp.seq, _x.stamp.stamp.secs, _x.stamp.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.stamp.frame_id = str[start:end].decode('utf-8')
      else:
        self.stamp.frame_id = str[start:end]
      start = end
      end += 48
      self.frequencies = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 48
      self.amplitudes = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 48
      self.leg_offsets = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 48
      self.phase_offsets = _get_struct_6d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.stamp.seq, _x.stamp.stamp.secs, _x.stamp.stamp.nsecs))
      _x = self.stamp.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(self.frequencies.tostring())
      buff.write(self.amplitudes.tostring())
      buff.write(self.leg_offsets.tostring())
      buff.write(self.phase_offsets.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.stamp is None:
        self.stamp = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.stamp.seq, _x.stamp.stamp.secs, _x.stamp.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.stamp.frame_id = str[start:end].decode('utf-8')
      else:
        self.stamp.frame_id = str[start:end]
      start = end
      end += 48
      self.frequencies = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=6)
      start = end
      end += 48
      self.amplitudes = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=6)
      start = end
      end += 48
      self.leg_offsets = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=6)
      start = end
      end += 48
      self.phase_offsets = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=6)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
class GetPeriodicLegCommand(object):
  _type          = 'aquacore/GetPeriodicLegCommand'
  _md5sum = 'd3befc8a5e5142617cdb8fa5f1aeaff0'
  _request_class  = GetPeriodicLegCommandRequest
  _response_class = GetPeriodicLegCommandResponse