/*
 * Author: yourstruly
 * Replace static targets with live ones (or the other way around) in CQB area.
 *
 * Arguments:
 * 0: Object which is responsible for the switch <OBJECT>
 *
 * Return Value:
 * -
 *
 * Example:
 * [laptop] call TFT_fnc_toggleLiveTargets
 */
params ["_object"];

_participants = (getMarkerPos "cqb_area") nearEntities ["CAManBase", 50];

if(_object getVariable ["TFT_CQB_live", false]) then {
    {
        deleteVehicle _x;
    } forEach (_object getVariable ["TFT_CQB_liveUnits", []]);
    {
        [_x, false] remoteExec ["hideObjectGlobal", 2];
    } forEach (missionNamespace getVariable ["TFT_targets_opfor", []]);
    _object setVariable ["TFT_CQB_live", false, false];
    (parseText "<t size='1.2' color='#aaffaa'>Live targets are OFF</t>") remoteExec ["hint", _participants];
} else {
    _units = [];
    {
        [_x, true] remoteExec ["hideObjectGlobal", 2];

        _group = createGroup east;
        _unit = _group createUnit ["O_Soldier_F", getPos _x, [], 0, "CAN_COLLIDE"];

        _unit setDir (getDir _x + 180);
        _unit setSkill 0.05;
        _unit forceSpeed 0;
        _unit setUnitPos "UP";
        _unit disableAI "MOVE";
        _unit disableAI "FSM";

        _units pushBack _unit;
    } forEach (missionNamespace getVariable ["TFT_targets_opfor", []]);
    _object setVariable ["TFT_CQB_liveUnits", _units, true];
    _object setVariable ["TFT_CQB_live", true, false];
    (parseText "<t size='1.2' color='#ffaaaa'>Live targets are ON</t>") remoteExec ["hint", _participants];
};
