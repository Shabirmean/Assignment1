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


//-----------------------------------------------------------

class SetUpRegulatedSwimModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_yaw = null;
      this.target_depth = null;
    }
    else {
      if (initObj.hasOwnProperty('target_yaw')) {
        this.target_yaw = initObj.target_yaw
      }
      else {
        this.target_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('target_depth')) {
        this.target_depth = initObj.target_depth
      }
      else {
        this.target_depth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetUpRegulatedSwimModeRequest
    // Serialize message field [target_yaw]
    bufferOffset = _serializer.float32(obj.target_yaw, buffer, bufferOffset);
    // Serialize message field [target_depth]
    bufferOffset = _serializer.float32(obj.target_depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUpRegulatedSwimModeRequest
    let len;
    let data = new SetUpRegulatedSwimModeRequest(null);
    // Deserialize message field [target_yaw]
    data.target_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_depth]
    data.target_depth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetUpRegulatedSwimModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eb67c11df69dbb1cbae50ded84c7aa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 target_yaw
    float32 target_depth
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetUpRegulatedSwimModeRequest(null);
    if (msg.target_yaw !== undefined) {
      resolved.target_yaw = msg.target_yaw;
    }
    else {
      resolved.target_yaw = 0.0
    }

    if (msg.target_depth !== undefined) {
      resolved.target_depth = msg.target_depth;
    }
    else {
      resolved.target_depth = 0.0
    }

    return resolved;
    }
};

class SetUpRegulatedSwimModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetUpRegulatedSwimModeResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUpRegulatedSwimModeResponse
    let len;
    let data = new SetUpRegulatedSwimModeResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetUpRegulatedSwimModeResponse';
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
    const resolved = new SetUpRegulatedSwimModeResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetUpRegulatedSwimModeRequest,
  Response: SetUpRegulatedSwimModeResponse,
  md5sum() { return '0eb67c11df69dbb1cbae50ded84c7aa2'; },
  datatype() { return 'aquacore/SetUpRegulatedSwimMode'; }
};
