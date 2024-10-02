// Run evannex gamemode
execVM "core\evannexInit.sqf";
// Enable friendly markers
//execVM "core\client\QS_icons.sqf";

if (!isDedicated) then {

	[] spawn mScripts_fnc_initializePlayer;

};

if (isDedicated || isMultiplayer) then {

	[] call ina_fnc_startServer;

};

["7Cav Logistics", "Toggle Spawns",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call mScripts_fnc_zenModule_togglespawns;
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;