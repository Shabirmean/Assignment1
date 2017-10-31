// Auto-generated. Do not edit!

// (in-package aqua_gait.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateTargetRPYDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_roll_deg = null;
      this.target_pitch_deg = null;
      this.target_yaw_deg = null;
      this.target_depth_m = null;
    }
    else {
      if (initObj.hasOwnProperty('target_roll_deg')) {
        this.target_roll_deg = initObj.target_roll_deg
      }
      else {
        this.target_roll_deg = 0.0;
      }
      if (initObj.hasOwnProperty('target_pitch_deg')) {
        this.target_pitch_deg = initObj.target_pitch_deg
      }
      else {
        this.target_pitch_deg = 0.0;
      }
      if (initObj.hasOwnProperty('target_yaw_deg')) {
        this.target_yaw_deg = initObj.target_yaw_deg
      }
      else {
        this.target_yaw_deg = 0.0;
      }
      if (initObj.hasOwnProperty('target_depth_m')) {
        this.target_depth_m = initObj.target_depth_m
      }
      else {
        this.target_depth_m = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateTargetRPYDRequest
    // Serialize message field [target_roll_deg]
    bufferOffset = _serializer.float64(obj.target_roll_deg, buffer, bufferOffset);
    // Serialize message field [target_pitch_deg]
    bufferOffset = _serializer.float64(obj.target_pitch_deg, buffer, bufferOffset);
    // Serialize message field [target_yaw_deg]
    bufferOffset = _serializer.float64(obj.target_yaw_deg, buffer, bufferOffset);
    // Serialize message field [target_depth_m]
    bufferOffset = _serializer.float64(obj.target_depth_m, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateTargetRPYDRequest
    let len;
    let data = new UpdateTargetRPYDRequest(null);
    // Deserialize message field [target_roll_deg]
    data.target_roll_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_pitch_deg]
    data.target_pitch_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_yaw_deg]
    data.target_yaw_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_depth_m]
    data.target_depth_m = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aqua_gait/UpdateTargetRPYDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67eb34f7772a72c0462945d31ff2da84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 target_roll_deg
    float64 target_pitch_deg
    float64 target_yaw_deg
    float64 target_depth_m
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateTargetRPYDRequest(null);
    if (msg.target_roll_deg !== undefined) {
      resolved.target_roll_deg = msg.target_roll_deg;
    }
    else {
      resolved.target_roll_deg = 0.0
    }

    if (msg.target_pitch_deg !== undefined) {
      resolved.target_pitch_deg = msg.target_pitch_deg;
    }
    else {
      resolved.target_pitch_deg = 0.0
    }

    if (msg.target_yaw_deg !== undefined) {
      resolved.target_yaw_deg = msg.target_yaw_deg;
    }
    else {
      resolved.target_yaw_deg = 0.0
    }

    if (msg.target_depth_m !== undefined) {
      resolved.target_depth_m = msg.target_depth_m;
    }
    else {
      resolved.target_depth_m = 0.0
    }

    return resolved;
    }
};

class UpdateTargetRPYDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateTargetRPYDResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateTargetRPYDResponse
    let len;
    let data = new UpdateTargetRPYDResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aqua_gait/UpdateTargetRPYDResponse';
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
    const resolved = new UpdateTargetRPYDResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: UpdateTargetRPYDRequest,
  Response: UpdateTargetRPYDResponse,
  md5sum() { return '67eb34f7772a72c0462945d31ff2da84'; },
  datatype() { return 'aqua_gait/UpdateTargetRPYD'; }
};
