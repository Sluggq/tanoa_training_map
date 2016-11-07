/*
 * Author: yourstruly
 * Turn street lights ON or OFF.
 *
 * Arguments:
 * 0: Turn lights on (true) or off (false) <BOOL>
 *
 * Return Value:
 * -
 *
 * Example:
 * [true] call TFT_fnc_switchLights
 */
params ["_switchOn"];

_types = ["Lamps_Base_F", "PowerLines_base_F", "Land_PowerPoleWooden_F", "Land_LampHarbour_F", "Land_LampShabby_F", "Land_PowerPoleWooden_L_F", "Land_PowerPoleWooden_small_F", "Land_LampDecor_F", "Land_LampHalogen_F", "Land_LampSolar_F", "Land_LampStreet_small_F", "Land_LampStreet_F", "Land_LightHouse_F", "Land_BuoyBig_F", "Land_NavigLight", "Land_NavigLight_3_F", "Land_Flush_Light_green_F", "Land_Flush_Light_red_F", "Land_Flush_Light_yellow_F", "Land_runway_edgelight", "Land_runway_edgelight_blue_F", "Land_Runway_PAPI", "Land_Runway_PAPI_2", "Land_Runway_PAPI_3", "Land_Runway_PAPI_4", "Land_TTowerBig_1_F", "Land_PortableHelipadLight_01_F", "PortableHelipadLight_01_blue_F", "PortableHelipadLight_01_red_F", "PortableHelipadLight_01_white_F", "PortableHelipadLight_01_green_F", "PortableHelipadLight_01_yellow_F"];
_lamps = nearestObjects [getMarkerPos "CQBlights", _types, 100];
_damage = if(_switchOn) then {0} else {0.95};

{
    _x setDamage _damage;
} forEach _lamps;
