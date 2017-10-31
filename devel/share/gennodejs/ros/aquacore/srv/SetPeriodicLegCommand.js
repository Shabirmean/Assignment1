// Auto-generated. Do not edit!

// (in-package aquacore.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPeriodicLegCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frequencies = null;
      this.amplitudes = null;
      this.leg_offsets = null;
      this.phase_offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frequencies')) {
        this.frequencies = initObj.frequencies
      }
      else {
        this.frequencies = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('amplitudes')) {
        this.amplitudes = initObj.amplitudes
      }
      else {
        this.amplitudes = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('leg_offsets')) {
        this.leg_offsets = initObj.leg_offsets
      }
      else {
        this.leg_offsets = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('phase_offsets')) {
        this.phase_offsets = initObj.phase_offsets
      }
      else {
        this.phase_offsets = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPeriodicLegCommandRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [frequencies] has the right length
    if (obj.frequencies.length !== 6) {
      throw new Error('Unable to serialize array field frequencies - length must be 6')
    }
    // Serialize message field [frequencies]
    bufferOffset = _arraySerializer.float64(obj.frequencies, buffer, bufferOffset, 6);
    // Check that the constant length array field [amplitudes] has the right length
    if (obj.amplitudes.length !== 6) {
      throw new Error('Unable to serialize array field amplitudes - length must be 6')
    }
    // Serialize message field [amplitudes]
    bufferOffset = _arraySerializer.float64(obj.amplitudes, buffer, bufferOffset, 6);
    // Check that the constant length array field [leg_offsets] has the right length
    if (obj.leg_offsets.length !== 6) {
      throw new Error('Unable to serialize array field leg_offsets - length must be 6')
    }
    // Serialize message field [leg_offsets]
    bufferOffset = _arraySerializer.float64(obj.leg_offsets, buffer, bufferOffset, 6);
    // Check that the constant length array field [phase_offsets] has the right length
    if (obj.phase_offsets.length !== 6) {
      throw new Error('Unable to serialize array field phase_offsets - length must be 6')
    }
    // Serialize message field [phase_offsets]
    bufferOffset = _arraySerializer.float64(obj.phase_offsets, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPeriodicLegCommandRequest
    let len;
    let data = new SetPeriodicLegCommandRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frequencies]
    data.frequencies = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [amplitudes]
    data.amplitudes = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [leg_offsets]
    data.leg_offsets = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [phase_offsets]
    data.phase_offsets = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 192;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetPeriodicLegCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e706408018621c179fa26af34ef37d03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[6] frequencies
    float64[6] amplitudes
    float64[6] leg_offsets
    float64[6] phase_offsets
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPeriodicLegCommandRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frequencies !== undefined) {
      resolved.frequencies = msg.frequencies;
    }
    else {
      resolved.frequencies = new Array(6).fill(0)
    }

    if (msg.amplitudes !== undefined) {
      resolved.amplitudes = msg.amplitudes;
    }
    else {
      resolved.amplitudes = new Array(6).fill(0)
    }

    if (msg.leg_offsets !== undefined) {
      resolved.leg_offsets = msg.leg_offsets;
    }
    else {
      resolved.leg_offsets = new Array(6).fill(0)
    }

    if (msg.phase_offsets !== undefined) {
      resolved.phase_offsets = msg.phase_offsets;
    }
    else {
      resolved.phase_offsets = new Array(6).fill(0)
    }

    return resolved;
    }
};

class SetPeriodicLegCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPeriodicLegCommandResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPeriodicLegCommandResponse
    let len;
    let data = new SetPeriodicLegCommandResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/SetPeriodicLegCommandResponse';
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
    const resolved = new SetPeriodicLegCommandResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetPeriodicLegCommandRequest,
  Response: SetPeriodicLegCommandResponse,
  md5sum() { return 'e706408018621c179fa26af34ef37d03'; },
  datatype() { return 'aquacore/SetPeriodicLegCommand'; }
};
