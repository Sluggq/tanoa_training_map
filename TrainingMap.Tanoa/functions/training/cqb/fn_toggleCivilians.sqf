/*
 * Author: yourstruly
 * Put or take away live civilians in CQB area.
 *
 * Arguments:
 * 0: Object which is responsible for the switch <OBJECT>
 *
 * Return Value:
 * -
 *
 * Example:
 * [laptop] call TFT_fnc_toggleCivilians
 */
params ["_object"];

_participants = (getMarkerPos "cqb_area") nearEntities ["CAManBase", 50];

if(_object getVariable ["TFT_CQB_liveCiv", false]) then {
    {
        deleteVehicle _x;
    } forEach (_object getVariable ["TFT_CQB_liveUnitsCiv", []]);
    _object setVariable ["TFT_CQB_liveCiv", false, false];
    (parseText "<t size='1.2' color='#cccccc'>Civilians removed</t>") remoteExec ["hint", _participants];
} else {
    _units = [];
    {
        _group = createGroup civilian;
        _unit = _group createUnit ["C_man_1", getPos _x, [], 0, "CAN_COLLIDE"];

        _unit disableAI "MOVE";
        _unit disableAI "FSM";
        _unit setDir (getDir _x);
        _unit forceSpeed 0;
        _unit setUnitPos "UP";

        _units pushBack _unit;
    } forEach (missionNamespace getVariable ["TFT_targets_CQBilians", []]);
    _object setVariable ["TFT_CQB_liveUnitsCiv", _units, true];
    _object setVariable ["TFT_CQB_liveCiv", true, false];
    (parseText "<t size='1.2' color='#aaffaa'>Civilians added</t>") remoteExec ["hint", _participants];
};
