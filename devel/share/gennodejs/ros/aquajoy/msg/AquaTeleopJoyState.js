// Auto-generated. Do not edit!

// (in-package aquajoy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let aquacore = _finder('aquacore');

//-----------------------------------------------------------

class AquaTeleopJoyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl_mode = null;
      this.modifier = null;
      this.raw_cmd = null;
      this.roll_pos = null;
      this.pitch_pos = null;
      this.yaw_pos = null;
      this.roll_vel = null;
      this.pitch_vel = null;
      this.yaw_vel = null;
      this.depth_pos = null;
      this.depth_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = 0;
      }
      if (initObj.hasOwnProperty('modifier')) {
        this.modifier = initObj.modifier
      }
      else {
        this.modifier = false;
      }
      if (initObj.hasOwnProperty('raw_cmd')) {
        this.raw_cmd = initObj.raw_cmd
      }
      else {
        this.raw_cmd = new aquacore.msg.Command();
      }
      if (initObj.hasOwnProperty('roll_pos')) {
        this.roll_pos = initObj.roll_pos
      }
      else {
        this.roll_pos = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_pos')) {
        this.pitch_pos = initObj.pitch_pos
      }
      else {
        this.pitch_pos = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_pos')) {
        this.yaw_pos = initObj.yaw_pos
      }
      else {
        this.yaw_pos = 0.0;
      }
      if (initObj.hasOwnProperty('roll_vel')) {
        this.roll_vel = initObj.roll_vel
      }
      else {
        this.roll_vel = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_vel')) {
        this.pitch_vel = initObj.pitch_vel
      }
      else {
        this.pitch_vel = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_vel')) {
        this.yaw_vel = initObj.yaw_vel
      }
      else {
        this.yaw_vel = 0.0;
      }
      if (initObj.hasOwnProperty('depth_pos')) {
        this.depth_pos = initObj.depth_pos
      }
      else {
        this.depth_pos = 0.0;
      }
      if (initObj.hasOwnProperty('depth_vel')) {
        this.depth_vel = initObj.depth_vel
      }
      else {
        this.depth_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AquaTeleopJoyState
    // Serialize message field [ctrl_mode]
    bufferOffset = _serializer.int8(obj.ctrl_mode, buffer, bufferOffset);
    // Serialize message field [modifier]
    bufferOffset = _serializer.bool(obj.modifier, buffer, bufferOffset);
    // Serialize message field [raw_cmd]
    bufferOffset = aquacore.msg.Command.serialize(obj.raw_cmd, buffer, bufferOffset);
    // Serialize message field [roll_pos]
    bufferOffset = _serializer.float64(obj.roll_pos, buffer, bufferOffset);
    // Serialize message field [pitch_pos]
    bufferOffset = _serializer.float64(obj.pitch_pos, buffer, bufferOffset);
    // Serialize message field [yaw_pos]
    bufferOffset = _serializer.float64(obj.yaw_pos, buffer, bufferOffset);
    // Serialize message field [roll_vel]
    bufferOffset = _serializer.float64(obj.roll_vel, buffer, bufferOffset);
    // Serialize message field [pitch_vel]
    bufferOffset = _serializer.float64(obj.pitch_vel, buffer, bufferOffset);
    // Serialize message field [yaw_vel]
    bufferOffset = _serializer.float64(obj.yaw_vel, buffer, bufferOffset);
    // Serialize message field [depth_pos]
    bufferOffset = _serializer.float64(obj.depth_pos, buffer, bufferOffset);
    // Serialize message field [depth_vel]
    bufferOffset = _serializer.float64(obj.depth_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AquaTeleopJoyState
    let len;
    let data = new AquaTeleopJoyState(null);
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [modifier]
    data.modifier = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw_cmd]
    data.raw_cmd = aquacore.msg.Command.deserialize(buffer, bufferOffset);
    // Deserialize message field [roll_pos]
    data.roll_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_pos]
    data.pitch_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_pos]
    data.yaw_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_vel]
    data.roll_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_vel]
    data.pitch_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_vel]
    data.yaw_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_pos]
    data.depth_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_vel]
    data.depth_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 86;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquajoy/AquaTeleopJoyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ae4c9d6b55f827b7d46912c0ba341f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ctrl_mode
    int8 CTRL_MODE_RAW = 0
    int8 CTRL_MODE_GLOBAL_RP_POS = 1
    int8 CTRL_MODE_GLOBAL_RP_POS_D = 2
    int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3
    int8 CTRL_MODE_FLATSWIM_D = 4
    
    bool modifier
    
    aquacore/Command raw_cmd
    
    # NOTE: all angle units are in degrees
    
    float64 roll_pos
    float64 pitch_pos
    float64 yaw_pos
    
    float64 roll_vel
    float64 pitch_vel
    float64 yaw_vel
    
    float64 depth_pos
    
    float64 depth_vel
    
    ================================================================================
    MSG: aquacore/Command
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
    const resolved = new AquaTeleopJoyState(null);
    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = 0
    }

    if (msg.modifier !== undefined) {
      resolved.modifier = msg.modifier;
    }
    else {
      resolved.modifier = false
    }

    if (msg.raw_cmd !== undefined) {
      resolved.raw_cmd = aquacore.msg.Command.Resolve(msg.raw_cmd)
    }
    else {
      resolved.raw_cmd = new aquacore.msg.Command()
    }

    if (msg.roll_pos !== undefined) {
      resolved.roll_pos = msg.roll_pos;
    }
    else {
      resolved.roll_pos = 0.0
    }

    if (msg.pitch_pos !== undefined) {
      resolved.pitch_pos = msg.pitch_pos;
    }
    else {
      resolved.pitch_pos = 0.0
    }

    if (msg.yaw_pos !== undefined) {
      resolved.yaw_pos = msg.yaw_pos;
    }
    else {
      resolved.yaw_pos = 0.0
    }

    if (msg.roll_vel !== undefined) {
      resolved.roll_vel = msg.roll_vel;
    }
    else {
      resolved.roll_vel = 0.0
    }

    if (msg.pitch_vel !== undefined) {
      resolved.pitch_vel = msg.pitch_vel;
    }
    else {
      resolved.pitch_vel = 0.0
    }

    if (msg.yaw_vel !== undefined) {
      resolved.yaw_vel = msg.yaw_vel;
    }
    else {
      resolved.yaw_vel = 0.0
    }

    if (msg.depth_pos !== undefined) {
      resolved.depth_pos = msg.depth_pos;
    }
    else {
      resolved.depth_pos = 0.0
    }

    if (msg.depth_vel !== undefined) {
      resolved.depth_vel = msg.depth_vel;
    }
    else {
      resolved.depth_vel = 0.0
    }

    return resolved;
    }
};

// Constants for message
AquaTeleopJoyState.Constants = {
  CTRL_MODE_RAW: 0,
  CTRL_MODE_GLOBAL_RP_POS: 1,
  CTRL_MODE_GLOBAL_RP_POS_D: 2,
  CTRL_MODE_GLOBAL_RP_VEL_D: 3,
  CTRL_MODE_FLATSWIM_D: 4,
}

module.exports = AquaTeleopJoyState;
