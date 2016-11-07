/*
 * Author: yourstruly
 * Start preparation phase for players and the server.
 *
 * Arguments:
 * -
 *
 * Return Value:
 * -
 *
 * Example:
 * call TFT_fnc_prepPhaseInit;
 */
if(isNil "TFT_prepPhase") then { TFT_prepPhase = true; };

if(hasInterface) then {
    waituntil {player == player};
    player call TFT_fnc_prepPhase;
};

if(isServer) then {
    TFT_prepPhaseTime = 0;
    [{
        if(TFT_prepPhase) then {
            format ["Preparation phase is in progress.\nElapsed time: %1min.", TFT_prepPhaseTime] remoteExec ["hint", -2];
            TFT_prepPhaseTime = TFT_prepPhaseTime + 1;
        } else {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    }, 60, nil] call CBA_fnc_addPerFrameHandler;
};
