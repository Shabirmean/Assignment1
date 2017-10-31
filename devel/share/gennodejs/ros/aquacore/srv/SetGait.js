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

class SetGaitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gait = null;
    }
    else {
      if (initObj.hasOwnProperty('gait')) {
        this.gait = initObj.gait
      }
      else {
        this.gait = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGaitRequest
    // Serialize message field [gait]
    bufferOffset = _serializer.string(obj.gait, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGaitRequest
    let len;
    let data = new SetGaitRequest(null);
    // Deserialize message field [gait]
    data.gait = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gait.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetGaitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7316dbc1f35e5620dd035cf53d73de84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gait
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGaitRequest(null);
    if (msg.gait !== undefined) {
      resolved.gait = msg.gait;
    }
    else {
      resolved.gait = ''
    }

    return resolved;
    }
};

class SetGaitResponse {
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
    // Serializes a message object of type SetGaitResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGaitResponse
    let len;
    let data = new SetGaitResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetGaitResponse';
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
    const resolved = new SetGaitResponse(null);
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
  Request: SetGaitRequest,
  Response: SetGaitResponse,
  md5sum() { return '32777b381fb403c1a3470fd2f46597fe'; },
  datatype() { return 'aquacore/SetGait'; }
};
