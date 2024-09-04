//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/

VVS_Car = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F","B_Truck_01_covered_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_rcws_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F","I_MBT_03_cannon_F","I_LT_01_cannon_F"];
VVS_Air = ["B_Plane_CAS_01_dynamicLoadout_F","B_Plane_Fighter_01_F","B_Heli_Light_01_dynamicLoadout_F","B_Heli_Attack_01_dynamicLoadout_F","B_Heli_Transport_03_F","B_Heli_Light_01_F","B_Heli_Transport_01_F","I_Heli_light_03_dynamicLoadout_F"];
VVS_Ship = [];
VVS_Armored = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F","B_Truck_01_covered_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_rcws_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F","I_MBT_03_cannon_F","I_LT_01_cannon_F"];
VVS_Autonomous = [];
VVS_Support = [];

// def 2015 09 19> Uncomment next comment-section /* */ if you want to make this s#$t work faster and predefined (for rhs).
/*
//Everything from arma3 1.50 and RHS 0.3.9.1.
VVS_Premade_List = true;
VVS_Car = 	["USAF_AC130U"];
VVS_CAR = VVS_CAR + [];
VVS_Air = [];
VVS_Ship = [];
VVS_Armored = [];
VVS_Autonomous = [];
VVS_Support = [];
*/
// <def 2015 09 19


/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];