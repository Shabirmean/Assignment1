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

class SetDirectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.forward = null;
    }
    else {
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDirectionRequest
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDirectionRequest
    let len;
    let data = new SetDirectionRequest(null);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetDirectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fc3bc45e28c68f06921185960eb727c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool forward
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDirectionRequest(null);
    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    return resolved;
    }
};

class SetDirectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDirectionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDirectionResponse
    let len;
    let data = new SetDirectionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetDirectionResponse';
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
    const resolved = new SetDirectionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetDirectionRequest,
  Response: SetDirectionResponse,
  md5sum() { return '0fc3bc45e28c68f06921185960eb727c'; },
  datatype() { return 'aquacore/SetDirection'; }
};
