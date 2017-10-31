// Auto-generated. Do not edit!

// (in-package aquajoy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AquaTeleopJoyParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joy_axis_deadzone = null;
      this.max_speed_cmd = null;
      this.max_heave_cmd = null;
      this.max_roll_cmd = null;
      this.max_pitch_cmd = null;
      this.max_yaw_cmd = null;
      this.max_roll_pos = null;
      this.max_pitch_pos = null;
      this.max_yaw_pos = null;
      this.min_depth = null;
      this.max_depth = null;
      this.default_fixed_depth = null;
      this.max_roll_vel = null;
      this.max_pitch_vel = null;
      this.max_yaw_vel = null;
      this.max_depth_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('joy_axis_deadzone')) {
        this.joy_axis_deadzone = initObj.joy_axis_deadzone
      }
      else {
        this.joy_axis_deadzone = 0.0;
      }
      if (initObj.hasOwnProperty('max_speed_cmd')) {
        this.max_speed_cmd = initObj.max_speed_cmd
      }
      else {
        this.max_speed_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('max_heave_cmd')) {
        this.max_heave_cmd = initObj.max_heave_cmd
      }
      else {
        this.max_heave_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('max_roll_cmd')) {
        this.max_roll_cmd = initObj.max_roll_cmd
      }
      else {
        this.max_roll_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('max_pitch_cmd')) {
        this.max_pitch_cmd = initObj.max_pitch_cmd
      }
      else {
        this.max_pitch_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('max_yaw_cmd')) {
        this.max_yaw_cmd = initObj.max_yaw_cmd
      }
      else {
        this.max_yaw_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('max_roll_pos')) {
        this.max_roll_pos = initObj.max_roll_pos
      }
      else {
        this.max_roll_pos = 0.0;
      }
      if (initObj.hasOwnProperty('max_pitch_pos')) {
        this.max_pitch_pos = initObj.max_pitch_pos
      }
      else {
        this.max_pitch_pos = 0.0;
      }
      if (initObj.hasOwnProperty('max_yaw_pos')) {
        this.max_yaw_pos = initObj.max_yaw_pos
      }
      else {
        this.max_yaw_pos = 0.0;
      }
      if (initObj.hasOwnProperty('min_depth')) {
        this.min_depth = initObj.min_depth
      }
      else {
        this.min_depth = 0.0;
      }
      if (initObj.hasOwnProperty('max_depth')) {
        this.max_depth = initObj.max_depth
      }
      else {
        this.max_depth = 0.0;
      }
      if (initObj.hasOwnProperty('default_fixed_depth')) {
        this.default_fixed_depth = initObj.default_fixed_depth
      }
      else {
        this.default_fixed_depth = 0.0;
      }
      if (initObj.hasOwnProperty('max_roll_vel')) {
        this.max_roll_vel = initObj.max_roll_vel
      }
      else {
        this.max_roll_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_pitch_vel')) {
        this.max_pitch_vel = initObj.max_pitch_vel
      }
      else {
        this.max_pitch_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_yaw_vel')) {
        this.max_yaw_vel = initObj.max_yaw_vel
      }
      else {
        this.max_yaw_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_depth_vel')) {
        this.max_depth_vel = initObj.max_depth_vel
      }
      else {
        this.max_depth_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AquaTeleopJoyParams
    // Serialize message field [joy_axis_deadzone]
    bufferOffset = _serializer.float64(obj.joy_axis_deadzone, buffer, bufferOffset);
    // Serialize message field [max_speed_cmd]
    bufferOffset = _serializer.float64(obj.max_speed_cmd, buffer, bufferOffset);
    // Serialize message field [max_heave_cmd]
    bufferOffset = _serializer.float64(obj.max_heave_cmd, buffer, bufferOffset);
    // Serialize message field [max_roll_cmd]
    bufferOffset = _serializer.float64(obj.max_roll_cmd, buffer, bufferOffset);
    // Serialize message field [max_pitch_cmd]
    bufferOffset = _serializer.float64(obj.max_pitch_cmd, buffer, bufferOffset);
    // Serialize message field [max_yaw_cmd]
    bufferOffset = _serializer.float64(obj.max_yaw_cmd, buffer, bufferOffset);
    // Serialize message field [max_roll_pos]
    bufferOffset = _serializer.float64(obj.max_roll_pos, buffer, bufferOffset);
    // Serialize message field [max_pitch_pos]
    bufferOffset = _serializer.float64(obj.max_pitch_pos, buffer, bufferOffset);
    // Serialize message field [max_yaw_pos]
    bufferOffset = _serializer.float64(obj.max_yaw_pos, buffer, bufferOffset);
    // Serialize message field [min_depth]
    bufferOffset = _serializer.float64(obj.min_depth, buffer, bufferOffset);
    // Serialize message field [max_depth]
    bufferOffset = _serializer.float64(obj.max_depth, buffer, bufferOffset);
    // Serialize message field [default_fixed_depth]
    bufferOffset = _serializer.float64(obj.default_fixed_depth, buffer, bufferOffset);
    // Serialize message field [max_roll_vel]
    bufferOffset = _serializer.float64(obj.max_roll_vel, buffer, bufferOffset);
    // Serialize message field [max_pitch_vel]
    bufferOffset = _serializer.float64(obj.max_pitch_vel, buffer, bufferOffset);
    // Serialize message field [max_yaw_vel]
    bufferOffset = _serializer.float64(obj.max_yaw_vel, buffer, bufferOffset);
    // Serialize message field [max_depth_vel]
    bufferOffset = _serializer.float64(obj.max_depth_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AquaTeleopJoyParams
    let len;
    let data = new AquaTeleopJoyParams(null);
    // Deserialize message field [joy_axis_deadzone]
    data.joy_axis_deadzone = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_speed_cmd]
    data.max_speed_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_heave_cmd]
    data.max_heave_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_roll_cmd]
    data.max_roll_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_pitch_cmd]
    data.max_pitch_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_yaw_cmd]
    data.max_yaw_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_roll_pos]
    data.max_roll_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_pitch_pos]
    data.max_pitch_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_yaw_pos]
    data.max_yaw_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_depth]
    data.min_depth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_depth]
    data.max_depth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [default_fixed_depth]
    data.default_fixed_depth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_roll_vel]
    data.max_roll_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_pitch_vel]
    data.max_pitch_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_yaw_vel]
    data.max_yaw_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_depth_vel]
    data.max_depth_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquajoy/AquaTeleopJoyParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '706bf780e630eefcca324213e5cf91d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Range: [0, 1]
    float64 joy_axis_deadzone
      
    # Range: [0, 1]
    float64 max_speed_cmd
    float64 max_heave_cmd
    float64 max_roll_cmd
    float64 max_pitch_cmd
    float64 max_yaw_cmd
      
    # Recommended range: [0, 180] (degrees)
    float64 max_roll_pos
    float64 max_pitch_pos
    float64 max_yaw_pos
    
    # Recommended range: [-2, 1] (m)
    float64 min_depth
    
    # Recommended range: [0, 100] (m)
    float64 max_depth
    
    # Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]
    float64 default_fixed_depth
      
    # Recommended range: [0, 180] (deg/s)
    float64 max_roll_vel
    float64 max_pitch_vel
    float64 max_yaw_vel
      
    # Recommended range: [0, 1] (m/s)
    float64 max_depth_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AquaTeleopJoyParams(null);
    if (msg.joy_axis_deadzone !== undefined) {
      resolved.joy_axis_deadzone = msg.joy_axis_deadzone;
    }
    else {
      resolved.joy_axis_deadzone = 0.0
    }

    if (msg.max_speed_cmd !== undefined) {
      resolved.max_speed_cmd = msg.max_speed_cmd;
    }
    else {
      resolved.max_speed_cmd = 0.0
    }

    if (msg.max_heave_cmd !== undefined) {
      resolved.max_heave_cmd = msg.max_heave_cmd;
    }
    else {
      resolved.max_heave_cmd = 0.0
    }

    if (msg.max_roll_cmd !== undefined) {
      resolved.max_roll_cmd = msg.max_roll_cmd;
    }
    else {
      resolved.max_roll_cmd = 0.0
    }

    if (msg.max_pitch_cmd !== undefined) {
      resolved.max_pitch_cmd = msg.max_pitch_cmd;
    }
    else {
      resolved.max_pitch_cmd = 0.0
    }

    if (msg.max_yaw_cmd !== undefined) {
      resolved.max_yaw_cmd = msg.max_yaw_cmd;
    }
    else {
      resolved.max_yaw_cmd = 0.0
    }

    if (msg.max_roll_pos !== undefined) {
      resolved.max_roll_pos = msg.max_roll_pos;
    }
    else {
      resolved.max_roll_pos = 0.0
    }

    if (msg.max_pitch_pos !== undefined) {
      resolved.max_pitch_pos = msg.max_pitch_pos;
    }
    else {
      resolved.max_pitch_pos = 0.0
    }

    if (msg.max_yaw_pos !== undefined) {
      resolved.max_yaw_pos = msg.max_yaw_pos;
    }
    else {
      resolved.max_yaw_pos = 0.0
    }

    if (msg.min_depth !== undefined) {
      resolved.min_depth = msg.min_depth;
    }
    else {
      resolved.min_depth = 0.0
    }

    if (msg.max_depth !== undefined) {
      resolved.max_depth = msg.max_depth;
    }
    else {
      resolved.max_depth = 0.0
    }

    if (msg.default_fixed_depth !== undefined) {
      resolved.default_fixed_depth = msg.default_fixed_depth;
    }
    else {
      resolved.default_fixed_depth = 0.0
    }

    if (msg.max_roll_vel !== undefined) {
      resolved.max_roll_vel = msg.max_roll_vel;
    }
    else {
      resolved.max_roll_vel = 0.0
    }

    if (msg.max_pitch_vel !== undefined) {
      resolved.max_pitch_vel = msg.max_pitch_vel;
    }
    else {
      resolved.max_pitch_vel = 0.0
    }

    if (msg.max_yaw_vel !== undefined) {
      resolved.max_yaw_vel = msg.max_yaw_vel;
    }
    else {
      resolved.max_yaw_vel = 0.0
    }

    if (msg.max_depth_vel !== undefined) {
      resolved.max_depth_vel = msg.max_depth_vel;
    }
    else {
      resolved.max_depth_vel = 0.0
    }

    return resolved;
    }
};

module.exports = AquaTeleopJoyParams;
