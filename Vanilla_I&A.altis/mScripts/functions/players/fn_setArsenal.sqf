_boxList = [baseBox_0,baseBox_1,baseBox_2,baseBox_3,baseBox_4];

waitUntil {sleep 1; !isNil "mScripts_itemList"};

{

	//Cleanup Vanilla Inventory
	clearBackpackCargoGlobal _x;
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;

	if (isClass(configFile >> "CfgPatches" >> "ace_main")) then {

		[_x, mScripts_itemList, false] call ace_arsenal_fnc_initBox;

	} else {

		[_x, [true], true] call BIS_fnc_removeVirtualBackpackCargo;
		[_x, [true], true] call BIS_fnc_removeVirtualItemCargo;
		[_x, [true], true] call BIS_fnc_removeVirtualMagazineCargo;
		[_x, [true], true] call BIS_fnc_removeVirtualWeaponCargo;

		//Add items
		[_x,mScripts_backpacks,true,false] call BIS_fnc_addVirtualBackpackCargo;
		[_x,mScripts_items,true,false] call BIS_fnc_addVirtualItemCargo;
		[_x,mScripts_magazines,true,false] call BIS_fnc_addVirtualMagazineCargo;
		[_x,mScripts_weapons,true,true] call BIS_fnc_addVirtualWeaponCargo;
	};

} forEach _boxList;