// Auto-generated. Do not edit!

// (in-package aqua_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HydrodynamicsParams = require('./HydrodynamicsParams.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HydrodynamicsParamsList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HydrodynamicsParamsList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [params]
    // Serialize the length for message field [params]
    bufferOffset = _serializer.uint32(obj.params.length, buffer, bufferOffset);
    obj.params.forEach((val) => {
      bufferOffset = HydrodynamicsParams.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HydrodynamicsParamsList
    let len;
    let data = new HydrodynamicsParamsList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [params]
    // Deserialize array length for message field [params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.params[i] = HydrodynamicsParams.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.params.forEach((val) => {
      length += HydrodynamicsParams.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aqua_gazebo/HydrodynamicsParamsList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fb99dd419aa8fd6de13995f952156fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    aqua_gazebo/HydrodynamicsParams[] params
    
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
    MSG: aqua_gazebo/HydrodynamicsParams
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HydrodynamicsParamsList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.params !== undefined) {
      resolved.params = new Array(msg.params.length);
      for (let i = 0; i < resolved.params.length; ++i) {
        resolved.params[i] = HydrodynamicsParams.Resolve(msg.params[i]);
      }
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

module.exports = HydrodynamicsParamsList;
