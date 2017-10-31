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

class MenuRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.title = null;
      this.opts = null;
      this.timeout = null;
      this.default_choice = null;
    }
    else {
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('opts')) {
        this.opts = initObj.opts
      }
      else {
        this.opts = [];
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
      if (initObj.hasOwnProperty('default_choice')) {
        this.default_choice = initObj.default_choice
      }
      else {
        this.default_choice = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MenuRequest
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [opts]
    bufferOffset = _arraySerializer.string(obj.opts, buffer, bufferOffset, null);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [default_choice]
    bufferOffset = _serializer.int32(obj.default_choice, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MenuRequest
    let len;
    let data = new MenuRequest(null);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [opts]
    data.opts = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [default_choice]
    data.default_choice = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.title.length;
    object.opts.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/MenuRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8793e9d66fca0fa66ec846d740ac67e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string title
    
    string[] opts
    
    int32 timeout
    
    int32 default_choice
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MenuRequest(null);
    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.opts !== undefined) {
      resolved.opts = msg.opts;
    }
    else {
      resolved.opts = []
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    if (msg.default_choice !== undefined) {
      resolved.default_choice = msg.default_choice;
    }
    else {
      resolved.default_choice = 0
    }

    return resolved;
    }
};

class MenuResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.selection = null;
    }
    else {
      if (initObj.hasOwnProperty('selection')) {
        this.selection = initObj.selection
      }
      else {
        this.selection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MenuResponse
    // Serialize message field [selection]
    bufferOffset = _serializer.int32(obj.selection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MenuResponse
    let len;
    let data = new MenuResponse(null);
    // Deserialize message field [selection]
    data.selection = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/MenuResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfce931559b01752ff575a8c4cbe9bc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 selection
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MenuResponse(null);
    if (msg.selection !== undefined) {
      resolved.selection = msg.selection;
    }
    else {
      resolved.selection = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MenuRequest,
  Response: MenuResponse,
  md5sum() { return 'b6c70a1e971f94500062019a89d5686d'; },
  datatype() { return 'aquacore/Menu'; }
};
