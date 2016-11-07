/*
 * Author: yourstruly
 * Teleport object to the a soecific location.
 *
 * Arguments:
 * 0: Object to teleport <OBJECT>
 * 1: Teleport destination <ARRAY>
 *
 * Return Value:
 * -
 *
 * Example:
 * [player, getPos flag] call TFT_fnc_teleport
 */
params ["_teleporter", "_position"];

if(isNil "_teleporter" || {isNull _teleporter}) exitWith {};

"tft_tp" cutText ["","BLACK OUT"];
sleep 2;

_teleporter setPos (_position vectorAdd [(random 10) - 5, (random 10) - 5, 0]);

"tft_tp" cutText ["","BLACK IN"];
