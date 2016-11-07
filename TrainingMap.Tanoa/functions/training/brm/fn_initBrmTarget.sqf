/*
 * Author: yourstruly
 * Add necessary actions and handling for BRM target.
 *
 * Arguments:
 * 0: Target object <OBJECT>
 * 1: Line name <STRING>
 * 2: Row name <STRING>
 *
 * Return Value:
 * -
 *
 * Example:
 * [target1, "line2", "100m"] call TFT_fnc_initBrmTarget
 */
params ["_target", "_line", "_row"];

[_target, "BRM"] call TFT_fnc_registerTarget;
[_target, _line] call TFT_fnc_registerTarget;
[_target, _row]  call TFT_fnc_registerTarget;
