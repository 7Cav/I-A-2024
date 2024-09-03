//Adds a full heal option via ace interract
private _reHealAction = ["Full Heal", "Full Heal", "\z\ACE\addons\medical_gui\ui\cross_t_9.paa", {[objNull, player] call ace_medical_treatment_fnc_fullHeal}, {true}] call ace_interact_menu_fnc_createAction; 
["B_supplyCrate_F",0,["ACE_MainActions"], _reHealAction, false] call ace_interact_menu_fnc_addActionToClass;

//Adds category for saved loadouts
_reCategory = ["Save/Load Loadout", "Save/Load Loadout", "\z\ACE\addons\common\ui\repack_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;
["B_supplyCrate_F", 0, ["ACE_MainActions"], _reCategory, true] call ace_interact_menu_fnc_addActionToClass;

//Saves your current loadout, reloaded on respawn or by option below
private _reKitAction = ["Save/Load Loadout", "Save Respawn Loadout", "\z\ACE\addons\medical_gui\ui\grave.paa", {player setVariable ["Saved_Loadout",getUnitLoadout player]}, {true}] call ace_interact_menu_fnc_createAction; 
["B_supplyCrate_F",0,["ACE_MainActions", "Save/Load Loadout"], _reKitAction, true] call ace_interact_menu_fnc_addActionToClass;

//Loads your currently saved Loadout
private _reLoadKitAction = ["Save/Load Loadout", "Load Respawn Loadout", "\z\ACE\addons\common\ui\repack_ca.paa", {player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);}, {true}] call ace_interact_menu_fnc_createAction; 
["B_supplyCrate_F",0,["ACE_MainActions", "Save/Load Loadout"], _reLoadKitAction, true] call ace_interact_menu_fnc_addActionToClass;