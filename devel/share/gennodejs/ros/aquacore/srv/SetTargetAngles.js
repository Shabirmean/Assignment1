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

class SetTargetAnglesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_roll = null;
      this.target_pitch = null;
      this.target_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('target_roll')) {
        this.target_roll = initObj.target_roll
      }
      else {
        this.target_roll = 0.0;
      }
      if (initObj.hasOwnProperty('target_pitch')) {
        this.target_pitch = initObj.target_pitch
      }
      else {
        this.target_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('target_yaw')) {
        this.target_yaw = initObj.target_yaw
      }
      else {
        this.target_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTargetAnglesRequest
    // Serialize message field [target_roll]
    bufferOffset = _serializer.float32(obj.target_roll, buffer, bufferOffset);
    // Serialize message field [target_pitch]
    bufferOffset = _serializer.float32(obj.target_pitch, buffer, bufferOffset);
    // Serialize message field [target_yaw]
    bufferOffset = _serializer.float32(obj.target_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTargetAnglesRequest
    let len;
    let data = new SetTargetAnglesRequest(null);
    // Deserialize message field [target_roll]
    data.target_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_pitch]
    data.target_pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_yaw]
    data.target_yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetTargetAnglesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fb51b5ca215261890b0dd7f7ef256d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 target_roll
    float32 target_pitch
    float32 target_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTargetAnglesRequest(null);
    if (msg.target_roll !== undefined) {
      resolved.target_roll = msg.target_roll;
    }
    else {
      resolved.target_roll = 0.0
    }

    if (msg.target_pitch !== undefined) {
      resolved.target_pitch = msg.target_pitch;
    }
    else {
      resolved.target_pitch = 0.0
    }

    if (msg.target_yaw !== undefined) {
      resolved.target_yaw = msg.target_yaw;
    }
    else {
      resolved.target_yaw = 0.0
    }

    return resolved;
    }
};

class SetTargetAnglesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTargetAnglesResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTargetAnglesResponse
    let len;
    let data = new SetTargetAnglesResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetTargetAnglesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTargetAnglesResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTargetAnglesRequest,
  Response: SetTargetAnglesResponse,
  md5sum() { return '25f74f3de9b4229892e03ee79c3e9669'; },
  datatype() { return 'aquacore/SetTargetAngles'; }
};
