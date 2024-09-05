main_board addAction [

	"Halo Jump",
	{
		[_this select 1] spawn mScripts_fnc_HaloJump;
	}

];

crate_spawner addAction [

	"Pull Arsenal Resupply Crate",
	{
		[] remoteExec ["mScripts_fnc_createArsenal",2];
	}

];

crate_spawner addAction [

	"Pull Basic Ammo Crate",
	{
		"Box_NATO_Ammo_F" createVehicle (getMarkerPos "crateSpawn");
		private _crate = nearestObject [(getMarkerPos "crateSpawn"),"Box_NATO_Ammo_F"];
		clearMagazineCargoGlobal _crate;
		_crate addItemCargoGlobal ["ACE_earplugs",2];
		_crate addMagazineCargoGlobal ["ACE_HuntIR_M203",2];
		_crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",4];
		_crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",2];
		_crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",6];
		_crate addMagazineCargoGlobal ["HandGrenade",8];
		_crate addMagazineCargoGlobal ["SmokeShell",8];
		_crate addMagazineCargoGlobal ["SmokeShellRed",2];
		_crate addMagazineCargoGlobal ["SmokeShellBlue",2];
		_crate addMagazineCargoGlobal ["200Rnd_556x45_Box_Red_F",5];
		_crate addMagazineCargoGlobal ["130Rnd_338_Mag",5];
		_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_red",14];
		_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",14];
		_crate addMagazineCargoGlobal ["20Rnd_762x51_Mag",8];
		_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",5];
	}

];

crate_spawner addAction [

	"Pull Basic Launcher Ammo Crate",
	{
		"Box_NATO_WpsLaunch_F" createVehicle (getMarkerPos "crateSpawn");
			private _crate = nearestObject [(getMarkerPos "crateSpawn"),"Box_NATO_WpsLaunch_F"];
			clearBackpackCargoGlobal _crate;
			clearWeaponCargoGlobal _crate;
			_crate addWeaponCargoGlobal ["launch_NLAW_F",2];
	}

];

crate_spawner addAction [

	"Pull Empty Crate",
	{
		"Box_NATO_Equip_F" createVehicle (getMarkerPos "crateSpawn");
		private _crate = nearestObject [(getMarkerPos "crateSpawn"),"Box_NATO_Equip_F"];
				clearBackpackCargoGlobal _crate;
				clearItemCargoGlobal _crate;
				clearMagazineCargoGlobal _crate;
				clearWeaponCargoGlobal _crate;
			
	}

];

crate_spawner addAction [

	"Pull Medical Crate",
	{
		"ACE_MedicalSupplyCrate_advanced" createVehicle (getMarkerPos "crateSpawn");
		private _crate = nearestObject [(getMarkerPos "crateSpawn"),"ACE_MedicalSupplyCrate_advanced"];
		_crate addItemCargoGlobal ["ACE_personalAidKit",7];
		_crate addMagazineCargoGlobal ["ACE_painkillers",5];
		_crate addItemCargoGlobal ["ACE_elasticBandage",20];
		_crate addItemCargoGlobal ["ACE_packingBandage",15];
	}

];

crate_spawner addAction[
   
    "Pull Wheel",
    {
        "ACE_Wheel" createVehicle (getMarkerPos "crateSpawn");
    }
];

crate_spawner addAction[
   
    "Pull Track",
    {
        "ACE_Track" createVehicle (getMarkerPos "crateSpawn");
    }
];


crate_spawner addAction [

	"Remove Objects On Pad",
	{
			private _crate = nearestObjects [(getMarkerPos "crateSpawn"),["ACE_MedicalSupplyCrate_advanced","Box_NATO_Equip_F","Box_NATO_WpsLaunch_F","Box_NATO_Ammo_F","ACE_Wheel","ACE_Track","Land_Cargo10_grey_F"],15];
			{deleteVehicle _x} forEach _crate;
	}

];

/*crate_spawner addAction [

	"Pull Medical Crate",
	{
		[getMarkerPos "crate_spawn_location","crate_medicalAtlas"] remoteExec ["cScripts_fnc_doSupplyCrate",2]; 
	}

];*/
/*[teleport_pole_1,"Teleport - Vehicle Farp",teleport_pole_2 ] call cScripts_fnc_teleport; 

[teleport_pole_2,"Teleport - Main Base",teleport_pole_1 ] call cScripts_fnc_teleport;*/