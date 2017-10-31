// Auto-generated. Do not edit!

// (in-package aquacore.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KeepAlive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.keepalive = null;
    }
    else {
      if (initObj.hasOwnProperty('keepalive')) {
        this.keepalive = initObj.keepalive
      }
      else {
        this.keepalive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeepAlive
    // Serialize message field [keepalive]
    bufferOffset = _serializer.bool(obj.keepalive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeepAlive
    let len;
    let data = new KeepAlive(null);
    // Deserialize message field [keepalive]
    data.keepalive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/KeepAlive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24fb7054ad8b54e70f691c17acc4088d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool keepalive
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeepAlive(null);
    if (msg.keepalive !== undefined) {
      resolved.keepalive = msg.keepalive;
    }
    else {
      resolved.keepalive = false
    }

    return resolved;
    }
};

module.exports = KeepAlive;
