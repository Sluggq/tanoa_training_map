/*
 * Author: Frankie based off yourstruly
 * Add necessary actions and handling for BRM target.
 *
 * Arguments:
 * 0: Target object <OBJECT>
 * 1: Section name <STRING>
 *
 * Return Value:
 * -
 *
 * Example:
 * [this, "section1"] call TFT_fnc_initDriveTarget
 */
params ["_target", "_section"];

[_target, "DRIVE"] call TFT_fnc_registerTarget;
[_target, _section] call TFT_fnc_registerTarget;
