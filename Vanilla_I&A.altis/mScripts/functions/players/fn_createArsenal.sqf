// B_supplyCrate_F
_box = "Land_Cargo10_grey_F" createVehicle (getMarkerPos "crateSpawn");
_box allowDamage false;

//Cleanup Vanilla Inventory
clearBackpackCargoGlobal _box;
clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;

if (isClass(configFile >> "CfgPatches" >> "ace_main")) then {

	[_box, mScripts_itemList, true] call ace_arsenal_fnc_initBox;

} else {

	[_box, [true], true] call BIS_fnc_removeVirtualBackpackCargo;
	[_box, [true], true] call BIS_fnc_removeVirtualItemCargo;
	[_box, [true], true] call BIS_fnc_removeVirtualMagazineCargo;
	[_box, [true], true] call BIS_fnc_removeVirtualWeaponCargo;

	//Add items
	[_box,mScripts_backpacks,true,false] call BIS_fnc_addVirtualBackpackCargo;
	[_box,mScripts_items,true,false] call BIS_fnc_addVirtualItemCargo;
	[_box,mScripts_magazines,true,false] call BIS_fnc_addVirtualMagazineCargo;
	[_box,mScripts_weapons,true,true] call BIS_fnc_addVirtualWeaponCargo;
};

