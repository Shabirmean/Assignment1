// Auto-generated. Do not edit!

// (in-package aquacore.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class RunSimulationUntilTimeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_time = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_time')) {
        this.desired_time = initObj.desired_time
      }
      else {
        this.desired_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunSimulationUntilTimeRequest
    // Serialize message field [desired_time]
    bufferOffset = _serializer.time(obj.desired_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunSimulationUntilTimeRequest
    let len;
    let data = new RunSimulationUntilTimeRequest(null);
    // Deserialize message field [desired_time]
    data.desired_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/RunSimulationUntilTimeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9b97c64adca29990ce6f7a0dc757a00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time desired_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunSimulationUntilTimeRequest(null);
    if (msg.desired_time !== undefined) {
      resolved.desired_time = msg.desired_time;
    }
    else {
      resolved.desired_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class RunSimulationUntilTimeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.frequencies = null;
      this.amplitudes = null;
      this.leg_offsets = null;
      this.phase_offsets = null;
      this.joint_angles = null;
      this.imu_data = null;
      this.integrated_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
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
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('imu_data')) {
        this.imu_data = initObj.imu_data
      }
      else {
        this.imu_data = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('integrated_velocity')) {
        this.integrated_velocity = initObj.integrated_velocity
      }
      else {
        this.integrated_velocity = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunSimulationUntilTimeResponse
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
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
    // Check that the constant length array field [joint_angles] has the right length
    if (obj.joint_angles.length !== 6) {
      throw new Error('Unable to serialize array field joint_angles - length must be 6')
    }
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, 6);
    // Serialize message field [imu_data]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu_data, buffer, bufferOffset);
    // Check that the constant length array field [integrated_velocity] has the right length
    if (obj.integrated_velocity.length !== 3) {
      throw new Error('Unable to serialize array field integrated_velocity - length must be 3')
    }
    // Serialize message field [integrated_velocity]
    bufferOffset = _arraySerializer.float64(obj.integrated_velocity, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunSimulationUntilTimeResponse
    let len;
    let data = new RunSimulationUntilTimeResponse(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frequencies]
    data.frequencies = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [amplitudes]
    data.amplitudes = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [leg_offsets]
    data.leg_offsets = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [phase_offsets]
    data.phase_offsets = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [imu_data]
    data.imu_data = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [integrated_velocity]
    data.integrated_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu_data);
    return length + 272;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/RunSimulationUntilTimeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95407e38eb7e3d32da22f30447fb9d6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time timestamp
    float64[6] frequencies
    float64[6] amplitudes
    float64[6] leg_offsets
    float64[6] phase_offsets
    float64[6] joint_angles
    sensor_msgs/Imu imu_data
    float64[3] integrated_velocity
    
    
    ================================================================================
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
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
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunSimulationUntilTimeResponse(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
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

    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = new Array(6).fill(0)
    }

    if (msg.imu_data !== undefined) {
      resolved.imu_data = sensor_msgs.msg.Imu.Resolve(msg.imu_data)
    }
    else {
      resolved.imu_data = new sensor_msgs.msg.Imu()
    }

    if (msg.integrated_velocity !== undefined) {
      resolved.integrated_velocity = msg.integrated_velocity;
    }
    else {
      resolved.integrated_velocity = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: RunSimulationUntilTimeRequest,
  Response: RunSimulationUntilTimeResponse,
  md5sum() { return '458847662e311d516350b4039d9585f1'; },
  datatype() { return 'aquacore/RunSimulationUntilTime'; }
};
