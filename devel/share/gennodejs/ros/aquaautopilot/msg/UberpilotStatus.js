// Auto-generated. Do not edit!

// (in-package aquaautopilot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UberpilotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roll_p_gain = null;
      this.pitch_p_gain = null;
      this.yaw_p_gain = null;
      this.roll_i_gain = null;
      this.pitch_i_gain = null;
      this.yaw_i_gain = null;
      this.roll_d_gain = null;
      this.pitch_d_gain = null;
      this.yaw_d_gain = null;
      this.roll_const_gain = null;
      this.roll_error = null;
      this.pitch_error = null;
      this.yaw_error = null;
      this.depth_error = null;
      this.roll_error_integral = null;
      this.pitch_error_integral = null;
      this.yaw_error_integral = null;
      this.roll_p_contrib = null;
      this.pitch_p_contrib = null;
      this.yaw_p_contrib = null;
      this.roll_i_contrib = null;
      this.pitch_i_contrib = null;
      this.yaw_i_contrib = null;
      this.roll_d_contrib = null;
      this.pitch_d_contrib = null;
      this.yaw_d_contrib = null;
      this.roll_const_contrib = null;
      this.depth_p_gain = null;
      this.depth_d_gain = null;
      this.depth_derivative = null;
      this.depth_p_contrib = null;
      this.depth_d_contrib = null;
      this.resultant_roll = null;
      this.resultant_pitch = null;
      this.resultant_yaw = null;
      this.filtered_depth_derivative = null;
      this.depth_d_filter_period = null;
      this.filtered_roll_deriv = null;
      this.filtered_pitch_deriv = null;
      this.filtered_yaw_deriv = null;
      this.roll_d_filter_period = null;
      this.pitch_d_filter_period = null;
      this.yaw_d_filter_period = null;
      this.roll_target = null;
      this.pitch_target = null;
      this.yaw_target = null;
      this.current_roll = null;
      this.current_pitch = null;
      this.current_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('roll_p_gain')) {
        this.roll_p_gain = initObj.roll_p_gain
      }
      else {
        this.roll_p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_p_gain')) {
        this.pitch_p_gain = initObj.pitch_p_gain
      }
      else {
        this.pitch_p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_p_gain')) {
        this.yaw_p_gain = initObj.yaw_p_gain
      }
      else {
        this.yaw_p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('roll_i_gain')) {
        this.roll_i_gain = initObj.roll_i_gain
      }
      else {
        this.roll_i_gain = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_i_gain')) {
        this.pitch_i_gain = initObj.pitch_i_gain
      }
      else {
        this.pitch_i_gain = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_i_gain')) {
        this.yaw_i_gain = initObj.yaw_i_gain
      }
      else {
        this.yaw_i_gain = 0.0;
      }
      if (initObj.hasOwnProperty('roll_d_gain')) {
        this.roll_d_gain = initObj.roll_d_gain
      }
      else {
        this.roll_d_gain = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_d_gain')) {
        this.pitch_d_gain = initObj.pitch_d_gain
      }
      else {
        this.pitch_d_gain = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_d_gain')) {
        this.yaw_d_gain = initObj.yaw_d_gain
      }
      else {
        this.yaw_d_gain = 0.0;
      }
      if (initObj.hasOwnProperty('roll_const_gain')) {
        this.roll_const_gain = initObj.roll_const_gain
      }
      else {
        this.roll_const_gain = 0.0;
      }
      if (initObj.hasOwnProperty('roll_error')) {
        this.roll_error = initObj.roll_error
      }
      else {
        this.roll_error = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_error')) {
        this.pitch_error = initObj.pitch_error
      }
      else {
        this.pitch_error = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_error')) {
        this.yaw_error = initObj.yaw_error
      }
      else {
        this.yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('depth_error')) {
        this.depth_error = initObj.depth_error
      }
      else {
        this.depth_error = 0.0;
      }
      if (initObj.hasOwnProperty('roll_error_integral')) {
        this.roll_error_integral = initObj.roll_error_integral
      }
      else {
        this.roll_error_integral = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_error_integral')) {
        this.pitch_error_integral = initObj.pitch_error_integral
      }
      else {
        this.pitch_error_integral = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_error_integral')) {
        this.yaw_error_integral = initObj.yaw_error_integral
      }
      else {
        this.yaw_error_integral = 0.0;
      }
      if (initObj.hasOwnProperty('roll_p_contrib')) {
        this.roll_p_contrib = initObj.roll_p_contrib
      }
      else {
        this.roll_p_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_p_contrib')) {
        this.pitch_p_contrib = initObj.pitch_p_contrib
      }
      else {
        this.pitch_p_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_p_contrib')) {
        this.yaw_p_contrib = initObj.yaw_p_contrib
      }
      else {
        this.yaw_p_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('roll_i_contrib')) {
        this.roll_i_contrib = initObj.roll_i_contrib
      }
      else {
        this.roll_i_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_i_contrib')) {
        this.pitch_i_contrib = initObj.pitch_i_contrib
      }
      else {
        this.pitch_i_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_i_contrib')) {
        this.yaw_i_contrib = initObj.yaw_i_contrib
      }
      else {
        this.yaw_i_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('roll_d_contrib')) {
        this.roll_d_contrib = initObj.roll_d_contrib
      }
      else {
        this.roll_d_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_d_contrib')) {
        this.pitch_d_contrib = initObj.pitch_d_contrib
      }
      else {
        this.pitch_d_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_d_contrib')) {
        this.yaw_d_contrib = initObj.yaw_d_contrib
      }
      else {
        this.yaw_d_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('roll_const_contrib')) {
        this.roll_const_contrib = initObj.roll_const_contrib
      }
      else {
        this.roll_const_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('depth_p_gain')) {
        this.depth_p_gain = initObj.depth_p_gain
      }
      else {
        this.depth_p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('depth_d_gain')) {
        this.depth_d_gain = initObj.depth_d_gain
      }
      else {
        this.depth_d_gain = 0.0;
      }
      if (initObj.hasOwnProperty('depth_derivative')) {
        this.depth_derivative = initObj.depth_derivative
      }
      else {
        this.depth_derivative = 0.0;
      }
      if (initObj.hasOwnProperty('depth_p_contrib')) {
        this.depth_p_contrib = initObj.depth_p_contrib
      }
      else {
        this.depth_p_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('depth_d_contrib')) {
        this.depth_d_contrib = initObj.depth_d_contrib
      }
      else {
        this.depth_d_contrib = 0.0;
      }
      if (initObj.hasOwnProperty('resultant_roll')) {
        this.resultant_roll = initObj.resultant_roll
      }
      else {
        this.resultant_roll = 0.0;
      }
      if (initObj.hasOwnProperty('resultant_pitch')) {
        this.resultant_pitch = initObj.resultant_pitch
      }
      else {
        this.resultant_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('resultant_yaw')) {
        this.resultant_yaw = initObj.resultant_yaw
      }
      else {
        this.resultant_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_depth_derivative')) {
        this.filtered_depth_derivative = initObj.filtered_depth_derivative
      }
      else {
        this.filtered_depth_derivative = 0.0;
      }
      if (initObj.hasOwnProperty('depth_d_filter_period')) {
        this.depth_d_filter_period = initObj.depth_d_filter_period
      }
      else {
        this.depth_d_filter_period = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_roll_deriv')) {
        this.filtered_roll_deriv = initObj.filtered_roll_deriv
      }
      else {
        this.filtered_roll_deriv = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_pitch_deriv')) {
        this.filtered_pitch_deriv = initObj.filtered_pitch_deriv
      }
      else {
        this.filtered_pitch_deriv = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_yaw_deriv')) {
        this.filtered_yaw_deriv = initObj.filtered_yaw_deriv
      }
      else {
        this.filtered_yaw_deriv = 0.0;
      }
      if (initObj.hasOwnProperty('roll_d_filter_period')) {
        this.roll_d_filter_period = initObj.roll_d_filter_period
      }
      else {
        this.roll_d_filter_period = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_d_filter_period')) {
        this.pitch_d_filter_period = initObj.pitch_d_filter_period
      }
      else {
        this.pitch_d_filter_period = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_d_filter_period')) {
        this.yaw_d_filter_period = initObj.yaw_d_filter_period
      }
      else {
        this.yaw_d_filter_period = 0.0;
      }
      if (initObj.hasOwnProperty('roll_target')) {
        this.roll_target = initObj.roll_target
      }
      else {
        this.roll_target = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_target')) {
        this.pitch_target = initObj.pitch_target
      }
      else {
        this.pitch_target = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_target')) {
        this.yaw_target = initObj.yaw_target
      }
      else {
        this.yaw_target = 0.0;
      }
      if (initObj.hasOwnProperty('current_roll')) {
        this.current_roll = initObj.current_roll
      }
      else {
        this.current_roll = 0.0;
      }
      if (initObj.hasOwnProperty('current_pitch')) {
        this.current_pitch = initObj.current_pitch
      }
      else {
        this.current_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('current_yaw')) {
        this.current_yaw = initObj.current_yaw
      }
      else {
        this.current_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UberpilotStatus
    // Serialize message field [roll_p_gain]
    bufferOffset = _serializer.float64(obj.roll_p_gain, buffer, bufferOffset);
    // Serialize message field [pitch_p_gain]
    bufferOffset = _serializer.float64(obj.pitch_p_gain, buffer, bufferOffset);
    // Serialize message field [yaw_p_gain]
    bufferOffset = _serializer.float64(obj.yaw_p_gain, buffer, bufferOffset);
    // Serialize message field [roll_i_gain]
    bufferOffset = _serializer.float64(obj.roll_i_gain, buffer, bufferOffset);
    // Serialize message field [pitch_i_gain]
    bufferOffset = _serializer.float64(obj.pitch_i_gain, buffer, bufferOffset);
    // Serialize message field [yaw_i_gain]
    bufferOffset = _serializer.float64(obj.yaw_i_gain, buffer, bufferOffset);
    // Serialize message field [roll_d_gain]
    bufferOffset = _serializer.float64(obj.roll_d_gain, buffer, bufferOffset);
    // Serialize message field [pitch_d_gain]
    bufferOffset = _serializer.float64(obj.pitch_d_gain, buffer, bufferOffset);
    // Serialize message field [yaw_d_gain]
    bufferOffset = _serializer.float64(obj.yaw_d_gain, buffer, bufferOffset);
    // Serialize message field [roll_const_gain]
    bufferOffset = _serializer.float64(obj.roll_const_gain, buffer, bufferOffset);
    // Serialize message field [roll_error]
    bufferOffset = _serializer.float64(obj.roll_error, buffer, bufferOffset);
    // Serialize message field [pitch_error]
    bufferOffset = _serializer.float64(obj.pitch_error, buffer, bufferOffset);
    // Serialize message field [yaw_error]
    bufferOffset = _serializer.float64(obj.yaw_error, buffer, bufferOffset);
    // Serialize message field [depth_error]
    bufferOffset = _serializer.float64(obj.depth_error, buffer, bufferOffset);
    // Serialize message field [roll_error_integral]
    bufferOffset = _serializer.float64(obj.roll_error_integral, buffer, bufferOffset);
    // Serialize message field [pitch_error_integral]
    bufferOffset = _serializer.float64(obj.pitch_error_integral, buffer, bufferOffset);
    // Serialize message field [yaw_error_integral]
    bufferOffset = _serializer.float64(obj.yaw_error_integral, buffer, bufferOffset);
    // Serialize message field [roll_p_contrib]
    bufferOffset = _serializer.float64(obj.roll_p_contrib, buffer, bufferOffset);
    // Serialize message field [pitch_p_contrib]
    bufferOffset = _serializer.float64(obj.pitch_p_contrib, buffer, bufferOffset);
    // Serialize message field [yaw_p_contrib]
    bufferOffset = _serializer.float64(obj.yaw_p_contrib, buffer, bufferOffset);
    // Serialize message field [roll_i_contrib]
    bufferOffset = _serializer.float64(obj.roll_i_contrib, buffer, bufferOffset);
    // Serialize message field [pitch_i_contrib]
    bufferOffset = _serializer.float64(obj.pitch_i_contrib, buffer, bufferOffset);
    // Serialize message field [yaw_i_contrib]
    bufferOffset = _serializer.float64(obj.yaw_i_contrib, buffer, bufferOffset);
    // Serialize message field [roll_d_contrib]
    bufferOffset = _serializer.float64(obj.roll_d_contrib, buffer, bufferOffset);
    // Serialize message field [pitch_d_contrib]
    bufferOffset = _serializer.float64(obj.pitch_d_contrib, buffer, bufferOffset);
    // Serialize message field [yaw_d_contrib]
    bufferOffset = _serializer.float64(obj.yaw_d_contrib, buffer, bufferOffset);
    // Serialize message field [roll_const_contrib]
    bufferOffset = _serializer.float64(obj.roll_const_contrib, buffer, bufferOffset);
    // Serialize message field [depth_p_gain]
    bufferOffset = _serializer.float64(obj.depth_p_gain, buffer, bufferOffset);
    // Serialize message field [depth_d_gain]
    bufferOffset = _serializer.float64(obj.depth_d_gain, buffer, bufferOffset);
    // Serialize message field [depth_derivative]
    bufferOffset = _serializer.float64(obj.depth_derivative, buffer, bufferOffset);
    // Serialize message field [depth_p_contrib]
    bufferOffset = _serializer.float64(obj.depth_p_contrib, buffer, bufferOffset);
    // Serialize message field [depth_d_contrib]
    bufferOffset = _serializer.float64(obj.depth_d_contrib, buffer, bufferOffset);
    // Serialize message field [resultant_roll]
    bufferOffset = _serializer.float64(obj.resultant_roll, buffer, bufferOffset);
    // Serialize message field [resultant_pitch]
    bufferOffset = _serializer.float64(obj.resultant_pitch, buffer, bufferOffset);
    // Serialize message field [resultant_yaw]
    bufferOffset = _serializer.float64(obj.resultant_yaw, buffer, bufferOffset);
    // Serialize message field [filtered_depth_derivative]
    bufferOffset = _serializer.float64(obj.filtered_depth_derivative, buffer, bufferOffset);
    // Serialize message field [depth_d_filter_period]
    bufferOffset = _serializer.float64(obj.depth_d_filter_period, buffer, bufferOffset);
    // Serialize message field [filtered_roll_deriv]
    bufferOffset = _serializer.float64(obj.filtered_roll_deriv, buffer, bufferOffset);
    // Serialize message field [filtered_pitch_deriv]
    bufferOffset = _serializer.float64(obj.filtered_pitch_deriv, buffer, bufferOffset);
    // Serialize message field [filtered_yaw_deriv]
    bufferOffset = _serializer.float64(obj.filtered_yaw_deriv, buffer, bufferOffset);
    // Serialize message field [roll_d_filter_period]
    bufferOffset = _serializer.float64(obj.roll_d_filter_period, buffer, bufferOffset);
    // Serialize message field [pitch_d_filter_period]
    bufferOffset = _serializer.float64(obj.pitch_d_filter_period, buffer, bufferOffset);
    // Serialize message field [yaw_d_filter_period]
    bufferOffset = _serializer.float64(obj.yaw_d_filter_period, buffer, bufferOffset);
    // Serialize message field [roll_target]
    bufferOffset = _serializer.float64(obj.roll_target, buffer, bufferOffset);
    // Serialize message field [pitch_target]
    bufferOffset = _serializer.float64(obj.pitch_target, buffer, bufferOffset);
    // Serialize message field [yaw_target]
    bufferOffset = _serializer.float64(obj.yaw_target, buffer, bufferOffset);
    // Serialize message field [current_roll]
    bufferOffset = _serializer.float64(obj.current_roll, buffer, bufferOffset);
    // Serialize message field [current_pitch]
    bufferOffset = _serializer.float64(obj.current_pitch, buffer, bufferOffset);
    // Serialize message field [current_yaw]
    bufferOffset = _serializer.float64(obj.current_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UberpilotStatus
    let len;
    let data = new UberpilotStatus(null);
    // Deserialize message field [roll_p_gain]
    data.roll_p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_p_gain]
    data.pitch_p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_p_gain]
    data.yaw_p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_i_gain]
    data.roll_i_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_i_gain]
    data.pitch_i_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_i_gain]
    data.yaw_i_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_d_gain]
    data.roll_d_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_d_gain]
    data.pitch_d_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_d_gain]
    data.yaw_d_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_const_gain]
    data.roll_const_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_error]
    data.roll_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_error]
    data.pitch_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_error]
    data.yaw_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_error]
    data.depth_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_error_integral]
    data.roll_error_integral = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_error_integral]
    data.pitch_error_integral = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_error_integral]
    data.yaw_error_integral = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_p_contrib]
    data.roll_p_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_p_contrib]
    data.pitch_p_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_p_contrib]
    data.yaw_p_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_i_contrib]
    data.roll_i_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_i_contrib]
    data.pitch_i_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_i_contrib]
    data.yaw_i_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_d_contrib]
    data.roll_d_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_d_contrib]
    data.pitch_d_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_d_contrib]
    data.yaw_d_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_const_contrib]
    data.roll_const_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_p_gain]
    data.depth_p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_d_gain]
    data.depth_d_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_derivative]
    data.depth_derivative = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_p_contrib]
    data.depth_p_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_d_contrib]
    data.depth_d_contrib = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [resultant_roll]
    data.resultant_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [resultant_pitch]
    data.resultant_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [resultant_yaw]
    data.resultant_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_depth_derivative]
    data.filtered_depth_derivative = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_d_filter_period]
    data.depth_d_filter_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_roll_deriv]
    data.filtered_roll_deriv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_pitch_deriv]
    data.filtered_pitch_deriv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_yaw_deriv]
    data.filtered_yaw_deriv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_d_filter_period]
    data.roll_d_filter_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_d_filter_period]
    data.pitch_d_filter_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_d_filter_period]
    data.yaw_d_filter_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_target]
    data.roll_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_target]
    data.pitch_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_target]
    data.yaw_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_roll]
    data.current_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_pitch]
    data.current_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_yaw]
    data.current_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 392;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquaautopilot/UberpilotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9759835ed61618efecb1f4276b2aa836';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 roll_p_gain
    float64 pitch_p_gain
    float64 yaw_p_gain
    float64 roll_i_gain
    float64 pitch_i_gain
    float64 yaw_i_gain
    float64 roll_d_gain
    float64 pitch_d_gain
    float64 yaw_d_gain
    float64 roll_const_gain
    
    float64 roll_error
    float64 pitch_error
    float64 yaw_error
    float64 depth_error
    
    float64 roll_error_integral
    float64 pitch_error_integral
    float64 yaw_error_integral
    
    float64 roll_p_contrib
    float64 pitch_p_contrib
    float64 yaw_p_contrib
    float64 roll_i_contrib
    float64 pitch_i_contrib
    float64 yaw_i_contrib
    float64 roll_d_contrib
    float64 pitch_d_contrib
    float64 yaw_d_contrib
    float64 roll_const_contrib
    
    float64 depth_p_gain
    float64 depth_d_gain
    float64 depth_derivative
    float64 depth_p_contrib
    float64 depth_d_contrib
    
    float64 resultant_roll
    float64 resultant_pitch
    float64 resultant_yaw
    
    float64 filtered_depth_derivative
    float64 depth_d_filter_period
    
    float64 filtered_roll_deriv
    float64 filtered_pitch_deriv
    float64 filtered_yaw_deriv
    float64 roll_d_filter_period
    float64 pitch_d_filter_period
    float64 yaw_d_filter_period
    
    float64 roll_target
    float64 pitch_target
    float64 yaw_target
    
    float64 current_roll
    float64 current_pitch
    float64 current_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UberpilotStatus(null);
    if (msg.roll_p_gain !== undefined) {
      resolved.roll_p_gain = msg.roll_p_gain;
    }
    else {
      resolved.roll_p_gain = 0.0
    }

    if (msg.pitch_p_gain !== undefined) {
      resolved.pitch_p_gain = msg.pitch_p_gain;
    }
    else {
      resolved.pitch_p_gain = 0.0
    }

    if (msg.yaw_p_gain !== undefined) {
      resolved.yaw_p_gain = msg.yaw_p_gain;
    }
    else {
      resolved.yaw_p_gain = 0.0
    }

    if (msg.roll_i_gain !== undefined) {
      resolved.roll_i_gain = msg.roll_i_gain;
    }
    else {
      resolved.roll_i_gain = 0.0
    }

    if (msg.pitch_i_gain !== undefined) {
      resolved.pitch_i_gain = msg.pitch_i_gain;
    }
    else {
      resolved.pitch_i_gain = 0.0
    }

    if (msg.yaw_i_gain !== undefined) {
      resolved.yaw_i_gain = msg.yaw_i_gain;
    }
    else {
      resolved.yaw_i_gain = 0.0
    }

    if (msg.roll_d_gain !== undefined) {
      resolved.roll_d_gain = msg.roll_d_gain;
    }
    else {
      resolved.roll_d_gain = 0.0
    }

    if (msg.pitch_d_gain !== undefined) {
      resolved.pitch_d_gain = msg.pitch_d_gain;
    }
    else {
      resolved.pitch_d_gain = 0.0
    }

    if (msg.yaw_d_gain !== undefined) {
      resolved.yaw_d_gain = msg.yaw_d_gain;
    }
    else {
      resolved.yaw_d_gain = 0.0
    }

    if (msg.roll_const_gain !== undefined) {
      resolved.roll_const_gain = msg.roll_const_gain;
    }
    else {
      resolved.roll_const_gain = 0.0
    }

    if (msg.roll_error !== undefined) {
      resolved.roll_error = msg.roll_error;
    }
    else {
      resolved.roll_error = 0.0
    }

    if (msg.pitch_error !== undefined) {
      resolved.pitch_error = msg.pitch_error;
    }
    else {
      resolved.pitch_error = 0.0
    }

    if (msg.yaw_error !== undefined) {
      resolved.yaw_error = msg.yaw_error;
    }
    else {
      resolved.yaw_error = 0.0
    }

    if (msg.depth_error !== undefined) {
      resolved.depth_error = msg.depth_error;
    }
    else {
      resolved.depth_error = 0.0
    }

    if (msg.roll_error_integral !== undefined) {
      resolved.roll_error_integral = msg.roll_error_integral;
    }
    else {
      resolved.roll_error_integral = 0.0
    }

    if (msg.pitch_error_integral !== undefined) {
      resolved.pitch_error_integral = msg.pitch_error_integral;
    }
    else {
      resolved.pitch_error_integral = 0.0
    }

    if (msg.yaw_error_integral !== undefined) {
      resolved.yaw_error_integral = msg.yaw_error_integral;
    }
    else {
      resolved.yaw_error_integral = 0.0
    }

    if (msg.roll_p_contrib !== undefined) {
      resolved.roll_p_contrib = msg.roll_p_contrib;
    }
    else {
      resolved.roll_p_contrib = 0.0
    }

    if (msg.pitch_p_contrib !== undefined) {
      resolved.pitch_p_contrib = msg.pitch_p_contrib;
    }
    else {
      resolved.pitch_p_contrib = 0.0
    }

    if (msg.yaw_p_contrib !== undefined) {
      resolved.yaw_p_contrib = msg.yaw_p_contrib;
    }
    else {
      resolved.yaw_p_contrib = 0.0
    }

    if (msg.roll_i_contrib !== undefined) {
      resolved.roll_i_contrib = msg.roll_i_contrib;
    }
    else {
      resolved.roll_i_contrib = 0.0
    }

    if (msg.pitch_i_contrib !== undefined) {
      resolved.pitch_i_contrib = msg.pitch_i_contrib;
    }
    else {
      resolved.pitch_i_contrib = 0.0
    }

    if (msg.yaw_i_contrib !== undefined) {
      resolved.yaw_i_contrib = msg.yaw_i_contrib;
    }
    else {
      resolved.yaw_i_contrib = 0.0
    }

    if (msg.roll_d_contrib !== undefined) {
      resolved.roll_d_contrib = msg.roll_d_contrib;
    }
    else {
      resolved.roll_d_contrib = 0.0
    }

    if (msg.pitch_d_contrib !== undefined) {
      resolved.pitch_d_contrib = msg.pitch_d_contrib;
    }
    else {
      resolved.pitch_d_contrib = 0.0
    }

    if (msg.yaw_d_contrib !== undefined) {
      resolved.yaw_d_contrib = msg.yaw_d_contrib;
    }
    else {
      resolved.yaw_d_contrib = 0.0
    }

    if (msg.roll_const_contrib !== undefined) {
      resolved.roll_const_contrib = msg.roll_const_contrib;
    }
    else {
      resolved.roll_const_contrib = 0.0
    }

    if (msg.depth_p_gain !== undefined) {
      resolved.depth_p_gain = msg.depth_p_gain;
    }
    else {
      resolved.depth_p_gain = 0.0
    }

    if (msg.depth_d_gain !== undefined) {
      resolved.depth_d_gain = msg.depth_d_gain;
    }
    else {
      resolved.depth_d_gain = 0.0
    }

    if (msg.depth_derivative !== undefined) {
      resolved.depth_derivative = msg.depth_derivative;
    }
    else {
      resolved.depth_derivative = 0.0
    }

    if (msg.depth_p_contrib !== undefined) {
      resolved.depth_p_contrib = msg.depth_p_contrib;
    }
    else {
      resolved.depth_p_contrib = 0.0
    }

    if (msg.depth_d_contrib !== undefined) {
      resolved.depth_d_contrib = msg.depth_d_contrib;
    }
    else {
      resolved.depth_d_contrib = 0.0
    }

    if (msg.resultant_roll !== undefined) {
      resolved.resultant_roll = msg.resultant_roll;
    }
    else {
      resolved.resultant_roll = 0.0
    }

    if (msg.resultant_pitch !== undefined) {
      resolved.resultant_pitch = msg.resultant_pitch;
    }
    else {
      resolved.resultant_pitch = 0.0
    }

    if (msg.resultant_yaw !== undefined) {
      resolved.resultant_yaw = msg.resultant_yaw;
    }
    else {
      resolved.resultant_yaw = 0.0
    }

    if (msg.filtered_depth_derivative !== undefined) {
      resolved.filtered_depth_derivative = msg.filtered_depth_derivative;
    }
    else {
      resolved.filtered_depth_derivative = 0.0
    }

    if (msg.depth_d_filter_period !== undefined) {
      resolved.depth_d_filter_period = msg.depth_d_filter_period;
    }
    else {
      resolved.depth_d_filter_period = 0.0
    }

    if (msg.filtered_roll_deriv !== undefined) {
      resolved.filtered_roll_deriv = msg.filtered_roll_deriv;
    }
    else {
      resolved.filtered_roll_deriv = 0.0
    }

    if (msg.filtered_pitch_deriv !== undefined) {
      resolved.filtered_pitch_deriv = msg.filtered_pitch_deriv;
    }
    else {
      resolved.filtered_pitch_deriv = 0.0
    }

    if (msg.filtered_yaw_deriv !== undefined) {
      resolved.filtered_yaw_deriv = msg.filtered_yaw_deriv;
    }
    else {
      resolved.filtered_yaw_deriv = 0.0
    }

    if (msg.roll_d_filter_period !== undefined) {
      resolved.roll_d_filter_period = msg.roll_d_filter_period;
    }
    else {
      resolved.roll_d_filter_period = 0.0
    }

    if (msg.pitch_d_filter_period !== undefined) {
      resolved.pitch_d_filter_period = msg.pitch_d_filter_period;
    }
    else {
      resolved.pitch_d_filter_period = 0.0
    }

    if (msg.yaw_d_filter_period !== undefined) {
      resolved.yaw_d_filter_period = msg.yaw_d_filter_period;
    }
    else {
      resolved.yaw_d_filter_period = 0.0
    }

    if (msg.roll_target !== undefined) {
      resolved.roll_target = msg.roll_target;
    }
    else {
      resolved.roll_target = 0.0
    }

    if (msg.pitch_target !== undefined) {
      resolved.pitch_target = msg.pitch_target;
    }
    else {
      resolved.pitch_target = 0.0
    }

    if (msg.yaw_target !== undefined) {
      resolved.yaw_target = msg.yaw_target;
    }
    else {
      resolved.yaw_target = 0.0
    }

    if (msg.current_roll !== undefined) {
      resolved.current_roll = msg.current_roll;
    }
    else {
      resolved.current_roll = 0.0
    }

    if (msg.current_pitch !== undefined) {
      resolved.current_pitch = msg.current_pitch;
    }
    else {
      resolved.current_pitch = 0.0
    }

    if (msg.current_yaw !== undefined) {
      resolved.current_yaw = msg.current_yaw;
    }
    else {
      resolved.current_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = UberpilotStatus;
