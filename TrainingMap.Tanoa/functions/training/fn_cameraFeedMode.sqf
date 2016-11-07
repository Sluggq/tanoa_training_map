/*
 * Author: yourstruly
 * Change view mode for given camera feeds.
 *
 * Arguments:
 * 0: Object from which feed is turned on/off <OBJECT>
 * 1: List of screens <ARRAY>
 *
 * Return Value:
 * -
 *
 * Example:
 * [laptop, [screen1, screen2]] call TFT_fnc_cameraFeedMode
 */
params ["_origin", "_screens"];

if !(_origin getVariable ["tft_feed_on", false]) exitWith {};

_participants = (getPos _origin) nearEntities ["CAManBase", 30];
{
    _mode = ((_x getVariable ["tft_feed_mode", 0]) + 1) % 3;
    (str _x) setPiPEffect [_mode];
    _x setVariable ["tft_feed_mode", _mode];
} forEach _screens;
