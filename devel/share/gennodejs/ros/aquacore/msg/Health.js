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

class Health {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.positions = null;
      this.temperatures = null;
      this.voltage = null;
      this.current = null;
      this.avgvoltage = null;
      this.avgcurrent = null;
      this.avgpower = null;
      this.battery_dod = null;
      this.hs_temp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
      if (initObj.hasOwnProperty('temperatures')) {
        this.temperatures = initObj.temperatures
      }
      else {
        this.temperatures = [];
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('avgvoltage')) {
        this.avgvoltage = initObj.avgvoltage
      }
      else {
        this.avgvoltage = 0.0;
      }
      if (initObj.hasOwnProperty('avgcurrent')) {
        this.avgcurrent = initObj.avgcurrent
      }
      else {
        this.avgcurrent = 0.0;
      }
      if (initObj.hasOwnProperty('avgpower')) {
        this.avgpower = initObj.avgpower
      }
      else {
        this.avgpower = 0.0;
      }
      if (initObj.hasOwnProperty('battery_dod')) {
        this.battery_dod = initObj.battery_dod
      }
      else {
        this.battery_dod = 0.0;
      }
      if (initObj.hasOwnProperty('hs_temp')) {
        this.hs_temp = initObj.hs_temp
      }
      else {
        this.hs_temp = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Health
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float32(obj.positions, buffer, bufferOffset, null);
    // Serialize message field [temperatures]
    bufferOffset = _arraySerializer.float32(obj.temperatures, buffer, bufferOffset, null);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [avgvoltage]
    bufferOffset = _serializer.float32(obj.avgvoltage, buffer, bufferOffset);
    // Serialize message field [avgcurrent]
    bufferOffset = _serializer.float32(obj.avgcurrent, buffer, bufferOffset);
    // Serialize message field [avgpower]
    bufferOffset = _serializer.float32(obj.avgpower, buffer, bufferOffset);
    // Serialize message field [battery_dod]
    bufferOffset = _serializer.float32(obj.battery_dod, buffer, bufferOffset);
    // Serialize message field [hs_temp]
    bufferOffset = _arraySerializer.float32(obj.hs_temp, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Health
    let len;
    let data = new Health(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [temperatures]
    data.temperatures = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [avgvoltage]
    data.avgvoltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [avgcurrent]
    data.avgcurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [avgpower]
    data.avgpower = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_dod]
    data.battery_dod = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hs_temp]
    data.hs_temp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.positions.length;
    length += 4 * object.temperatures.length;
    length += 4 * object.hs_temp.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/Health';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0da3e4b5a27813e5a5902cdd7574858';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32[] positions   #leg positions
    float32[] temperatures #leg temprature
    float32 voltage
    float32 current
    float32 avgvoltage
    float32 avgcurrent
    float32 avgpower
    float32 battery_dod
    float32[] hs_temp 
    
    #magnetometer
    #float32[] accelerations 
    #float32 heading
    #float32 pitch
    #float32 roll
    #float32 dip
    
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
    const resolved = new Health(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    if (msg.temperatures !== undefined) {
      resolved.temperatures = msg.temperatures;
    }
    else {
      resolved.temperatures = []
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.avgvoltage !== undefined) {
      resolved.avgvoltage = msg.avgvoltage;
    }
    else {
      resolved.avgvoltage = 0.0
    }

    if (msg.avgcurrent !== undefined) {
      resolved.avgcurrent = msg.avgcurrent;
    }
    else {
      resolved.avgcurrent = 0.0
    }

    if (msg.avgpower !== undefined) {
      resolved.avgpower = msg.avgpower;
    }
    else {
      resolved.avgpower = 0.0
    }

    if (msg.battery_dod !== undefined) {
      resolved.battery_dod = msg.battery_dod;
    }
    else {
      resolved.battery_dod = 0.0
    }

    if (msg.hs_temp !== undefined) {
      resolved.hs_temp = msg.hs_temp;
    }
    else {
      resolved.hs_temp = []
    }

    return resolved;
    }
};

module.exports = Health;
