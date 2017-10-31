// Auto-generated. Do not edit!

// (in-package aquacore.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTargetLegAnglesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('target_angles')) {
        this.target_angles = initObj.target_angles
      }
      else {
        this.target_angles = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTargetLegAnglesRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [target_angles] has the right length
    if (obj.target_angles.length !== 6) {
      throw new Error('Unable to serialize array field target_angles - length must be 6')
    }
    // Serialize message field [target_angles]
    bufferOffset = _arraySerializer.float64(obj.target_angles, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTargetLegAnglesRequest
    let len;
    let data = new SetTargetLegAnglesRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_angles]
    data.target_angles = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetTargetLegAnglesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '713c56434b15577b0cfe5670a7e5dd0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[6] target_angles
    
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
    const resolved = new SetTargetLegAnglesRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.target_angles !== undefined) {
      resolved.target_angles = msg.target_angles;
    }
    else {
      resolved.target_angles = new Array(6).fill(0)
    }

    return resolved;
    }
};

class SetTargetLegAnglesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTargetLegAnglesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTargetLegAnglesResponse
    let len;
    let data = new SetTargetLegAnglesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetTargetLegAnglesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTargetLegAnglesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetTargetLegAnglesRequest,
  Response: SetTargetLegAnglesResponse,
  md5sum() { return '713c56434b15577b0cfe5670a7e5dd0a'; },
  datatype() { return 'aquacore/SetTargetLegAngles'; }
};
