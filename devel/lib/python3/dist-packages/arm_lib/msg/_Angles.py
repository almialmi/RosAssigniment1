# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from arm_lib/Angles.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Angles(genpy.Message):
  _md5sum = "d5c56eccbb002287c9ebfe2ecc181f37"
  _type = "arm_lib/Angles"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 base_arm1
float32 arm1_arm2
float32 arm2_arm3
float32 arm3_arm4
float32 p
float32 i 
float32 d
"""
  __slots__ = ['base_arm1','arm1_arm2','arm2_arm3','arm3_arm4','p','i','d']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       base_arm1,arm1_arm2,arm2_arm3,arm3_arm4,p,i,d

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Angles, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.base_arm1 is None:
        self.base_arm1 = 0.
      if self.arm1_arm2 is None:
        self.arm1_arm2 = 0.
      if self.arm2_arm3 is None:
        self.arm2_arm3 = 0.
      if self.arm3_arm4 is None:
        self.arm3_arm4 = 0.
      if self.p is None:
        self.p = 0.
      if self.i is None:
        self.i = 0.
      if self.d is None:
        self.d = 0.
    else:
      self.base_arm1 = 0.
      self.arm1_arm2 = 0.
      self.arm2_arm3 = 0.
      self.arm3_arm4 = 0.
      self.p = 0.
      self.i = 0.
      self.d = 0.

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
      buff.write(_get_struct_7f().pack(_x.base_arm1, _x.arm1_arm2, _x.arm2_arm3, _x.arm3_arm4, _x.p, _x.i, _x.d))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.base_arm1, _x.arm1_arm2, _x.arm2_arm3, _x.arm3_arm4, _x.p, _x.i, _x.d,) = _get_struct_7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7f().pack(_x.base_arm1, _x.arm1_arm2, _x.arm2_arm3, _x.arm3_arm4, _x.p, _x.i, _x.d))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.base_arm1, _x.arm1_arm2, _x.arm2_arm3, _x.arm3_arm4, _x.p, _x.i, _x.d,) = _get_struct_7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7f = None
def _get_struct_7f():
    global _struct_7f
    if _struct_7f is None:
        _struct_7f = struct.Struct("<7f")
    return _struct_7f
