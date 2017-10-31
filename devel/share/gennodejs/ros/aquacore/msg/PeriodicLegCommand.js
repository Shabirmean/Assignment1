// Auto-generated. Do not edit!

// (in-package aquacore.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PeriodicLegCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.amplitudes = null;
      this.frequencies = null;
      this.phase_offsets = null;
      this.leg_offsets = null;
      this.leg_velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('amplitudes')) {
        this.amplitudes = initObj.amplitudes
      }
      else {
        this.amplitudes = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('frequencies')) {
        this.frequencies = initObj.frequencies
      }
      else {
        this.frequencies = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('phase_offsets')) {
        this.phase_offsets = initObj.phase_offsets
      }
      else {
        this.phase_offsets = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('leg_offsets')) {
        this.leg_offsets = initObj.leg_offsets
      }
      else {
        this.leg_offsets = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('leg_velocities')) {
        this.leg_velocities = initObj.leg_velocities
      }
      else {
        this.leg_velocities = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PeriodicLegCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [amplitudes] has the right length
    if (obj.amplitudes.length !== 6) {
      throw new Error('Unable to serialize array field amplitudes - length must be 6')
    }
    // Serialize message field [amplitudes]
    bufferOffset = _arraySerializer.float32(obj.amplitudes, buffer, bufferOffset, 6);
    // Check that the constant length array field [frequencies] has the right length
    if (obj.frequencies.length !== 6) {
      throw new Error('Unable to serialize array field frequencies - length must be 6')
    }
    // Serialize message field [frequencies]
    bufferOffset = _arraySerializer.float32(obj.frequencies, buffer, bufferOffset, 6);
    // Check that the constant length array field [phase_offsets] has the right length
    if (obj.phase_offsets.length !== 6) {
      throw new Error('Unable to serialize array field phase_offsets - length must be 6')
    }
    // Serialize message field [phase_offsets]
    bufferOffset = _arraySerializer.float32(obj.phase_offsets, buffer, bufferOffset, 6);
    // Check that the constant length array field [leg_offsets] has the right length
    if (obj.leg_offsets.length !== 6) {
      throw new Error('Unable to serialize array field leg_offsets - length must be 6')
    }
    // Serialize message field [leg_offsets]
    bufferOffset = _arraySerializer.float32(obj.leg_offsets, buffer, bufferOffset, 6);
    // Check that the constant length array field [leg_velocities] has the right length
    if (obj.leg_velocities.length !== 6) {
      throw new Error('Unable to serialize array field leg_velocities - length must be 6')
    }
    // Serialize message field [leg_velocities]
    bufferOffset = _arraySerializer.float32(obj.leg_velocities, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PeriodicLegCommand
    let len;
    let data = new PeriodicLegCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [amplitudes]
    data.amplitudes = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [frequencies]
    data.frequencies = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [phase_offsets]
    data.phase_offsets = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [leg_offsets]
    data.leg_offsets = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [leg_velocities]
    data.leg_velocities = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/PeriodicLegCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48094d6d773e147611fe2c7c7ff18406';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the leg command parameterization that was decided by consensus at 
    # MRL in July, 2014. The intention is that ROS-coded gaits will publish messages of this
    # type, and that the aqua robot as well as its simulator will implement leg motions 
    # that follow the requested sinusoidal trajectories.
    #
    # Author: David Meger
    # Date: July 29, 2014 
    
    Header header
    
    #
    # The ordering of the 6 legs in all following arrays is:
    # 0: front-left
    # 1: mid-left
    # 2: hind-left
    # 3: front-right
    # 4: mid-right
    # 5: hind-right
    #
    # The orientation of the leg angles are:
    # 0: pointing backwards
    # pi: pointing downwards
    # 2*pi: pointing forwards
    #
    # Computation of current leg angle:
    # leg_angle = amplitude * cos(2*pi * frequency * dt + phase_offset) + leg_offset
    #
    # Midoff positioning and velocity modes:
    #
    # The midoff angle of each leg can be commanded in either position mode or in
    # velocity mode. They are implemented as follows:
    #
    # if leg_velocities[i] != 0:
    #   actual leg offset = last internally-stored leg offset + leg_velocities[i]*dt
    # else:
    #   actual leg offset = leg_offsets[i]
    
    float32[6] amplitudes     # units: rad
    float32[6] frequencies    # units: hz
    float32[6] phase_offsets  # units: rad
    float32[6] leg_offsets    # units: rad
    float32[6] leg_velocities # units: rad/s
    
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
    const resolved = new PeriodicLegCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.amplitudes !== undefined) {
      resolved.amplitudes = msg.amplitudes;
    }
    else {
      resolved.amplitudes = new Array(6).fill(0)
    }

    if (msg.frequencies !== undefined) {
      resolved.frequencies = msg.frequencies;
    }
    else {
      resolved.frequencies = new Array(6).fill(0)
    }

    if (msg.phase_offsets !== undefined) {
      resolved.phase_offsets = msg.phase_offsets;
    }
    else {
      resolved.phase_offsets = new Array(6).fill(0)
    }

    if (msg.leg_offsets !== undefined) {
      resolved.leg_offsets = msg.leg_offsets;
    }
    else {
      resolved.leg_offsets = new Array(6).fill(0)
    }

    if (msg.leg_velocities !== undefined) {
      resolved.leg_velocities = msg.leg_velocities;
    }
    else {
      resolved.leg_velocities = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = PeriodicLegCommand;
