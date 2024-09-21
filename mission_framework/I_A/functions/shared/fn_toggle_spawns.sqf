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
 * [_SleepAmount] spawn core2_fnc_OBJ_DESTROY_RADIO_LOGIC
 *
 * Public: No
 *
 */
 params [["_SleepAmount",10800]];

 missionNamespace setVariable ["CAV_SPAWN_UNITS_BOOL",false,true];
 sleep _SleepAmount;
 missionNamespace setVariable ["CAV_SPAWN_UNITS_BOOL",true,true];
