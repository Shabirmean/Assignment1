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


//-----------------------------------------------------------

class DumpAllVarsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DumpAllVarsRequest
    // Serialize message field [current]
    bufferOffset = _serializer.bool(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DumpAllVarsRequest
    let len;
    let data = new DumpAllVarsRequest(null);
    // Deserialize message field [current]
    data.current = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/DumpAllVarsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '505dc5e366ed09a17f865d02426eb5e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DumpAllVarsRequest(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = false
    }

    return resolved;
    }
};

class DumpAllVarsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foreaft = null;
      this.leftright = null;
      this.yaw = null;
      this.roll = null;
      this.pitch = null;
      this.heave = null;
      this.speed = null;
      this.visYawCmd = null;
      this.visPitchCmd = null;
      this.visSpeedCmd = null;
      this.isSpeedValid = null;
      this.gaitID = null;
      this.commandWord = null;
      this.PitchTrim = null;
      this.RollTrim = null;
      this.YawTrim = null;
      this.YawGyroDrift = null;
      this.gaitselect = null;
      this.enableIntegration = null;
      this.visEnable = null;
      this.setLEDs = null;
      this.AutopilotSelect = null;
      this.AutopilotMode = null;
      this.update = null;
      this.modePause = null;
      this.zeroDepth = null;
      this.SetGyro = null;
      this.SetGyroValue = null;
      this.period = null;
      this.oscRatio = null;
      this.amplitude = null;
      this.iir = null;
      this.visYawGain = null;
      this.visPitchGain = null;
      this.visSpeedGain = null;
      this.actuatorOffset = null;
      this.GuiTargetDepth = null;
      this.ApTargetRollCmd = null;
      this.ApTargetPitchCmd = null;
      this.ApTargetYawCmd = null;
      this.GuiParam0 = null;
      this.GuiParam1 = null;
      this.GuiParam2 = null;
      this.GuiParam3 = null;
      this.GuiParam4 = null;
      this.GuiParam5 = null;
      this.GuiParam6 = null;
      this.GuiParam7 = null;
      this.GuiParam8 = null;
    }
    else {
      if (initObj.hasOwnProperty('foreaft')) {
        this.foreaft = initObj.foreaft
      }
      else {
        this.foreaft = 0.0;
      }
      if (initObj.hasOwnProperty('leftright')) {
        this.leftright = initObj.leftright
      }
      else {
        this.leftright = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('heave')) {
        this.heave = initObj.heave
      }
      else {
        this.heave = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('visYawCmd')) {
        this.visYawCmd = initObj.visYawCmd
      }
      else {
        this.visYawCmd = 0.0;
      }
      if (initObj.hasOwnProperty('visPitchCmd')) {
        this.visPitchCmd = initObj.visPitchCmd
      }
      else {
        this.visPitchCmd = 0.0;
      }
      if (initObj.hasOwnProperty('visSpeedCmd')) {
        this.visSpeedCmd = initObj.visSpeedCmd
      }
      else {
        this.visSpeedCmd = 0.0;
      }
      if (initObj.hasOwnProperty('isSpeedValid')) {
        this.isSpeedValid = initObj.isSpeedValid
      }
      else {
        this.isSpeedValid = false;
      }
      if (initObj.hasOwnProperty('gaitID')) {
        this.gaitID = initObj.gaitID
      }
      else {
        this.gaitID = 0;
      }
      if (initObj.hasOwnProperty('commandWord')) {
        this.commandWord = initObj.commandWord
      }
      else {
        this.commandWord = 0;
      }
      if (initObj.hasOwnProperty('PitchTrim')) {
        this.PitchTrim = initObj.PitchTrim
      }
      else {
        this.PitchTrim = 0.0;
      }
      if (initObj.hasOwnProperty('RollTrim')) {
        this.RollTrim = initObj.RollTrim
      }
      else {
        this.RollTrim = 0.0;
      }
      if (initObj.hasOwnProperty('YawTrim')) {
        this.YawTrim = initObj.YawTrim
      }
      else {
        this.YawTrim = 0.0;
      }
      if (initObj.hasOwnProperty('YawGyroDrift')) {
        this.YawGyroDrift = initObj.YawGyroDrift
      }
      else {
        this.YawGyroDrift = 0.0;
      }
      if (initObj.hasOwnProperty('gaitselect')) {
        this.gaitselect = initObj.gaitselect
      }
      else {
        this.gaitselect = 0;
      }
      if (initObj.hasOwnProperty('enableIntegration')) {
        this.enableIntegration = initObj.enableIntegration
      }
      else {
        this.enableIntegration = 0;
      }
      if (initObj.hasOwnProperty('visEnable')) {
        this.visEnable = initObj.visEnable
      }
      else {
        this.visEnable = 0;
      }
      if (initObj.hasOwnProperty('setLEDs')) {
        this.setLEDs = initObj.setLEDs
      }
      else {
        this.setLEDs = 0;
      }
      if (initObj.hasOwnProperty('AutopilotSelect')) {
        this.AutopilotSelect = initObj.AutopilotSelect
      }
      else {
        this.AutopilotSelect = 0;
      }
      if (initObj.hasOwnProperty('AutopilotMode')) {
        this.AutopilotMode = initObj.AutopilotMode
      }
      else {
        this.AutopilotMode = 0;
      }
      if (initObj.hasOwnProperty('update')) {
        this.update = initObj.update
      }
      else {
        this.update = 0;
      }
      if (initObj.hasOwnProperty('modePause')) {
        this.modePause = initObj.modePause
      }
      else {
        this.modePause = 0;
      }
      if (initObj.hasOwnProperty('zeroDepth')) {
        this.zeroDepth = initObj.zeroDepth
      }
      else {
        this.zeroDepth = 0;
      }
      if (initObj.hasOwnProperty('SetGyro')) {
        this.SetGyro = initObj.SetGyro
      }
      else {
        this.SetGyro = 0;
      }
      if (initObj.hasOwnProperty('SetGyroValue')) {
        this.SetGyroValue = initObj.SetGyroValue
      }
      else {
        this.SetGyroValue = 0.0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
      if (initObj.hasOwnProperty('oscRatio')) {
        this.oscRatio = initObj.oscRatio
      }
      else {
        this.oscRatio = 0.0;
      }
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('iir')) {
        this.iir = initObj.iir
      }
      else {
        this.iir = 0.0;
      }
      if (initObj.hasOwnProperty('visYawGain')) {
        this.visYawGain = initObj.visYawGain
      }
      else {
        this.visYawGain = 0.0;
      }
      if (initObj.hasOwnProperty('visPitchGain')) {
        this.visPitchGain = initObj.visPitchGain
      }
      else {
        this.visPitchGain = 0.0;
      }
      if (initObj.hasOwnProperty('visSpeedGain')) {
        this.visSpeedGain = initObj.visSpeedGain
      }
      else {
        this.visSpeedGain = 0.0;
      }
      if (initObj.hasOwnProperty('actuatorOffset')) {
        this.actuatorOffset = initObj.actuatorOffset
      }
      else {
        this.actuatorOffset = 0.0;
      }
      if (initObj.hasOwnProperty('GuiTargetDepth')) {
        this.GuiTargetDepth = initObj.GuiTargetDepth
      }
      else {
        this.GuiTargetDepth = 0.0;
      }
      if (initObj.hasOwnProperty('ApTargetRollCmd')) {
        this.ApTargetRollCmd = initObj.ApTargetRollCmd
      }
      else {
        this.ApTargetRollCmd = 0.0;
      }
      if (initObj.hasOwnProperty('ApTargetPitchCmd')) {
        this.ApTargetPitchCmd = initObj.ApTargetPitchCmd
      }
      else {
        this.ApTargetPitchCmd = 0.0;
      }
      if (initObj.hasOwnProperty('ApTargetYawCmd')) {
        this.ApTargetYawCmd = initObj.ApTargetYawCmd
      }
      else {
        this.ApTargetYawCmd = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam0')) {
        this.GuiParam0 = initObj.GuiParam0
      }
      else {
        this.GuiParam0 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam1')) {
        this.GuiParam1 = initObj.GuiParam1
      }
      else {
        this.GuiParam1 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam2')) {
        this.GuiParam2 = initObj.GuiParam2
      }
      else {
        this.GuiParam2 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam3')) {
        this.GuiParam3 = initObj.GuiParam3
      }
      else {
        this.GuiParam3 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam4')) {
        this.GuiParam4 = initObj.GuiParam4
      }
      else {
        this.GuiParam4 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam5')) {
        this.GuiParam5 = initObj.GuiParam5
      }
      else {
        this.GuiParam5 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam6')) {
        this.GuiParam6 = initObj.GuiParam6
      }
      else {
        this.GuiParam6 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam7')) {
        this.GuiParam7 = initObj.GuiParam7
      }
      else {
        this.GuiParam7 = 0.0;
      }
      if (initObj.hasOwnProperty('GuiParam8')) {
        this.GuiParam8 = initObj.GuiParam8
      }
      else {
        this.GuiParam8 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DumpAllVarsResponse
    // Serialize message field [foreaft]
    bufferOffset = _serializer.float32(obj.foreaft, buffer, bufferOffset);
    // Serialize message field [leftright]
    bufferOffset = _serializer.float32(obj.leftright, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [heave]
    bufferOffset = _serializer.float32(obj.heave, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [visYawCmd]
    bufferOffset = _serializer.float32(obj.visYawCmd, buffer, bufferOffset);
    // Serialize message field [visPitchCmd]
    bufferOffset = _serializer.float32(obj.visPitchCmd, buffer, bufferOffset);
    // Serialize message field [visSpeedCmd]
    bufferOffset = _serializer.float32(obj.visSpeedCmd, buffer, bufferOffset);
    // Serialize message field [isSpeedValid]
    bufferOffset = _serializer.bool(obj.isSpeedValid, buffer, bufferOffset);
    // Serialize message field [gaitID]
    bufferOffset = _serializer.int32(obj.gaitID, buffer, bufferOffset);
    // Serialize message field [commandWord]
    bufferOffset = _serializer.int32(obj.commandWord, buffer, bufferOffset);
    // Serialize message field [PitchTrim]
    bufferOffset = _serializer.float32(obj.PitchTrim, buffer, bufferOffset);
    // Serialize message field [RollTrim]
    bufferOffset = _serializer.float32(obj.RollTrim, buffer, bufferOffset);
    // Serialize message field [YawTrim]
    bufferOffset = _serializer.float32(obj.YawTrim, buffer, bufferOffset);
    // Serialize message field [YawGyroDrift]
    bufferOffset = _serializer.float32(obj.YawGyroDrift, buffer, bufferOffset);
    // Serialize message field [gaitselect]
    bufferOffset = _serializer.int32(obj.gaitselect, buffer, bufferOffset);
    // Serialize message field [enableIntegration]
    bufferOffset = _serializer.int32(obj.enableIntegration, buffer, bufferOffset);
    // Serialize message field [visEnable]
    bufferOffset = _serializer.int32(obj.visEnable, buffer, bufferOffset);
    // Serialize message field [setLEDs]
    bufferOffset = _serializer.int32(obj.setLEDs, buffer, bufferOffset);
    // Serialize message field [AutopilotSelect]
    bufferOffset = _serializer.int32(obj.AutopilotSelect, buffer, bufferOffset);
    // Serialize message field [AutopilotMode]
    bufferOffset = _serializer.int32(obj.AutopilotMode, buffer, bufferOffset);
    // Serialize message field [update]
    bufferOffset = _serializer.int32(obj.update, buffer, bufferOffset);
    // Serialize message field [modePause]
    bufferOffset = _serializer.int32(obj.modePause, buffer, bufferOffset);
    // Serialize message field [zeroDepth]
    bufferOffset = _serializer.int32(obj.zeroDepth, buffer, bufferOffset);
    // Serialize message field [SetGyro]
    bufferOffset = _serializer.int32(obj.SetGyro, buffer, bufferOffset);
    // Serialize message field [SetGyroValue]
    bufferOffset = _serializer.float32(obj.SetGyroValue, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.float32(obj.period, buffer, bufferOffset);
    // Serialize message field [oscRatio]
    bufferOffset = _serializer.float32(obj.oscRatio, buffer, bufferOffset);
    // Serialize message field [amplitude]
    bufferOffset = _serializer.float32(obj.amplitude, buffer, bufferOffset);
    // Serialize message field [iir]
    bufferOffset = _serializer.float32(obj.iir, buffer, bufferOffset);
    // Serialize message field [visYawGain]
    bufferOffset = _serializer.float32(obj.visYawGain, buffer, bufferOffset);
    // Serialize message field [visPitchGain]
    bufferOffset = _serializer.float32(obj.visPitchGain, buffer, bufferOffset);
    // Serialize message field [visSpeedGain]
    bufferOffset = _serializer.float32(obj.visSpeedGain, buffer, bufferOffset);
    // Serialize message field [actuatorOffset]
    bufferOffset = _serializer.float32(obj.actuatorOffset, buffer, bufferOffset);
    // Serialize message field [GuiTargetDepth]
    bufferOffset = _serializer.float32(obj.GuiTargetDepth, buffer, bufferOffset);
    // Serialize message field [ApTargetRollCmd]
    bufferOffset = _serializer.float32(obj.ApTargetRollCmd, buffer, bufferOffset);
    // Serialize message field [ApTargetPitchCmd]
    bufferOffset = _serializer.float32(obj.ApTargetPitchCmd, buffer, bufferOffset);
    // Serialize message field [ApTargetYawCmd]
    bufferOffset = _serializer.float32(obj.ApTargetYawCmd, buffer, bufferOffset);
    // Serialize message field [GuiParam0]
    bufferOffset = _serializer.float32(obj.GuiParam0, buffer, bufferOffset);
    // Serialize message field [GuiParam1]
    bufferOffset = _serializer.float32(obj.GuiParam1, buffer, bufferOffset);
    // Serialize message field [GuiParam2]
    bufferOffset = _serializer.float32(obj.GuiParam2, buffer, bufferOffset);
    // Serialize message field [GuiParam3]
    bufferOffset = _serializer.float32(obj.GuiParam3, buffer, bufferOffset);
    // Serialize message field [GuiParam4]
    bufferOffset = _serializer.float32(obj.GuiParam4, buffer, bufferOffset);
    // Serialize message field [GuiParam5]
    bufferOffset = _serializer.float32(obj.GuiParam5, buffer, bufferOffset);
    // Serialize message field [GuiParam6]
    bufferOffset = _serializer.float32(obj.GuiParam6, buffer, bufferOffset);
    // Serialize message field [GuiParam7]
    bufferOffset = _serializer.float32(obj.GuiParam7, buffer, bufferOffset);
    // Serialize message field [GuiParam8]
    bufferOffset = _serializer.float32(obj.GuiParam8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DumpAllVarsResponse
    let len;
    let data = new DumpAllVarsResponse(null);
    // Deserialize message field [foreaft]
    data.foreaft = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [leftright]
    data.leftright = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heave]
    data.heave = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visYawCmd]
    data.visYawCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visPitchCmd]
    data.visPitchCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visSpeedCmd]
    data.visSpeedCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isSpeedValid]
    data.isSpeedValid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gaitID]
    data.gaitID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [commandWord]
    data.commandWord = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PitchTrim]
    data.PitchTrim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RollTrim]
    data.RollTrim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YawTrim]
    data.YawTrim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YawGyroDrift]
    data.YawGyroDrift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gaitselect]
    data.gaitselect = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enableIntegration]
    data.enableIntegration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [visEnable]
    data.visEnable = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [setLEDs]
    data.setLEDs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [AutopilotSelect]
    data.AutopilotSelect = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [AutopilotMode]
    data.AutopilotMode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [update]
    data.update = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [modePause]
    data.modePause = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [zeroDepth]
    data.zeroDepth = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [SetGyro]
    data.SetGyro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [SetGyroValue]
    data.SetGyroValue = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [oscRatio]
    data.oscRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [amplitude]
    data.amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iir]
    data.iir = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visYawGain]
    data.visYawGain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visPitchGain]
    data.visPitchGain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visSpeedGain]
    data.visSpeedGain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actuatorOffset]
    data.actuatorOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiTargetDepth]
    data.GuiTargetDepth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ApTargetRollCmd]
    data.ApTargetRollCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ApTargetPitchCmd]
    data.ApTargetPitchCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ApTargetYawCmd]
    data.ApTargetYawCmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam0]
    data.GuiParam0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam1]
    data.GuiParam1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam2]
    data.GuiParam2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam3]
    data.GuiParam3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam4]
    data.GuiParam4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam5]
    data.GuiParam5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam6]
    data.GuiParam6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam7]
    data.GuiParam7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GuiParam8]
    data.GuiParam8 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 193;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aquacore/DumpAllVarsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fde576d15cca1da7597e8c96378fef78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 foreaft
    float32 leftright
    float32 yaw
    float32 roll
    float32 pitch
    float32 heave
    float32 speed
    float32 visYawCmd
    float32 visPitchCmd
    float32 visSpeedCmd
    bool isSpeedValid
    int32 gaitID
    int32 commandWord
    float32 PitchTrim
    float32 RollTrim
    float32 YawTrim
    float32 YawGyroDrift
    int32 gaitselect
    int32 enableIntegration
    int32 visEnable
    int32 setLEDs
    int32 AutopilotSelect
    int32 AutopilotMode
    int32 update
    int32 modePause
    int32 zeroDepth
    int32 SetGyro
    float32 SetGyroValue
    
    
    float32 period
    float32 oscRatio
    float32 amplitude
    float32 iir
    float32 visYawGain
    float32 visPitchGain
    float32 visSpeedGain
    float32 actuatorOffset
    float32 GuiTargetDepth
    float32 ApTargetRollCmd
    float32 ApTargetPitchCmd
    float32 ApTargetYawCmd
    float32 GuiParam0
    float32 GuiParam1
    float32 GuiParam2
    float32 GuiParam3
    float32 GuiParam4
    float32 GuiParam5
    float32 GuiParam6
    float32 GuiParam7
    float32 GuiParam8
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DumpAllVarsResponse(null);
    if (msg.foreaft !== undefined) {
      resolved.foreaft = msg.foreaft;
    }
    else {
      resolved.foreaft = 0.0
    }

    if (msg.leftright !== undefined) {
      resolved.leftright = msg.leftright;
    }
    else {
      resolved.leftright = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.heave !== undefined) {
      resolved.heave = msg.heave;
    }
    else {
      resolved.heave = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.visYawCmd !== undefined) {
      resolved.visYawCmd = msg.visYawCmd;
    }
    else {
      resolved.visYawCmd = 0.0
    }

    if (msg.visPitchCmd !== undefined) {
      resolved.visPitchCmd = msg.visPitchCmd;
    }
    else {
      resolved.visPitchCmd = 0.0
    }

    if (msg.visSpeedCmd !== undefined) {
      resolved.visSpeedCmd = msg.visSpeedCmd;
    }
    else {
      resolved.visSpeedCmd = 0.0
    }

    if (msg.isSpeedValid !== undefined) {
      resolved.isSpeedValid = msg.isSpeedValid;
    }
    else {
      resolved.isSpeedValid = false
    }

    if (msg.gaitID !== undefined) {
      resolved.gaitID = msg.gaitID;
    }
    else {
      resolved.gaitID = 0
    }

    if (msg.commandWord !== undefined) {
      resolved.commandWord = msg.commandWord;
    }
    else {
      resolved.commandWord = 0
    }

    if (msg.PitchTrim !== undefined) {
      resolved.PitchTrim = msg.PitchTrim;
    }
    else {
      resolved.PitchTrim = 0.0
    }

    if (msg.RollTrim !== undefined) {
      resolved.RollTrim = msg.RollTrim;
    }
    else {
      resolved.RollTrim = 0.0
    }

    if (msg.YawTrim !== undefined) {
      resolved.YawTrim = msg.YawTrim;
    }
    else {
      resolved.YawTrim = 0.0
    }

    if (msg.YawGyroDrift !== undefined) {
      resolved.YawGyroDrift = msg.YawGyroDrift;
    }
    else {
      resolved.YawGyroDrift = 0.0
    }

    if (msg.gaitselect !== undefined) {
      resolved.gaitselect = msg.gaitselect;
    }
    else {
      resolved.gaitselect = 0
    }

    if (msg.enableIntegration !== undefined) {
      resolved.enableIntegration = msg.enableIntegration;
    }
    else {
      resolved.enableIntegration = 0
    }

    if (msg.visEnable !== undefined) {
      resolved.visEnable = msg.visEnable;
    }
    else {
      resolved.visEnable = 0
    }

    if (msg.setLEDs !== undefined) {
      resolved.setLEDs = msg.setLEDs;
    }
    else {
      resolved.setLEDs = 0
    }

    if (msg.AutopilotSelect !== undefined) {
      resolved.AutopilotSelect = msg.AutopilotSelect;
    }
    else {
      resolved.AutopilotSelect = 0
    }

    if (msg.AutopilotMode !== undefined) {
      resolved.AutopilotMode = msg.AutopilotMode;
    }
    else {
      resolved.AutopilotMode = 0
    }

    if (msg.update !== undefined) {
      resolved.update = msg.update;
    }
    else {
      resolved.update = 0
    }

    if (msg.modePause !== undefined) {
      resolved.modePause = msg.modePause;
    }
    else {
      resolved.modePause = 0
    }

    if (msg.zeroDepth !== undefined) {
      resolved.zeroDepth = msg.zeroDepth;
    }
    else {
      resolved.zeroDepth = 0
    }

    if (msg.SetGyro !== undefined) {
      resolved.SetGyro = msg.SetGyro;
    }
    else {
      resolved.SetGyro = 0
    }

    if (msg.SetGyroValue !== undefined) {
      resolved.SetGyroValue = msg.SetGyroValue;
    }
    else {
      resolved.SetGyroValue = 0.0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    if (msg.oscRatio !== undefined) {
      resolved.oscRatio = msg.oscRatio;
    }
    else {
      resolved.oscRatio = 0.0
    }

    if (msg.amplitude !== undefined) {
      resolved.amplitude = msg.amplitude;
    }
    else {
      resolved.amplitude = 0.0
    }

    if (msg.iir !== undefined) {
      resolved.iir = msg.iir;
    }
    else {
      resolved.iir = 0.0
    }

    if (msg.visYawGain !== undefined) {
      resolved.visYawGain = msg.visYawGain;
    }
    else {
      resolved.visYawGain = 0.0
    }

    if (msg.visPitchGain !== undefined) {
      resolved.visPitchGain = msg.visPitchGain;
    }
    else {
      resolved.visPitchGain = 0.0
    }

    if (msg.visSpeedGain !== undefined) {
      resolved.visSpeedGain = msg.visSpeedGain;
    }
    else {
      resolved.visSpeedGain = 0.0
    }

    if (msg.actuatorOffset !== undefined) {
      resolved.actuatorOffset = msg.actuatorOffset;
    }
    else {
      resolved.actuatorOffset = 0.0
    }

    if (msg.GuiTargetDepth !== undefined) {
      resolved.GuiTargetDepth = msg.GuiTargetDepth;
    }
    else {
      resolved.GuiTargetDepth = 0.0
    }

    if (msg.ApTargetRollCmd !== undefined) {
      resolved.ApTargetRollCmd = msg.ApTargetRollCmd;
    }
    else {
      resolved.ApTargetRollCmd = 0.0
    }

    if (msg.ApTargetPitchCmd !== undefined) {
      resolved.ApTargetPitchCmd = msg.ApTargetPitchCmd;
    }
    else {
      resolved.ApTargetPitchCmd = 0.0
    }

    if (msg.ApTargetYawCmd !== undefined) {
      resolved.ApTargetYawCmd = msg.ApTargetYawCmd;
    }
    else {
      resolved.ApTargetYawCmd = 0.0
    }

    if (msg.GuiParam0 !== undefined) {
      resolved.GuiParam0 = msg.GuiParam0;
    }
    else {
      resolved.GuiParam0 = 0.0
    }

    if (msg.GuiParam1 !== undefined) {
      resolved.GuiParam1 = msg.GuiParam1;
    }
    else {
      resolved.GuiParam1 = 0.0
    }

    if (msg.GuiParam2 !== undefined) {
      resolved.GuiParam2 = msg.GuiParam2;
    }
    else {
      resolved.GuiParam2 = 0.0
    }

    if (msg.GuiParam3 !== undefined) {
      resolved.GuiParam3 = msg.GuiParam3;
    }
    else {
      resolved.GuiParam3 = 0.0
    }

    if (msg.GuiParam4 !== undefined) {
      resolved.GuiParam4 = msg.GuiParam4;
    }
    else {
      resolved.GuiParam4 = 0.0
    }

    if (msg.GuiParam5 !== undefined) {
      resolved.GuiParam5 = msg.GuiParam5;
    }
    else {
      resolved.GuiParam5 = 0.0
    }

    if (msg.GuiParam6 !== undefined) {
      resolved.GuiParam6 = msg.GuiParam6;
    }
    else {
      resolved.GuiParam6 = 0.0
    }

    if (msg.GuiParam7 !== undefined) {
      resolved.GuiParam7 = msg.GuiParam7;
    }
    else {
      resolved.GuiParam7 = 0.0
    }

    if (msg.GuiParam8 !== undefined) {
      resolved.GuiParam8 = msg.GuiParam8;
    }
    else {
      resolved.GuiParam8 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: DumpAllVarsRequest,
  Response: DumpAllVarsResponse,
  md5sum() { return '0a763daf42d6252113b71c689c9e864f'; },
  datatype() { return 'aquacore/DumpAllVars'; }
};
