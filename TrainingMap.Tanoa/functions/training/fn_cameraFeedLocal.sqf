/*
 * Author: yourstruly
 * Display/hide camera feed on multiple screens from multiple sources.
 *
 * Arguments:
 * 0: Current feed status [true - on, false - off] <BOOL>
 * 1: List of pairs <camera, screen> for the feed <ARRAY>
 * 2: Screen mode [0 - normal, 1 - NVG, 2 - TI] <NUMBER>
 *
 * Return Value:
 * -
 *
 * Example:
 * [false, 2, [[camera1, screen1], [camera2, screen2]] ] call TFT_fnc_cameraFeedLocal
 */
params ["_on", "_mode", "_feedPairs"];

{
    _x params ["_camera", "_screen"];

    if(_on) then {
        _screen setObjectTexture [0, "#(rgb,8,8,3)color(0,0,0,0)"];
    } else {
        _screen setObjectTexture [0, format["#(argb,512,512,1)r2t(%1,1)", str _screen]];
        _cam = _screen getVariable ["tft_feed_cam", objNull];
        if(isNull _cam) then {
            _cam = "camera" camCreate [0,0,0];
            _cam cameraEffect ["Internal", "Back", str _screen];
            _cam attachTo [_camera, [0,0,0], "PiP0_pos"];
            _dir = (_camera selectionPosition "PiP0_pos") vectorFromTo (_camera selectionPosition "PiP0_dir");
            _cam setVectorDirAndUp [_dir, _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
            _screen setVariable ["tft_feed_cam", _cam];
        };
        (str _screen) setPiPEffect [_mode];
        _screen setVariable ["tft_feed_mode", _mode];
    };
} forEach _feedPairs;
