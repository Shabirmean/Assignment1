// Auto-generated. Do not edit!

// (in-package aquacore.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let StateMsg = require('../msg/StateMsg.js');

//-----------------------------------------------------------

class GetStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateRequest
    let len;
    let data = new GetStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetStateRequest';
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
    const resolved = new GetStateRequest(null);
    return resolved;
    }
};

class GetStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new StateMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateResponse
    // Serialize message field [state]
    bufferOffset = StateMsg.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateResponse
    let len;
    let data = new GetStateResponse(null);
    // Deserialize message field [state]
    data.state = StateMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StateMsg.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eed0983a56703471598bb1e571d9dddf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StateMsg state
    
    
    ================================================================================
    MSG: aquacore/StateMsg
    Header header
    int32 LED
    int32 Gait
    
    float32 RollAngle
    float32 PitchAngle
    float32 YawAngle
    
    float32 RollTargetAngle
    float32 PitchTargetAngle
    float32 YawTargetAngle
    float32 DepthTarget
    
    float32 AvgRollCommand
    float32 AvgPitchCommand
    float32 AvgYawCommand
    float32 AvgHeaveCommand
    float32 AvgSurgeCommand
    
    int32 AutopilotMode
    float32 Depth
    float32 Speed
    
    float32[] LegCurrents
    
    
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
    const resolved = new GetStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = StateMsg.Resolve(msg.state)
    }
    else {
      resolved.state = new StateMsg()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStateRequest,
  Response: GetStateResponse,
  md5sum() { return 'eed0983a56703471598bb1e571d9dddf'; },
  datatype() { return 'aquacore/GetState'; }
};
