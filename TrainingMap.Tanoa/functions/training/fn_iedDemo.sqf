/*
 * Author: yourstruly
 * IED demonstration showing different explosive effects.
 *
 * Arguments:
 * 0: List of IEDs and their names <ARRAY>
 *
 * Return Value:
 * -
 *
 * Example:
 * [ [[ied1, "Small IED"], [ied2, "Large IED"]] ] call TFT_fnc_iedDemo
 */
params ["_iedList"];

_participants = (getMarkerPos "iedDemo") nearEntities ["CAManBase", 55];

"Commencing IED Demonstration" remoteExec ["hint", _participants];
sleep 3;

{
    _x params ["_type", "_name"];
    [_name,-1,-1,4,0,0,777] remoteExec ["BIS_fnc_dynamicText", _participants];
    sleep 1;
    _ied = (str _type) createVehicle (getPos _type);
    _ied setdamage 1;
    sleep 4;
} forEach _iedList;

"Demonstration complete" remoteExec ["hint", _participants];
