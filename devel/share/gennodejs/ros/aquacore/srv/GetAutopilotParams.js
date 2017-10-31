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

class GetAutopilotParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAutopilotParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutopilotParamsRequest
    let len;
    let data = new GetAutopilotParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetAutopilotParamsRequest';
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
    const resolved = new GetAutopilotParamsRequest(null);
    return resolved;
    }
};

class GetAutopilotParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAutopilotParamsResponse
    // Serialize message field [params]
    bufferOffset = _arraySerializer.float32(obj.params, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutopilotParamsResponse
    let len;
    let data = new GetAutopilotParamsResponse(null);
    // Deserialize message field [params]
    data.params = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.params.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/GetAutopilotParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e22f8c3368a715022fd214d9775704d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] params
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAutopilotParamsResponse(null);
    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAutopilotParamsRequest,
  Response: GetAutopilotParamsResponse,
  md5sum() { return '8e22f8c3368a715022fd214d9775704d'; },
  datatype() { return 'aquacore/GetAutopilotParams'; }
};
