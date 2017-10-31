
"use strict";

let EmptyBool = require('./EmptyBool.js')
let SetTargetAngles = require('./SetTargetAngles.js')
let GetState = require('./GetState.js')
let IsCalibrated = require('./IsCalibrated.js')
let SetTargetDepth = require('./SetTargetDepth.js')
let GetLegParams = require('./GetLegParams.js')
let GetAutopilotState = require('./GetAutopilotState.js')
let GetAutopilotParams = require('./GetAutopilotParams.js')
let SetUpRegulatedSwimMode = require('./SetUpRegulatedSwimMode.js')
let SetLegParams = require('./SetLegParams.js')
let EnableDepthControl = require('./EnableDepthControl.js')
let EnableAutopilot = require('./EnableAutopilot.js')
let SetGait = require('./SetGait.js')
let GetNamedBool = require('./GetNamedBool.js')
let SetBool = require('./SetBool.js')
let SetAutopilotMode = require('./SetAutopilotMode.js')
let SetString = require('./SetString.js')
let GetNamedFloat = require('./GetNamedFloat.js')
let SetPeriodicLegCommand = require('./SetPeriodicLegCommand.js')
let SetDirection = require('./SetDirection.js')
let SetPauseMode = require('./SetPauseMode.js')
let GetPeriodicLegCommand = require('./GetPeriodicLegCommand.js')
let SetNamedFloat = require('./SetNamedFloat.js')
let GetTargetLegAngles = require('./GetTargetLegAngles.js')
let GetNamedInt = require('./GetNamedInt.js')
let RunSimulationUntilTime = require('./RunSimulationUntilTime.js')
let Menu = require('./Menu.js')
let SetTargetLegAngles = require('./SetTargetLegAngles.js')
let SetAutopilotParams = require('./SetAutopilotParams.js')
let StepSimulation = require('./StepSimulation.js')
let DumpAllVars = require('./DumpAllVars.js')

module.exports = {
  EmptyBool: EmptyBool,
  SetTargetAngles: SetTargetAngles,
  GetState: GetState,
  IsCalibrated: IsCalibrated,
  SetTargetDepth: SetTargetDepth,
  GetLegParams: GetLegParams,
  GetAutopilotState: GetAutopilotState,
  GetAutopilotParams: GetAutopilotParams,
  SetUpRegulatedSwimMode: SetUpRegulatedSwimMode,
  SetLegParams: SetLegParams,
  EnableDepthControl: EnableDepthControl,
  EnableAutopilot: EnableAutopilot,
  SetGait: SetGait,
  GetNamedBool: GetNamedBool,
  SetBool: SetBool,
  SetAutopilotMode: SetAutopilotMode,
  SetString: SetString,
  GetNamedFloat: GetNamedFloat,
  SetPeriodicLegCommand: SetPeriodicLegCommand,
  SetDirection: SetDirection,
  SetPauseMode: SetPauseMode,
  GetPeriodicLegCommand: GetPeriodicLegCommand,
  SetNamedFloat: SetNamedFloat,
  GetTargetLegAngles: GetTargetLegAngles,
  GetNamedInt: GetNamedInt,
  RunSimulationUntilTime: RunSimulationUntilTime,
  Menu: Menu,
  SetTargetLegAngles: SetTargetLegAngles,
  SetAutopilotParams: SetAutopilotParams,
  StepSimulation: StepSimulation,
  DumpAllVars: DumpAllVars,
};
