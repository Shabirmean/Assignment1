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

class SwimForwardFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percent_time_completed = null;
    }
    else {
      if (initObj.hasOwnProperty('percent_time_completed')) {
        this.percent_time_completed = initObj.percent_time_completed
      }
      else {
        this.percent_time_completed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwimForwardFeedback
    // Serialize message field [percent_time_completed]
    bufferOffset = _serializer.float64(obj.percent_time_completed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwimForwardFeedback
    let len;
    let data = new SwimForwardFeedback(null);
    // Deserialize message field [percent_time_completed]
    data.percent_time_completed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aquacore/SwimForwardFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5d72683b5876219c47676683509ce7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    # Feedback
    float64 percent_time_completed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwimForwardFeedback(null);
    if (msg.percent_time_completed !== undefined) {
      resolved.percent_time_completed = msg.percent_time_completed;
    }
    else {
      resolved.percent_time_completed = 0.0
    }

    return resolved;
    }
};

module.exports = SwimForwardFeedback;
