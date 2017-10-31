// Auto-generated. Do not edit!

// (in-package aquajoy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AquaTeleopJoyParams = require('../msg/AquaTeleopJoyParams.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateAquaTeleopJoyParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_params = null;
    }
    else {
      if (initObj.hasOwnProperty('new_params')) {
        this.new_params = initObj.new_params
      }
      else {
        this.new_params = new AquaTeleopJoyParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateAquaTeleopJoyParamsRequest
    // Serialize message field [new_params]
    bufferOffset = AquaTeleopJoyParams.serialize(obj.new_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateAquaTeleopJoyParamsRequest
    let len;
    let data = new UpdateAquaTeleopJoyParamsRequest(null);
    // Deserialize message field [new_params]
    data.new_params = AquaTeleopJoyParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquajoy/UpdateAquaTeleopJoyParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e83859aeb42bc42c7f92e0fd76391e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    aquajoy/AquaTeleopJoyParams new_params
    
    ================================================================================
    MSG: aquajoy/AquaTeleopJoyParams
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
    const resolved = new UpdateAquaTeleopJoyParamsRequest(null);
    if (msg.new_params !== undefined) {
      resolved.new_params = AquaTeleopJoyParams.Resolve(msg.new_params)
    }
    else {
      resolved.new_params = new AquaTeleopJoyParams()
    }

    return resolved;
    }
};

class UpdateAquaTeleopJoyParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateAquaTeleopJoyParamsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateAquaTeleopJoyParamsResponse
    let len;
    let data = new UpdateAquaTeleopJoyParamsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquajoy/UpdateAquaTeleopJoyParamsResponse';
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
    const resolved = new UpdateAquaTeleopJoyParamsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: UpdateAquaTeleopJoyParamsRequest,
  Response: UpdateAquaTeleopJoyParamsResponse,
  md5sum() { return '1e83859aeb42bc42c7f92e0fd76391e7'; },
  datatype() { return 'aquajoy/UpdateAquaTeleopJoyParams'; }
};
