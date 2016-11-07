/*
 * Author: Frankie
 * Displays the total amount of time on the display boards to show how slow you are.
 *
 * Arguments:
 * -
 *
 * Return Value:
 * -
 *
 * Example:
 * [] call TFT_fnc_timerDisplay;
 */


//timeTotal = finishTime - startTime;
//publicVariable "timeTotal";
//result = [timeTotal] call BIS_fnc_secondsToString;
//publicVariable "result";
_resultOrig = missionNamespace getVariable "result";
 
 
_seconds1 = _resultOrig select [6,1];
_seconds11 = _seconds1 call BIS_fnc_parseNumber;
_seconds2 = _resultOrig select [7,1];
_seconds22 = _seconds2 call BIS_fnc_parseNumber;
_minutes1 = _resultOrig select[3,1];
_minutes11 = _minutes1 call BIS_fnc_parseNumber;
_minutes2 = _resultOrig select[4,1];
_minutes22 = _minutes2 call BIS_fnc_parseNumber;

if (_seconds11 == 0) then{driveSec1 setobjecttextureglobal[0,'images\numbers\0.paa']};
if (_seconds11 == 1) then{driveSec1 setobjecttextureglobal[0,'images\numbers\1.paa']};
if (_seconds11 == 2) then{driveSec1 setobjecttextureglobal[0,'images\numbers\2.paa']};
if (_seconds11 == 3) then{driveSec1 setobjecttextureglobal[0,'images\numbers\3.paa']};
if (_seconds11 == 4) then{driveSec1 setobjecttextureglobal[0,'images\numbers\4.paa']};
if (_seconds11 == 5) then{driveSec1 setobjecttextureglobal[0,'images\numbers\5.paa']};
if (_seconds11 == 6) then{driveSec1 setobjecttextureglobal[0,'images\numbers\6.paa']};
if (_seconds11 == 7) then{driveSec1 setobjecttextureglobal[0,'images\numbers\7.paa']};
if (_seconds11 == 8) then{driveSec1 setobjecttextureglobal[0,'images\numbers\8.paa']};
if (_seconds11 == 9) then{driveSec1 setobjecttextureglobal[0,'images\numbers\9.paa']};

if (_seconds22 == 0) then{driveSec2 setobjecttextureglobal[0,'images\numbers\0.paa']};
if (_seconds22 == 1) then{driveSec2 setobjecttextureglobal[0,'images\numbers\1.paa']};
if (_seconds22 == 2) then{driveSec2 setobjecttextureglobal[0,'images\numbers\2.paa']};
if (_seconds22 == 3) then{driveSec2 setobjecttextureglobal[0,'images\numbers\3.paa']};
if (_seconds22 == 4) then{driveSec2 setobjecttextureglobal[0,'images\numbers\4.paa']};
if (_seconds22 == 5) then{driveSec2 setobjecttextureglobal[0,'images\numbers\5.paa']};
if (_seconds22 == 6) then{driveSec2 setobjecttextureglobal[0,'images\numbers\6.paa']};
if (_seconds22 == 7) then{driveSec2 setobjecttextureglobal[0,'images\numbers\7.paa']};
if (_seconds22 == 8) then{driveSec2 setobjecttextureglobal[0,'images\numbers\8.paa']};
if (_seconds22 == 9) then{driveSec2 setobjecttextureglobal[0,'images\numbers\9.paa']};

if (_minutes11 == 0) then{driveMin1 setobjecttextureglobal[0,'images\numbers\0.paa']};
if (_minutes11 == 1) then{driveMin1 setobjecttextureglobal[0,'images\numbers\1.paa']};
if (_minutes11 == 2) then{driveMin1 setobjecttextureglobal[0,'images\numbers\2.paa']};
if (_minutes11 == 3) then{driveMin1 setobjecttextureglobal[0,'images\numbers\3.paa']};
if (_minutes11 == 4) then{driveMin1 setobjecttextureglobal[0,'images\numbers\4.paa']};
if (_minutes11 == 5) then{driveMin1 setobjecttextureglobal[0,'images\numbers\5.paa']};
if (_minutes11 == 6) then{driveMin1 setobjecttextureglobal[0,'images\numbers\6.paa']};
if (_minutes11 == 7) then{driveMin1 setobjecttextureglobal[0,'images\numbers\7.paa']};
if (_minutes11 == 8) then{driveMin1 setobjecttextureglobal[0,'images\numbers\8.paa']};
if (_minutes11 == 9) then{driveMin1 setobjecttextureglobal[0,'images\numbers\9.paa']};

if (_minutes22 == 0) then{driveMin2 setobjecttextureglobal[0,'images\numbers\0.paa']};
if (_minutes22 == 1) then{driveMin2 setobjecttextureglobal[0,'images\numbers\1.paa']};
if (_minutes22 == 2) then{driveMin2 setobjecttextureglobal[0,'images\numbers\2.paa']};
if (_minutes22 == 3) then{driveMin2 setobjecttextureglobal[0,'images\numbers\3.paa']};
if (_minutes22 == 4) then{driveMin2 setobjecttextureglobal[0,'images\numbers\4.paa']};
if (_minutes22 == 5) then{driveMin2 setobjecttextureglobal[0,'images\numbers\5.paa']};
if (_minutes22 == 6) then{driveMin2 setobjecttextureglobal[0,'images\numbers\6.paa']};
if (_minutes22 == 7) then{driveMin2 setobjecttextureglobal[0,'images\numbers\7.paa']};
if (_minutes22 == 8) then{driveMin2 setobjecttextureglobal[0,'images\numbers\8.paa']};
if (_minutes22 == 9) then{driveMin2 setobjecttextureglobal[0,'images\numbers\9.paa']};