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

class SetLegParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amplitude = null;
      this.period = null;
    }
    else {
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLegParamsRequest
    // Serialize message field [amplitude]
    bufferOffset = _serializer.float32(obj.amplitude, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.float32(obj.period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLegParamsRequest
    let len;
    let data = new SetLegParamsRequest(null);
    // Deserialize message field [amplitude]
    data.amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetLegParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1792bf569e4223f89286c37967c01dcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 amplitude
    float32 period
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLegParamsRequest(null);
    if (msg.amplitude !== undefined) {
      resolved.amplitude = msg.amplitude;
    }
    else {
      resolved.amplitude = 0.0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    return resolved;
    }
};

class SetLegParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLegParamsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLegParamsResponse
    let len;
    let data = new SetLegParamsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetLegParamsResponse';
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
    const resolved = new SetLegParamsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetLegParamsRequest,
  Response: SetLegParamsResponse,
  md5sum() { return '1792bf569e4223f89286c37967c01dcf'; },
  datatype() { return 'aquacore/SetLegParams'; }
};
