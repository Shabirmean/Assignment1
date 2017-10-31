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

class AutopilotModes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutopilotModes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutopilotModes
    let len;
    let data = new AutopilotModes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/AutopilotModes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aaf40c41586272cf417462aa78a8b3a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 OFF = 0
    int32 ANGLES = 2
    int32 DEPTH = 4 # depth-regulated AP includes angle-regulation as well
    
    # The following are for 3D autopilot (see aquaautopilot ROS package)
    int32 AP_OFF = 0
    int32 AP_GLOBAL_ANGLES_LOCAL_THRUST = 2
    int32 AP_GLOBAL_ANGLES_FIXED_DEPTH = 4
    int32 AP_FIRST_INVALID_AP_MODE = 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutopilotModes(null);
    return resolved;
    }
};

// Constants for message
AutopilotModes.Constants = {
  OFF: 0,
  ANGLES: 2,
  DEPTH: 4,
  AP_OFF: 0,
  AP_GLOBAL_ANGLES_LOCAL_THRUST: 2,
  AP_GLOBAL_ANGLES_FIXED_DEPTH: 4,
  AP_FIRST_INVALID_AP_MODE: 5,
}

module.exports = AutopilotModes;
