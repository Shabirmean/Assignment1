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

class GetAutopilotStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAutopilotStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutopilotStateRequest
    let len;
    let data = new GetAutopilotStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetAutopilotStateRequest';
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
    const resolved = new GetAutopilotStateRequest(null);
    return resolved;
    }
};

class GetAutopilotStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ap_state = null;
      this.ap_mode = null;
      this.params = null;
      this.target_depth = null;
      this.target_roll = null;
      this.target_pitch = null;
      this.target_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('ap_state')) {
        this.ap_state = initObj.ap_state
      }
      else {
        this.ap_state = 0;
      }
      if (initObj.hasOwnProperty('ap_mode')) {
        this.ap_mode = initObj.ap_mode
      }
      else {
        this.ap_mode = 0;
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
      if (initObj.hasOwnProperty('target_depth')) {
        this.target_depth = initObj.target_depth
      }
      else {
        this.target_depth = 0.0;
      }
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
    // Serializes a message object of type GetAutopilotStateResponse
    // Serialize message field [ap_state]
    bufferOffset = _serializer.int32(obj.ap_state, buffer, bufferOffset);
    // Serialize message field [ap_mode]
    bufferOffset = _serializer.int32(obj.ap_mode, buffer, bufferOffset);
    // Serialize message field [params]
    bufferOffset = _arraySerializer.float32(obj.params, buffer, bufferOffset, null);
    // Serialize message field [target_depth]
    bufferOffset = _serializer.float32(obj.target_depth, buffer, bufferOffset);
    // Serialize message field [target_roll]
    bufferOffset = _serializer.float32(obj.target_roll, buffer, bufferOffset);
    // Serialize message field [target_pitch]
    bufferOffset = _serializer.float32(obj.target_pitch, buffer, bufferOffset);
    // Serialize message field [target_yaw]
    bufferOffset = _serializer.float32(obj.target_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutopilotStateResponse
    let len;
    let data = new GetAutopilotStateResponse(null);
    // Deserialize message field [ap_state]
    data.ap_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ap_mode]
    data.ap_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [params]
    data.params = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_depth]
    data.target_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_roll]
    data.target_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_pitch]
    data.target_pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_yaw]
    data.target_yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.params.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetAutopilotStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c8eeaafe647710bb35d5cfef6b22f76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32	   ap_state
    int32	   ap_mode
    float32[] params
    float32    target_depth
    float32    target_roll
    float32    target_pitch
    float32    target_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAutopilotStateResponse(null);
    if (msg.ap_state !== undefined) {
      resolved.ap_state = msg.ap_state;
    }
    else {
      resolved.ap_state = 0
    }

    if (msg.ap_mode !== undefined) {
      resolved.ap_mode = msg.ap_mode;
    }
    else {
      resolved.ap_mode = 0
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = []
    }

    if (msg.target_depth !== undefined) {
      resolved.target_depth = msg.target_depth;
    }
    else {
      resolved.target_depth = 0.0
    }

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

module.exports = {
  Request: GetAutopilotStateRequest,
  Response: GetAutopilotStateResponse,
  md5sum() { return '8c8eeaafe647710bb35d5cfef6b22f76'; },
  datatype() { return 'aquacore/GetAutopilotState'; }
};
