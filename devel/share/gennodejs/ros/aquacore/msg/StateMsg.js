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

class StateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.LED = null;
      this.Gait = null;
      this.RollAngle = null;
      this.PitchAngle = null;
      this.YawAngle = null;
      this.RollTargetAngle = null;
      this.PitchTargetAngle = null;
      this.YawTargetAngle = null;
      this.DepthTarget = null;
      this.AvgRollCommand = null;
      this.AvgPitchCommand = null;
      this.AvgYawCommand = null;
      this.AvgHeaveCommand = null;
      this.AvgSurgeCommand = null;
      this.AutopilotMode = null;
      this.Depth = null;
      this.Speed = null;
      this.LegCurrents = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('LED')) {
        this.LED = initObj.LED
      }
      else {
        this.LED = 0;
      }
      if (initObj.hasOwnProperty('Gait')) {
        this.Gait = initObj.Gait
      }
      else {
        this.Gait = 0;
      }
      if (initObj.hasOwnProperty('RollAngle')) {
        this.RollAngle = initObj.RollAngle
      }
      else {
        this.RollAngle = 0.0;
      }
      if (initObj.hasOwnProperty('PitchAngle')) {
        this.PitchAngle = initObj.PitchAngle
      }
      else {
        this.PitchAngle = 0.0;
      }
      if (initObj.hasOwnProperty('YawAngle')) {
        this.YawAngle = initObj.YawAngle
      }
      else {
        this.YawAngle = 0.0;
      }
      if (initObj.hasOwnProperty('RollTargetAngle')) {
        this.RollTargetAngle = initObj.RollTargetAngle
      }
      else {
        this.RollTargetAngle = 0.0;
      }
      if (initObj.hasOwnProperty('PitchTargetAngle')) {
        this.PitchTargetAngle = initObj.PitchTargetAngle
      }
      else {
        this.PitchTargetAngle = 0.0;
      }
      if (initObj.hasOwnProperty('YawTargetAngle')) {
        this.YawTargetAngle = initObj.YawTargetAngle
      }
      else {
        this.YawTargetAngle = 0.0;
      }
      if (initObj.hasOwnProperty('DepthTarget')) {
        this.DepthTarget = initObj.DepthTarget
      }
      else {
        this.DepthTarget = 0.0;
      }
      if (initObj.hasOwnProperty('AvgRollCommand')) {
        this.AvgRollCommand = initObj.AvgRollCommand
      }
      else {
        this.AvgRollCommand = 0.0;
      }
      if (initObj.hasOwnProperty('AvgPitchCommand')) {
        this.AvgPitchCommand = initObj.AvgPitchCommand
      }
      else {
        this.AvgPitchCommand = 0.0;
      }
      if (initObj.hasOwnProperty('AvgYawCommand')) {
        this.AvgYawCommand = initObj.AvgYawCommand
      }
      else {
        this.AvgYawCommand = 0.0;
      }
      if (initObj.hasOwnProperty('AvgHeaveCommand')) {
        this.AvgHeaveCommand = initObj.AvgHeaveCommand
      }
      else {
        this.AvgHeaveCommand = 0.0;
      }
      if (initObj.hasOwnProperty('AvgSurgeCommand')) {
        this.AvgSurgeCommand = initObj.AvgSurgeCommand
      }
      else {
        this.AvgSurgeCommand = 0.0;
      }
      if (initObj.hasOwnProperty('AutopilotMode')) {
        this.AutopilotMode = initObj.AutopilotMode
      }
      else {
        this.AutopilotMode = 0;
      }
      if (initObj.hasOwnProperty('Depth')) {
        this.Depth = initObj.Depth
      }
      else {
        this.Depth = 0.0;
      }
      if (initObj.hasOwnProperty('Speed')) {
        this.Speed = initObj.Speed
      }
      else {
        this.Speed = 0.0;
      }
      if (initObj.hasOwnProperty('LegCurrents')) {
        this.LegCurrents = initObj.LegCurrents
      }
      else {
        this.LegCurrents = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StateMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [LED]
    bufferOffset = _serializer.int32(obj.LED, buffer, bufferOffset);
    // Serialize message field [Gait]
    bufferOffset = _serializer.int32(obj.Gait, buffer, bufferOffset);
    // Serialize message field [RollAngle]
    bufferOffset = _serializer.float32(obj.RollAngle, buffer, bufferOffset);
    // Serialize message field [PitchAngle]
    bufferOffset = _serializer.float32(obj.PitchAngle, buffer, bufferOffset);
    // Serialize message field [YawAngle]
    bufferOffset = _serializer.float32(obj.YawAngle, buffer, bufferOffset);
    // Serialize message field [RollTargetAngle]
    bufferOffset = _serializer.float32(obj.RollTargetAngle, buffer, bufferOffset);
    // Serialize message field [PitchTargetAngle]
    bufferOffset = _serializer.float32(obj.PitchTargetAngle, buffer, bufferOffset);
    // Serialize message field [YawTargetAngle]
    bufferOffset = _serializer.float32(obj.YawTargetAngle, buffer, bufferOffset);
    // Serialize message field [DepthTarget]
    bufferOffset = _serializer.float32(obj.DepthTarget, buffer, bufferOffset);
    // Serialize message field [AvgRollCommand]
    bufferOffset = _serializer.float32(obj.AvgRollCommand, buffer, bufferOffset);
    // Serialize message field [AvgPitchCommand]
    bufferOffset = _serializer.float32(obj.AvgPitchCommand, buffer, bufferOffset);
    // Serialize message field [AvgYawCommand]
    bufferOffset = _serializer.float32(obj.AvgYawCommand, buffer, bufferOffset);
    // Serialize message field [AvgHeaveCommand]
    bufferOffset = _serializer.float32(obj.AvgHeaveCommand, buffer, bufferOffset);
    // Serialize message field [AvgSurgeCommand]
    bufferOffset = _serializer.float32(obj.AvgSurgeCommand, buffer, bufferOffset);
    // Serialize message field [AutopilotMode]
    bufferOffset = _serializer.int32(obj.AutopilotMode, buffer, bufferOffset);
    // Serialize message field [Depth]
    bufferOffset = _serializer.float32(obj.Depth, buffer, bufferOffset);
    // Serialize message field [Speed]
    bufferOffset = _serializer.float32(obj.Speed, buffer, bufferOffset);
    // Serialize message field [LegCurrents]
    bufferOffset = _arraySerializer.float32(obj.LegCurrents, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StateMsg
    let len;
    let data = new StateMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [LED]
    data.LED = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Gait]
    data.Gait = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [RollAngle]
    data.RollAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PitchAngle]
    data.PitchAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YawAngle]
    data.YawAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RollTargetAngle]
    data.RollTargetAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PitchTargetAngle]
    data.PitchTargetAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YawTargetAngle]
    data.YawTargetAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DepthTarget]
    data.DepthTarget = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AvgRollCommand]
    data.AvgRollCommand = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AvgPitchCommand]
    data.AvgPitchCommand = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AvgYawCommand]
    data.AvgYawCommand = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AvgHeaveCommand]
    data.AvgHeaveCommand = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AvgSurgeCommand]
    data.AvgSurgeCommand = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AutopilotMode]
    data.AutopilotMode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Depth]
    data.Depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Speed]
    data.Speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LegCurrents]
    data.LegCurrents = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.LegCurrents.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/StateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f3da9637657db8621e960d32a985a35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 LED
    int32 Gait
    
    float32 RollAngle
    float32 PitchAngle
    float32 YawAngle
    
    float32 RollTargetAngle
    float32 PitchTargetAngle
    float32 YawTargetAngle
    float32 DepthTarget
    
    float32 AvgRollCommand
    float32 AvgPitchCommand
    float32 AvgYawCommand
    float32 AvgHeaveCommand
    float32 AvgSurgeCommand
    
    int32 AutopilotMode
    float32 Depth
    float32 Speed
    
    float32[] LegCurrents
    
    
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
    const resolved = new StateMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.LED !== undefined) {
      resolved.LED = msg.LED;
    }
    else {
      resolved.LED = 0
    }

    if (msg.Gait !== undefined) {
      resolved.Gait = msg.Gait;
    }
    else {
      resolved.Gait = 0
    }

    if (msg.RollAngle !== undefined) {
      resolved.RollAngle = msg.RollAngle;
    }
    else {
      resolved.RollAngle = 0.0
    }

    if (msg.PitchAngle !== undefined) {
      resolved.PitchAngle = msg.PitchAngle;
    }
    else {
      resolved.PitchAngle = 0.0
    }

    if (msg.YawAngle !== undefined) {
      resolved.YawAngle = msg.YawAngle;
    }
    else {
      resolved.YawAngle = 0.0
    }

    if (msg.RollTargetAngle !== undefined) {
      resolved.RollTargetAngle = msg.RollTargetAngle;
    }
    else {
      resolved.RollTargetAngle = 0.0
    }

    if (msg.PitchTargetAngle !== undefined) {
      resolved.PitchTargetAngle = msg.PitchTargetAngle;
    }
    else {
      resolved.PitchTargetAngle = 0.0
    }

    if (msg.YawTargetAngle !== undefined) {
      resolved.YawTargetAngle = msg.YawTargetAngle;
    }
    else {
      resolved.YawTargetAngle = 0.0
    }

    if (msg.DepthTarget !== undefined) {
      resolved.DepthTarget = msg.DepthTarget;
    }
    else {
      resolved.DepthTarget = 0.0
    }

    if (msg.AvgRollCommand !== undefined) {
      resolved.AvgRollCommand = msg.AvgRollCommand;
    }
    else {
      resolved.AvgRollCommand = 0.0
    }

    if (msg.AvgPitchCommand !== undefined) {
      resolved.AvgPitchCommand = msg.AvgPitchCommand;
    }
    else {
      resolved.AvgPitchCommand = 0.0
    }

    if (msg.AvgYawCommand !== undefined) {
      resolved.AvgYawCommand = msg.AvgYawCommand;
    }
    else {
      resolved.AvgYawCommand = 0.0
    }

    if (msg.AvgHeaveCommand !== undefined) {
      resolved.AvgHeaveCommand = msg.AvgHeaveCommand;
    }
    else {
      resolved.AvgHeaveCommand = 0.0
    }

    if (msg.AvgSurgeCommand !== undefined) {
      resolved.AvgSurgeCommand = msg.AvgSurgeCommand;
    }
    else {
      resolved.AvgSurgeCommand = 0.0
    }

    if (msg.AutopilotMode !== undefined) {
      resolved.AutopilotMode = msg.AutopilotMode;
    }
    else {
      resolved.AutopilotMode = 0
    }

    if (msg.Depth !== undefined) {
      resolved.Depth = msg.Depth;
    }
    else {
      resolved.Depth = 0.0
    }

    if (msg.Speed !== undefined) {
      resolved.Speed = msg.Speed;
    }
    else {
      resolved.Speed = 0.0
    }

    if (msg.LegCurrents !== undefined) {
      resolved.LegCurrents = msg.LegCurrents;
    }
    else {
      resolved.LegCurrents = []
    }

    return resolved;
    }
};

module.exports = StateMsg;
