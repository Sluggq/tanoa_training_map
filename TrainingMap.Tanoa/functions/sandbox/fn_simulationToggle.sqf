TFT_simulation_state = !TFT_simulation_state;
publicVariable "TFT_simulation_state";

{
    if(!isPlayer _x) then {
        (vehicle _x) enableSimulationGlobal (!TFT_simulation_state)
    };
} forEach allUnits;
