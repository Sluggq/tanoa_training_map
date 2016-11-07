/*
 * Author: yourstruly
 * Make sure that during this phase unit doesn't get hurt.
 *
 * Arguments:
 * 0: Unit to protect <OBJECT>
 *
 * Return Value:
 * -
 *
 * Example:
 * call TFT_fnc_prepPhase;
 */
_this allowDamage false;
_id = _this addEventHandler ["Put", {
    _container = _this select 1;
    if(_container isKindOf "groundWeaponHolder") then {
        deleteVehicle _container;
    };
}];

[{
    if(!TFT_prepPhase) then {
        (_this select 0) params ["_unit", "_id"];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        _unit allowDamage true;
        _unit removeEventHandler ["Put", _id];
        "<t size='0.85' color='#aaff55'>Preparation phase ended" call TFT_fnc_displayText;
    } else {
        "<t size='0.7' color='#ffaa55'>Preparation phase in progress" call TFT_fnc_displayText;
    };
}, 1, [_this, _id]] call CBA_fnc_addPerFrameHandler;
