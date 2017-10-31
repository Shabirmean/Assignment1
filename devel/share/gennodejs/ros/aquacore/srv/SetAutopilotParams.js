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

class SetAutopilotParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAutopilotParamsRequest
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAutopilotParamsRequest
    let len;
    let data = new SetAutopilotParamsRequest(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetAutopilotParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2c9c4a808bfa8ef83980bb0222137bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetAutopilotParamsRequest(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

class SetAutopilotParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAutopilotParamsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAutopilotParamsResponse
    let len;
    let data = new SetAutopilotParamsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetAutopilotParamsResponse';
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
    const resolved = new SetAutopilotParamsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetAutopilotParamsRequest,
  Response: SetAutopilotParamsResponse,
  md5sum() { return 'e2c9c4a808bfa8ef83980bb0222137bf'; },
  datatype() { return 'aquacore/SetAutopilotParams'; }
};
