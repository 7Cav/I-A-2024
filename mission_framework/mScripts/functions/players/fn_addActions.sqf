main_board addAction [

	"Halo Jump",
	{
		[_this select 1] spawn mScripts_fnc_HaloJump;
	}

];

crate_spawner addAction [

	"Pull General Supply Crate",
	{
		[getMarkerPos "crate_spawn_location","crate_resupply_general"] remoteExec ["cScripts_fnc_doSupplyCrate",2];
	}

];

crate_spawner addAction [

	"Pull Medical Crate",
	{
		[getMarkerPos "crate_spawn_location","crate_medicalAtlas"] remoteExec ["cScripts_fnc_doSupplyCrate",2]; 
	}

];

crate_spawner addAction[
   
    "Pull Wheel",
    {
        "ACE_Wheel" createVehicle getMarkerPos "crate_spawn_location";
    }
];

crate_spawner addAction[
   
    "Pull Track",
    {
        "ACE_Track" createVehicle getMarkerPos "crate_spawn_location";
    }
];
