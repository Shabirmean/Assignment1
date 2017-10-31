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

class ThrustParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.K1 = null;
      this.K2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('K1')) {
        this.K1 = initObj.K1
      }
      else {
        this.K1 = 0.0;
      }
      if (initObj.hasOwnProperty('K2')) {
        this.K2 = initObj.K2
      }
      else {
        this.K2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrustParams
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [K1]
    bufferOffset = _serializer.float64(obj.K1, buffer, bufferOffset);
    // Serialize message field [K2]
    bufferOffset = _serializer.float64(obj.K2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrustParams
    let len;
    let data = new ThrustParams(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [K1]
    data.K1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [K2]
    data.K2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aqua_gazebo/ThrustParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e0e2b6bc7942aa373465fb1cd44868e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 K1
    float64 K2
    
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
    const resolved = new ThrustParams(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.K1 !== undefined) {
      resolved.K1 = msg.K1;
    }
    else {
      resolved.K1 = 0.0
    }

    if (msg.K2 !== undefined) {
      resolved.K2 = msg.K2;
    }
    else {
      resolved.K2 = 0.0
    }

    return resolved;
    }
};

module.exports = ThrustParams;
