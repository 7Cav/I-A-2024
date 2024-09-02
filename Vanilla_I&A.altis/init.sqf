// Run evannex gamemode
execVM "core\evannexInit.sqf";
// Enable friendly markers
execVM "core\client\QS_icons.sqf";
execVM "mScripts\functions\players\arsenal_items.sqf";

if (isServer || isMultiplayer) then {
	[] call mScripts_fnc_initializeServer;
};

if (hasInterface) then {
	[] call mScripts_fnc_initializePlayer;
};