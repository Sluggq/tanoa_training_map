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
 * [this, "bSec1"] call TFT_fnc_initBoundTarget;
 */
params ["_target", "_section"];

[_target, "BOUND"] call TFT_fnc_registerTarget;
[_target, _section] call TFT_fnc_registerTarget;
