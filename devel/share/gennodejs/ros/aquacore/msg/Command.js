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

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.heave = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('heave')) {
        this.heave = initObj.heave
      }
      else {
        this.heave = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [heave]
    bufferOffset = _serializer.float32(obj.heave, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heave]
    data.heave = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25d10593eab44377302838c0a409503e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a
    # non-linear way; see Giguere et al. IROS 2006 "Characterizing..." for similar pseudo-rate mapping plots
    # on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.
    
    # All saturations are performed by RoboDevel
    
    float32 speed # unitless pseudo-rate, [0, 1]
    float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right
    float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down
    float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right
    float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.heave !== undefined) {
      resolved.heave = msg.heave;
    }
    else {
      resolved.heave = 0.0
    }

    return resolved;
    }
};

module.exports = Command;
