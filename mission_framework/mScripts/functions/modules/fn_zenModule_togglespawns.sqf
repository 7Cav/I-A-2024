/*
 * Author: 7th Cav Dev Team, Sparrow
 * Builds out the Destroy Radio Tower Objective
 *
 * Arguments:
 * 0: SleepAmount - Number of seconds to sleep spawns in seconds default
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [300] spawn I_A_fnc_toggle_spawns
 *
 * Public: No
 *
 */
 params ["_modulePos", "_objectPos"];

[	"Toggle Spawns",
	[
        ["CHECKBOX", ["Toggle Spawns", ""], true, false]
	],
	{
		params ["_arg","_pos"];
		_arg params [
			"_aiToggle"
		];
		 missionNamespace setVariable ["CAV_SPAWN_UNITS_BOOL",_aiToggle,true];
		_info = format ["AI Spawning is %1", _aiToggle];
		_info remoteExecCall ["hint",-2];
	},
	{},
	[_modulePos]
] call zen_diaglog_fnc_create;
