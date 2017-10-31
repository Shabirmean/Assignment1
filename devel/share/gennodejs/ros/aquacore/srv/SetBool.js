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

class SetBoolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoolRequest
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoolRequest
    let len;
    let data = new SetBoolRequest(null);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetBoolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e431d687bf4b2c65fbd94b12ae0cb5d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBoolRequest(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

class SetBoolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoolResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoolResponse
    let len;
    let data = new SetBoolResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetBoolResponse';
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
    const resolved = new SetBoolResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetBoolRequest,
  Response: SetBoolResponse,
  md5sum() { return 'e431d687bf4b2c65fbd94b12ae0cb5d9'; },
  datatype() { return 'aquacore/SetBool'; }
};
