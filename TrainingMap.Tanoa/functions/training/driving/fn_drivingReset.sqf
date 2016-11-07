/*
 * Author: Frankie
 * Resets the driving range with new triggers and moves barriers back to starting positions
 *
 * Arguments:
 * -
 *
 * Return Value:
 * -
 *
 * Example:
 * [] call TFT_fnc_drivingReset;
 */

// Reset barriers to starting position
barrier1 setPos [4118.11,13578,0];
barrier1 setDir 79;
barrier2 setPos [3783.43,13435.3,0];
barrier2 setDir 59;
barrier3 setPos [3762.52,13361.2,0.0010004];
barrier3 setDir 270;
barrier4 setPos [3768.08,13364.1,0];
barrier4 setDir 23;
barrier5 setPos [4060.74,13582.3,0];
barrier5 setDir 184;
barrier6 setPos [4057.12,13582.6,0];
barrier6 setDir 184;

// Make all targets go down
["DRIVE", 1] call TFT_fnc_toggleTargets;

// Trigger starts timer and moves road barriers to block incoming traffic onto the range
_driveTrgStart = createTrigger ["EmptyDetector",[3899.89,13421.7,9.53674e-007]];
_driveTrgStart setTriggerArea [4,7,327,true];
_driveTrgStart setTriggerActivation["WEST","PRESENT",false];
_driveTrgStart setTriggerStatements ["this","driveStatus setobjecttextureglobal[0,'images\status\inProgress.paa']; driveStatus2 setobjecttextureglobal[0,'images\status\inProgress.paa']; startTime = time; drivingRngBlock1 setPos [3786.09,13319.2,0]; drivingRngBlock1 setDir 246; drivingRngBlock2 setPos [3787.82,13315.5,0]; drivingRngBlock2 setDir 246; drivingRngBlock3 setPos [3784,13318.7,0]; drivingRngBlock3 setDir 251; drivingRngBlock4 setPos [3785.41,13315.4,0]; drivingRngBlock4 setDir 243; drivingRngBlock5 setPos [4000.54,13736.7,0]; drivingRngBlock5 setDir 312; drivingRngBlock6 setPos [4003.3,13739.9,0]; drivingRngBlock6 setDir 312; drivingRngBlock7 setPos [3999.39,13739.4,0]; drivingRngBlock7 setDir 316; drivingRngBlock8 setPos [4002.09,13742.1,0]; drivingRngBlock8 setDir 316;",""];

// Trigger moves barriers for flow of traffic during trial
_driveTrg1 = createTrigger ["EmptyDetector",[4166.01,13670.1,0]];
_driveTrg1 setTriggerArea [5,13,287,true];
_driveTrg1 setTriggerActivation["WEST","PRESENT",false];
_driveTrg1 setTriggerStatements ["this","barrier1 setPos [4116.71,13584.4,0]; barrier1 setDir 116; barrier5 setPos [4056.08,13589.7,0]; barrier5 setDir 281; barrier6 setPos [4055.36,13585.9,1.90735e-006]; barrier6 setDir 281;",""];

// Trigger moves barriers for flow of traffic during trial
_driveTrg2 = createTrigger ["EmptyDetector",[3858.04,13557,0]];
_driveTrg2 setTriggerArea [28,5,0,true];
_driveTrg2 setTriggerActivation ["WEST","PRESENT",false];
_driveTrg2 setTriggerStatements ["this","barrier2 setPos [3789.25,13430.8,0]; barrier2 setDir 202; barrier3 setPos [3759.38,13365.4,0]; barrier3 setDir 159; barrier4 setPos [3758.42,13372.6,0]; barrier4 setDir 357;",""];

_driveSec1 = createTrigger ["EmptyDetector",[3944.27,13465.1,0.0649996]];
_driveSec1 setTriggerArea [4,17,87,true];
_driveSec1 setTriggerActivation ["WEST","PRESENT",false];
_driveSec1 setTriggerStatements ["this","['section1', 0] call TFT_fnc_toggleTargets;",""];

_driveSec2 = createTrigger ["EmptyDetector",[4023.52,13570.9,0]];
_driveSec2 setTriggerArea [4,17,146,true];
_driveSec2 setTriggerActivation ["WEST","PRESENT",false];
_driveSec2 setTriggerStatements ["this","['section2', 0] call TFT_fnc_toggleTargets;",""];

_driveSec3 = createTrigger ["EmptyDetector",[4133.31,13609.2,0]];
_driveSec3 setTriggerArea [4,17,113,true];
_driveSec3 setTriggerActivation ["WEST","PRESENT",false];
_driveSec3 setTriggerStatements ["this","['section3', 0] call TFT_fnc_toggleTargets;",""];

_driveSec4 = createTrigger ["EmptyDetector",[4076.16,13737.1,0]];
_driveSec4 setTriggerArea [4,17,334,true];
_driveSec4 setTriggerActivation ["WEST","PRESENT",false];
_driveSec4 setTriggerStatements ["this","['section4', 0] call TFT_fnc_toggleTargets;",""];

_driveSec5 = createTrigger ["EmptyDetector",[3917.37,13729.5,-0.00399971]];
_driveSec5 setTriggerArea [4,17,20,true];
_driveSec5 setTriggerActivation ["WEST","PRESENT",false];
_driveSec5 setTriggerStatements ["this","['section5', 0] call TFT_fnc_toggleTargets;",""];

_driveSec6 = createTrigger ["EmptyDetector",[3834.1,13705.6,-0.0480003]];
_driveSec6 setTriggerArea [4,17,146,true];
_driveSec6 setTriggerActivation ["WEST","PRESENT",false];
_driveSec6 setTriggerStatements ["this","['section6', 0] call TFT_fnc_toggleTargets;",""];

_driveSec7 = createTrigger ["EmptyDetector",[3784.73,13648,0]];
_driveSec7 setTriggerArea [4,17,250,true];
_driveSec7 setTriggerActivation ["WEST","PRESENT",false];
_driveSec7 setTriggerStatements ["this","['section7', 0] call TFT_fnc_toggleTargets;",""];

_driveSec8 = createTrigger ["EmptyDetector",[3701.62,13527.2,-0.199001]];
_driveSec8 setTriggerArea [4,17,334,true];
_driveSec8 setTriggerActivation ["WEST","PRESENT",false];
_driveSec8 setTriggerStatements ["this","['section8', 0] call TFT_fnc_toggleTargets;",""];

_driveSec9 = createTrigger ["EmptyDetector",[3688.42,13446.3,-0.175999]];
_driveSec9 setTriggerArea [4,17,236,true];
_driveSec9 setTriggerActivation ["WEST","PRESENT",false];
_driveSec9 setTriggerStatements ["this","['section9', 0] call TFT_fnc_toggleTargets;",""];

_driveSec10 = createTrigger ["EmptyDetector",[3859.93,13594.8,0]];
_driveSec10 setTriggerArea [4,17,236,true];
_driveSec10 setTriggerActivation ["WEST","PRESENT",false];
_driveSec10 setTriggerStatements ["this","['section10', 0] call TFT_fnc_toggleTargets;",""];

_driveSec11 = createTrigger ["EmptyDetector",[3886.91,13256.1,-0.027]];
_driveSec11 setTriggerArea [4,17,194,true];
_driveSec11 setTriggerActivation ["WEST","PRESENT",false];
_driveSec11 setTriggerStatements ["this","['section11', 0] call TFT_fnc_toggleTargets;",""];

_driveSec12 = createTrigger ["EmptyDetector",[4077.16,13385,0.139]];
_driveSec12 setTriggerArea [4,17,94,true];
_driveSec12 setTriggerActivation ["WEST","PRESENT",false];
_driveSec12 setTriggerStatements ["this","['section12', 0] call TFT_fnc_toggleTargets;",""];

_driveSec13 = createTrigger ["EmptyDetector",[4125.81,13553.5,0.139999]];
_driveSec13 setTriggerArea [4,17,94,true];
_driveSec13 setTriggerActivation ["WEST","PRESENT",false];
_driveSec13 setTriggerStatements ["this","['section13', 0] call TFT_fnc_toggleTargets;",""];

// Trigger stops timer, displays time on the display, and moves road barriers for incoming traffic onto the range
_driveTrgEnd = createTrigger ["EmptyDetector",[3920.52,13383.7,0]];
_driveTrgEnd setTriggerArea [4,7,151,true];
_driveTrgEnd setTriggerActivation["WEST","PRESENT",false];
_driveTrgEnd setTriggerStatements ["this","driveStatus setobjecttextureglobal[0,'images\status\complete.paa']; driveStatus2 setobjecttextureglobal[0,'images\status\complete.paa']; finishTime = time; timeTotal = finishTime - startTime; result = [timeTotal] call BIS_fnc_secondsToString; hint format ['Time: %1 seconds',result]; publicVariable 'result';[] call TFT_fnc_timerDisplay;drivingRngBlock1 setPos [3782.84,13308.1,-0.00699997]; drivingRngBlock1 setDir 325; drivingRngBlock2 setPos [3783.45,13307.5,0]; drivingRngBlock2 setDir 325; drivingRngBlock3 setPos [3784.89,13306.6,-0.00699997]; drivingRngBlock3 setDir 328; drivingRngBlock4 setPos [3785.55,13305,-0.00699997]; drivingRngBlock4 setDir 285; drivingRngBlock5 setPos [4006.95,13745.1,0]; drivingRngBlock5 setDir 219; drivingRngBlock6 setPos [4007.74,13746.2,0]; drivingRngBlock6 setDir 219; drivingRngBlock7 setPos [4004.49,13747.8,0]; drivingRngBlock7 setDir 317; drivingRngBlock8 setPos [4009.69,13744.3,0]; drivingRngBlock8 setDir 316;",""];

driveStatus setobjecttextureglobal[0,"images\status\ready.paa"];
driveStatus2 setobjecttextureglobal[0,"images\status\ready.paa"];

hint "Driving range reset";