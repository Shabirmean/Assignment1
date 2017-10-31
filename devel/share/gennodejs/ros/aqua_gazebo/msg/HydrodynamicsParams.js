// Auto-generated. Do not edit!

// (in-package aqua_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HydrodynamicsParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.wobble = null;
      this.drag_scaling = null;
      this.density = null;
      this.viscosity = null;
      this.mass = null;
      this.volume = null;
      this.planar = null;
      this.K = null;
      this.D = null;
      this.I = null;
      this.com = null;
      this.cob = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('wobble')) {
        this.wobble = initObj.wobble
      }
      else {
        this.wobble = 0.0;
      }
      if (initObj.hasOwnProperty('drag_scaling')) {
        this.drag_scaling = initObj.drag_scaling
      }
      else {
        this.drag_scaling = 0.0;
      }
      if (initObj.hasOwnProperty('density')) {
        this.density = initObj.density
      }
      else {
        this.density = 0.0;
      }
      if (initObj.hasOwnProperty('viscosity')) {
        this.viscosity = initObj.viscosity
      }
      else {
        this.viscosity = 0.0;
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('volume')) {
        this.volume = initObj.volume
      }
      else {
        this.volume = 0.0;
      }
      if (initObj.hasOwnProperty('planar')) {
        this.planar = initObj.planar
      }
      else {
        this.planar = 0.0;
      }
      if (initObj.hasOwnProperty('K')) {
        this.K = initObj.K
      }
      else {
        this.K = [];
      }
      if (initObj.hasOwnProperty('D')) {
        this.D = initObj.D
      }
      else {
        this.D = [];
      }
      if (initObj.hasOwnProperty('I')) {
        this.I = initObj.I
      }
      else {
        this.I = [];
      }
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = [];
      }
      if (initObj.hasOwnProperty('cob')) {
        this.cob = initObj.cob
      }
      else {
        this.cob = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HydrodynamicsParams
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [wobble]
    bufferOffset = _serializer.float64(obj.wobble, buffer, bufferOffset);
    // Serialize message field [drag_scaling]
    bufferOffset = _serializer.float64(obj.drag_scaling, buffer, bufferOffset);
    // Serialize message field [density]
    bufferOffset = _serializer.float64(obj.density, buffer, bufferOffset);
    // Serialize message field [viscosity]
    bufferOffset = _serializer.float64(obj.viscosity, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    // Serialize message field [volume]
    bufferOffset = _serializer.float64(obj.volume, buffer, bufferOffset);
    // Serialize message field [planar]
    bufferOffset = _serializer.float64(obj.planar, buffer, bufferOffset);
    // Serialize message field [K]
    bufferOffset = _arraySerializer.float64(obj.K, buffer, bufferOffset, null);
    // Serialize message field [D]
    bufferOffset = _arraySerializer.float64(obj.D, buffer, bufferOffset, null);
    // Serialize message field [I]
    bufferOffset = _arraySerializer.float64(obj.I, buffer, bufferOffset, null);
    // Serialize message field [com]
    bufferOffset = _arraySerializer.float64(obj.com, buffer, bufferOffset, null);
    // Serialize message field [cob]
    bufferOffset = _arraySerializer.float64(obj.cob, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HydrodynamicsParams
    let len;
    let data = new HydrodynamicsParams(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wobble]
    data.wobble = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [drag_scaling]
    data.drag_scaling = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [density]
    data.density = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [viscosity]
    data.viscosity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [volume]
    data.volume = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planar]
    data.planar = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [K]
    data.K = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [D]
    data.D = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [I]
    data.I = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [com]
    data.com = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cob]
    data.cob = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 8 * object.K.length;
    length += 8 * object.D.length;
    length += 8 * object.I.length;
    length += 8 * object.com.length;
    length += 8 * object.cob.length;
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aqua_gazebo/HydrodynamicsParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd4bee8c863bd8ba3beda4555fcfa851';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string name
    float64 wobble
    float64 drag_scaling
    float64 density
    float64 viscosity
    float64 mass
    float64 volume
    float64 planar
    float64[] K
    float64[] D
    float64[] I
    float64[] com
    float64[] cob
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HydrodynamicsParams(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.wobble !== undefined) {
      resolved.wobble = msg.wobble;
    }
    else {
      resolved.wobble = 0.0
    }

    if (msg.drag_scaling !== undefined) {
      resolved.drag_scaling = msg.drag_scaling;
    }
    else {
      resolved.drag_scaling = 0.0
    }

    if (msg.density !== undefined) {
      resolved.density = msg.density;
    }
    else {
      resolved.density = 0.0
    }

    if (msg.viscosity !== undefined) {
      resolved.viscosity = msg.viscosity;
    }
    else {
      resolved.viscosity = 0.0
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.volume !== undefined) {
      resolved.volume = msg.volume;
    }
    else {
      resolved.volume = 0.0
    }

    if (msg.planar !== undefined) {
      resolved.planar = msg.planar;
    }
    else {
      resolved.planar = 0.0
    }

    if (msg.K !== undefined) {
      resolved.K = msg.K;
    }
    else {
      resolved.K = []
    }

    if (msg.D !== undefined) {
      resolved.D = msg.D;
    }
    else {
      resolved.D = []
    }

    if (msg.I !== undefined) {
      resolved.I = msg.I;
    }
    else {
      resolved.I = []
    }

    if (msg.com !== undefined) {
      resolved.com = msg.com;
    }
    else {
      resolved.com = []
    }

    if (msg.cob !== undefined) {
      resolved.cob = msg.cob;
    }
    else {
      resolved.cob = []
    }

    return resolved;
    }
};

module.exports = HydrodynamicsParams;
