/*
 * Author: yourstruly
 * Show (or stop showing) camera feed from multiple cameras on multiple screens for people that are nearby.
 *
 * Arguments:
 * 0: Origin object to which action is assigned <OBJECT>
 * 1: List of pairs <camera, screen> for the feed <ARRAY>
 * 2: Screen mode [0 - normal, 1 - NVG, 2 - TI] <NUMBER>
 *
 * Return Value:
 * -
 *
 * Example:
 * [laptop, 1, [[camera1, screen1], [camera2, screen2]]] call TFT_fnc_cameraFeed
 */
params ["_origin", "_mode", "_feedPairs"];

_participants = (getPos _origin) nearEntities ["CAManBase", 30];
_on = _origin getVariable ["tft_feed_on", false];
_origin setVariable ["tft_feed_on", !_on, true];

[_on, _mode, _feedPairs] remoteExec ["TFT_fnc_cameraFeedLocal", _participants];
