//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = true;

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

VVS_Car = ["rhsusf_m1a2sep1tuskiid_usarmy","rhsusf_mrzr4_d","rhsusf_M1230a1_usarmy_d","RHS_M119_D","rhsusf_m998_d_2dr","rhsusf_m998_d_2dr_fulltop","rhsusf_m966_d","rhsusf_m1151_mk19_v2_usarmy_d","rhsusf_m1151_m240_v2_usarmy_d","rhsusf_m1151_m2_v2_usarmy_d","rhsusf_m1165a1_gmv_m2_m240_socom_d","UK3CB_KRG_B_M1025_TOW","RHS_M2A3_BUSKIII","cav_dragoon_D","rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_D_fmtv_usarmy","cav_dragoon_Unarmed_D","B_APC_Tracked_01_CRV_F","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d","rhsusf_m1240a1_mk19_usarmy_d","rhsusf_m1240a1_m2_usarmy_d","rhsusf_m1240a1_m2_uik_usarmy_d","rhsusf_m1165a1_gmv_mk19_m240_socom_d","rhsusf_m1165a1_gmv_m2_m240_socom_d","rhsusf_m1165a1_gmv_m134d_m240_socom_d","rhsusf_M1239_M2_Deploy_socom_d","rhsusf_M1078A1R_SOV_M2_D_fmtv_socom","UK3CB_B_M939_Reammo_DES","UK3CB_B_M939_Repair_DES","UK3CB_B_M939_Refuel_DES"];
VVS_Air = ["JS_JC_FA18E","USAF_F35A","USAF_F22","USAF_A10","vtx_MH60M","vtx_MH60M_DAP","TF373_SOAR_MH47G_EasyActions","RHS_AH64D_wd","RHS_MELB_AH6M","RHS_MELB_MH6M","USAF_C130J","rhsusf_CH53E_USMC_D","RHS_UH1Y_d","UK3CB_B_Osprey_HMG_USMC_D","RHSGREF_A29B_HIDF"];
VVS_Ship = [];
VVS_Armored = [];
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