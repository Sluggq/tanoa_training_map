params ["_unit"];

if(isNil "TFT_simulation_state") then {
    TFT_simulation_state = false;
    publicVariable "TFT_simulation_state";
};

_unit addAction ["<t color='#f0a4ff'>Toggle simulation</t>", {remoteExec ["TFT_fnc_simulationToggle", 2]}, nil, -10, false, true, "", "_this == _target"];
