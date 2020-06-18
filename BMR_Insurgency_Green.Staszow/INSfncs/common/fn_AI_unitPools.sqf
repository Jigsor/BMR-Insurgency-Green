// fn_AI_unitPools.sqf // runs preinit
private _opposingArmies = ["INS_op_faction", 0] call BIS_fnc_getParamValue;
if (_opposingArmies isEqualTo 0) exitWith {diag_log "!!! BMR Insurgency Warning: lobby option Opposing Army/Mod Initialization does not exist or configured improperly"};

// Global Class Arrays /////////////////////////////////////////////////////
	//Typically used for objectives, civilians, civilian vehicles,  airpatrol types, CAS type.

// CSAT
if (_opposingArmies isEqualTo 1) then {
	INS_Op4_side = EAST;// Cfg based side
	INS_men_list = ["O_SoldierU_SL_F","O_Soldier_GL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F","O_Sharpshooter_F","O_HeavyGunner_F","O_Soldier_HAT_F","O_Soldier_AHAT_F"];// Armed soldiers
	INS_Op4_medic = "O_soldierU_medic_F";// One Medic
	INS_Op4_Eng = "O_soldierU_repair_F";// One Engineer
	INS_Op4_pilot = ["O_helipilot_F","O_Fighter_Pilot_F"];// Pilots
	INS_Op4_Veh_Light = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","O_G_Offroad_01_armed_F","O_APC_Wheeled_02_rcws_v2_F"];// Armed Wheeled Vehicles
	INS_Op4_Veh_Tracked = ["O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F","O_MBT_02_cannon_F","O_MBT_04_command_F","O_MBT_04_cannon_F"];// Armed Tracked Vehicles
	INS_Op4_Veh_Support = ["O_Truck_03_ammo_F","O_Truck_03_repair_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_box_F","O_Truck_02_medical_F","O_Truck_03_device_F"];// Wheeled Support Vehicles
	INS_Op4_Veh_AA = ["O_APC_Tracked_02_AA_F"];// Anti Air Vehicles
	INS_Op4_stat_weps = ["O_GMG_01_high_F","O_HMG_01_high_F","O_static_AT_F","O_static_AA_F","O_HMG_01_A_F","O_GMG_01_F","O_G_Mortar_01_F"];// Static Weapons
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// Civilian Units
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];// Civilian Cars
	INS_civ_Veh_Utl = ["C_Tractor_01_F","C_Truck_02_fuel_F","C_Truck_02_box_F","C_Truck_02_transport_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];// Civilian Utility Vehicles
};

// NATO
if (_opposingArmies in [2,3]) then {
	INS_Op4_side = WEST;
	INS_men_list = ["B_Soldier_A_F","B_soldier_AR_F","B_medic_F","B_engineer_F","B_soldier_exp_F","B_Soldier_GL_F","B_HeavyGunner_F","B_soldier_M_F","B_soldier_mine_F","B_soldier_AA_F","B_soldier_AT_F","B_officer_F","B_soldier_repair_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT2_F","B_Soldier_lite_F","B_Sharpshooter_F","B_Soldier_SL_F","B_Soldier_TL_F","B_recon_exp_F","B_recon_JTAC_F","B_recon_M_F","B_recon_medic_F","B_recon_F","B_recon_LAT_F","B_Recon_Sharpshooter_F","B_recon_TL_F","B_sniper_F","B_ghillie_ard_F","B_ghillie_lsh_F","B_ghillie_sard_F","B_spotter_F"];
	INS_Op4_medic = "B_medic_F";
	INS_Op4_Eng = "B_engineer_F";
	INS_Op4_pilot = ["B_Pilot_F","B_Helipilot_F","B_Fighter_Pilot_F"];
	INS_Op4_Veh_Light = ["B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_LSV_01_AT_F","B_LSV_01_armed_F","B_APC_Wheeled_01_cannon_F","B_AFV_Wheeled_01_cannon_F","B_AFV_Wheeled_01_up_cannon_F"];
	INS_Op4_Veh_Tracked = ["B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_AA_F"];
	INS_Op4_Veh_Support = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_Repair_F"];
	INS_Op4_Veh_AA = ["B_APC_Tracked_01_AA_F"];
	INS_Op4_stat_weps = ["B_HMG_01_high_F","B_GMG_01_high_F","B_Mortar_01_F","B_static_AA_F","B_static_AT_F"];
	INS_Op4_fixedWing = ["B_Plane_CAS_01_dynamicLoadout_F","B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F"];
	INS_Op4_helis = ["B_Heli_Light_01_dynamicLoadout_F","B_Heli_Attack_01_dynamicLoadout_F","B_Heli_Transport_01_F"];
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// A3 Civilians
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Tractor_01_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
};

// CSAT (Pacific)
if (_opposingArmies in [4,5]) then {
	INS_Op4_side = EAST;
	INS_men_list = ["O_T_Soldier_A_F","O_T_Soldier_AAR_F","O_T_Support_AMG_F","O_T_Support_AMort_F","O_T_Soldier_AAA_F","O_T_Soldier_AAT_F","O_T_Soldier_AR_F","O_T_Medic_F","O_T_Crew_F","O_T_Engineer_F","O_T_Soldier_Exp_F","O_T_Soldier_GL_F","O_T_Support_GMG_F","O_T_Support_MG_F","O_T_Support_Mort_F","O_T_Soldier_M_F","O_T_Soldier_AA_F","O_T_Soldier_AT_F","O_T_Officer_F","O_T_Soldier_PG_F","O_T_Soldier_Repair_F","O_T_Soldier_F","O_T_Soldier_LAT_F","O_T_Soldier_SL_F","O_T_Soldier_TL_F","O_T_Soldier_UAV_F","O_T_Recon_Exp_F","O_T_Recon_JTAC_F","O_T_Recon_M_F","O_T_Recon_Medic_F","O_T_Recon_F","O_T_Recon_LAT_F","O_T_Recon_TL_F","O_T_Sniper_F","O_T_Spotter_F","O_T_ghillie_tna_F","O_V_Soldier_ghex_F","O_V_Soldier_TL_ghex_F","O_V_Soldier_Exp_ghex_F","O_V_Soldier_Medic_ghex_F","O_V_Soldier_M_ghex_F","O_V_Soldier_LAT_ghex_F","O_V_Soldier_JTAC_ghex_F","O_T_Soldier_HAT_F","O_T_Soldier_AHAT_F"];
	INS_Op4_medic = "O_soldierU_medic_F";
	INS_Op4_Eng = "O_T_Soldier_Repair_F";
	INS_Op4_pilot = ["O_T_Pilot_F"];
	INS_Op4_Veh_Light = ["O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","O_T_LSV_02_armed_F","O_T_APC_Wheeled_02_rcws_v2_ghex_F","O_T_LSV_02_AT_F"];
	INS_Op4_Veh_Tracked = ["O_T_MBT_02_cannon_ghex_F","O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Tracked_02_AA_ghex_F","O_T_MBT_04_command_F","O_T_MBT_04_cannon_F"];
	INS_Op4_Veh_Support = ["O_T_Truck_03_ammo_ghex_F","O_T_Truck_03_repair_ghex_F","O_T_Truck_03_fuel_ghex_F","O_T_Truck_03_medical_ghex_F","O_T_Truck_03_device_ghex_F"];
	INS_Op4_Veh_AA = ["O_T_APC_Tracked_02_AA_ghex_F"];
	INS_Op4_stat_weps = ["O_HMG_01_high_F","O_GMG_01_high_F","O_G_Mortar_01_F","B_T_HMG_01_F","O_static_AT_F","O_static_AA_F","O_GMG_01_F"];
	INS_civlist = ["C_Man_casual_1_F_afro","C_Man_casual_2_F_afro","C_Man_casual_3_F_afro","C_man_sport_1_F_afro","C_man_sport_2_F_afro","C_man_sport_3_F_afro","C_Man_casual_4_F_afro","C_Man_casual_5_F_afro","C_Man_casual_6_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro","C_man_p_fugitive_F_afro","C_man_p_shorts_1_F_afro","C_man_shorts_2_F_afro","C_man_shorts_3_F_afro","C_man_shorts_4_F_afro"];
	INS_civ_Veh_Car = ["C_Offroad_02_unarmed_F","C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Tractor_01_F","C_Truck_02_fuel_F","C_Truck_02_box_F","C_Truck_02_covered_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
};

// RHS - Armed Forces of the Russian Federation MSV
if (_opposingArmies isEqualTo 6) then {
	INS_Op4_side = EAST;
	INS_men_list = ["rhs_msv_rifleman","rhs_msv_efreitor","rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_machinegunner_assistant","rhs_msv_at","rhs_msv_strelok_rpg_assist","rhs_msv_marksman","rhs_msv_officer_armored","rhs_msv_officer","rhs_msv_junior_sergeant","rhs_msv_sergeant","rhs_msv_engineer","rhs_msv_driver","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT"];//"rhs_msv_crew","rhs_msv_crew_commander","rhs_msv_armoredcrew","rhs_msv_combatcrew",
	INS_Op4_medic = "rhs_msv_medic";
	INS_Op4_Eng = "rhs_msv_engineer";
	INS_Op4_pilot = ["rhs_pilot"];
	INS_Op4_Veh_Light = ["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01"];
	INS_Op4_Veh_Tracked = ["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
	INS_Op4_Veh_Support = ["rhs_gaz66_r142_msv","rhs_gaz66_ap2_msv","rhs_gaz66_repair_msv","RHS_Ural_Fuel_MSV_01","RHS_Ural_Open_MSV_01"];
	INS_Op4_Veh_AA = ["rhs_zsu234_aa"];
	INS_Op4_stat_weps = ["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
	INS_Op4_fixedWing = ["RHS_Su25SM_vvsc","RHS_Su25SM_CAS_vvsc","RHS_T50_vvs_052","RHS_T50_vvs_054","RHS_T50_vvs_blueonblue","rhs_mig29s_vvsc"];//"RHS_Su25SM_KH29_vvsc"
	INS_Op4_helis = ["RHS_Ka52_vvsc","RHS_Ka52_UPK23_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24V_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_UPK23_vvsc","RHS_Mi8AMTSh_FAB_vvsc"];//,"RHS_Mi8AMTSh_UPK23_vvsc"
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["RHS_Ural_Civ_02","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_01","RHS_Civ_Truck_02_covered_F","RHS_Civ_Truck_02_transport_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// A3 Civilians
	INS_CAS = "RHS_A10";
};

// RHS - DESERT Armed Forces of the Russian Federation VDV
if (_opposingArmies isEqualTo 7) then {
	INS_Op4_side = EAST;
	INS_men_list = ["rhs_vdv_des_aa","rhs_vdv_des_at","rhs_vdv_des_arifleman","rhs_vdv_des_sergeant","rhs_vdv_des_efreitor","rhs_vdv_des_grenadier_rpg","rhs_vdv_des_strelok_rpg_assist","rhs_vdv_des_junior_sergeant","rhs_vdv_des_machinegunner","rhs_vdv_des_machinegunner_assistant","rhs_vdv_des_marksman","rhs_vdv_des_marksman_asval","rhs_vdv_des_rifleman","rhs_vdv_des_rifleman_asval","rhs_vdv_des_rifleman_lite","rhs_vdv_des_grenadier"];//"rhs_msv_crew","rhs_msv_crew_commander","rhs_msv_armoredcrew","rhs_msv_combatcrew",
	INS_Op4_medic = "rhs_vdv_des_medic";
	INS_Op4_Eng = "rhs_vdv_des_engineer";
	INS_Op4_pilot = ["rhs_pilot"];
	INS_Op4_Veh_Light = ["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01"];
	INS_Op4_Veh_Tracked = ["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
	INS_Op4_Veh_Support = ["rhs_gaz66_r142_msv","rhs_gaz66_ap2_msv","rhs_gaz66_repair_msv","RHS_Ural_Fuel_MSV_01","RHS_Ural_Open_MSV_01"];
	INS_Op4_Veh_AA = ["rhs_zsu234_aa"];
	INS_Op4_stat_weps = ["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
	INS_Op4_fixedWing = ["RHS_Su25SM_vvsc","RHS_Su25SM_CAS_vvsc","RHS_T50_vvs_052","RHS_T50_vvs_054","RHS_T50_vvs_blueonblue","rhs_mig29s_vvsc"];//,"RHS_Su25SM_KH29_vvsc"
	INS_Op4_helis = ["RHS_Ka52_vvsc","RHS_Ka52_UPK23_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24V_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_UPK23_vvsc","RHS_Mi8AMTSh_FAB_vvsc"];//,"RHS_Mi8AMTSh_UPK23_vvsc"
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["RHS_Ural_Civ_02","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_01","RHS_Civ_Truck_02_covered_F","RHS_Civ_Truck_02_transport_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// A3 Civilians
	INS_CAS = "RHS_A10";
};

// RHS GREF - Chenarus Ground Forces (RESISTANCE)
if (_opposingArmies isEqualTo 8) then {
	INS_Op4_side = RESISTANCE;
	INS_men_list = 	["rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_m70","rhsgref_cdf_reg_rifleman_lite","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_officer","rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_medic","rhsgref_cdf_reg_engineer","rhsgref_cdf_para_rifleman","rhsgref_cdf_para_rifleman_lite","rhsgref_cdf_para_autorifleman","rhsgref_cdf_para_machinegunner","rhsgref_cdf_para_marksman","rhsgref_cdf_para_squadleader","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_engineer"];//"rhsgref_cdf_reg_general","rhsgref_cdf_para_officer"
	INS_Op4_medic = "rhsgref_cdf_para_medic";
	INS_Op4_Eng = "rhsgref_cdf_reg_engineer";
	INS_Op4_pilot = ["rhsgref_cdf_air_pilot"];
	INS_Op4_Veh_Light = ["rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_BRDM2_HQ","rhsgref_BRDM2_ATGM","rhsgref_c_a2port_armor","rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9"];
	INS_Op4_Veh_Tracked = ["rhsgref_cdf_t72ba_tv","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_gaz66_zu23"];
	INS_Op4_Veh_Support = ["rhsgref_cdf_gaz66_ammo","rhsgref_cdf_ural_fuel","rhsgref_cdf_gaz66_repair","rhsgref_cdf_gaz66_r142","rhsgref_cdf_gaz66_ap2"];
	INS_Op4_Veh_AA = ["rhsgref_cdf_zsu234"];
	INS_Op4_stat_weps = ["RHSgref_cdf_ZU23","rhsgref_cdf_reg_M252","rhsgref_cdf_reg_d30","rhsgref_cdf_reg_d30_at","rhsgref_cdf_Igla_AA_pod","rhsgref_cdf_AGS30_TriPod","rhsgref_cdf_DSHKM","rhsgref_cdf_DSHKM_Mini_TriPod","rhsgref_cdf_NSV_TriPod","rhsgref_cdf_SPG9","rhsgref_cdf_SPG9M"];
	INS_Op4_fixedWing = ["rhs_l159_CDF_CAP","rhs_l159_CDF_CAS","rhs_l159_CDF_plamen","rhs_l159_CDF","rhs_l39_cdf","rhsgref_cdf_su25","rhsgref_cdf_mig29s"];
	INS_Op4_helis = ["rhsgref_mi24g_CAS","rhsgref_mi24g_FAB","rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_Mi35_UPK","rhsgref_cdf_reg_Mi17Sh"];
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["RHS_Ural_Civ_02","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_01","RHS_Civ_Truck_02_covered_F","RHS_Civ_Truck_02_transport_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// A3 Civilians
	INS_CAS = "RHS_A10";
};

// IFA3/FOW - Falscirmjagers
if (_opposingArmies isEqualTo 9) then {
	INS_Op4_side = WEST;
	INS_men_list = ["LIB_FSJ_AT_soldier","fow_s_ger_luft_camo_tl_stg","LIB_FSJ_sapper_gefr","fow_s_ger_luft_camo_tl_mp40","fow_s_ger_luft_camo_mg42_asst","fow_s_ger_luft_camo_mg42_sparebarrel","fow_s_ger_luft_camo_mg42_gunner","fow_s_ger_luft_camo_medic","fow_s_ger_luft_camo_radio_operator","fow_s_ger_luft_camo_rifleman_mp40_pzf","fow_s_ger_luft_camo_rifleman_g43","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_nco_mp40","LIB_FSJ_Sniper","fow_s_ger_luft_camo_rifleman_fg42","fow_s_ger_luft_mg34_gunner","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_tl_asst"];
	INS_Op4_medic = "fow_s_ger_luft_camo_medic";
	INS_Op4_Eng = "LIB_FSJ_sapper_gefr";
	INS_Op4_pilot = ["LIB_GER_pilot"];
	INS_Op4_Veh_Light = ["LIB_Kfz1_MG42_sernyt","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
	INS_Op4_Veh_Tracked = ["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
	INS_Op4_Veh_Support = ["LIB_OpelBlitz_Ambulance","LIB_OpelBlitz_Ammo","LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Parm"];
	INS_Op4_Veh_AA = ["LIB_FlakPanzerIV_Wirbelwind"];
	INS_Op4_helis = [];
	INS_Op4_fixedWing = ["LIB_FW190F8","LIB_FW190F8_2","LIB_FW190F8_3","LIB_FW190F8_4","LIB_FW190F8_5","LIB_Ju87_italy","LIB_Ju87"];
	INS_Op4_stat_weps = ["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
	INS_civlist = ["LIB_CIV_Assistant","LIB_CIV_Assistant_2","LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Doctor","LIB_CIV_Functionary_4","LIB_CIV_Functionary_1","LIB_CIV_Functionary_2","LIB_CIV_Functionary_3","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_SchoolTeacher","LIB_CIV_SchoolTeacher_2","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4","LIB_CIV_Worker_3","LIB_CIV_Worker_4","LIB_CIV_Worker_1","LIB_CIV_Worker_2"];
	INS_civ_Veh_Car = ["LIB_GazM1","LIB_GazM1_SOV","LIB_GazM1_FFI","LIB_Zis5v_w","LIB_Zis5v"];
	INS_civ_Veh_Utl = ["LIB_Zis6_Parm","LIB_Zis5v_Fuel","LIB_Zis5v_Med"];
	INS_CAS = "LIB_P47";
};

// IFA3/FOW - Heer
if (_opposingArmies isEqualTo 10) then {
	INS_Op4_side = WEST;
	INS_men_list = ["LIB_GER_AT_soldier","fow_s_ger_heer_nco_mp40","LIB_GER_sapper","fow_s_ger_heer_tl_mp40","fow_s_ger_heer_mg42_sparebarrel","fow_s_ger_heer_mg42_asst","fow_s_ger_heer_mg42_gunner","fow_s_ger_heer_medic","fow_s_ger_heer_radio_operator","fow_s_ger_heer_tl_asst","fow_s_ger_heer_rifleman_g43","fow_s_ger_heer_rifleman","fow_s_ger_heer_tl_stg","LIB_GER_scout_sniper","fow_s_ger_heer_rifleman_mp40_pzf","fow_s_ger_heer_mg34_gunner"];
	INS_Op4_medic = "fow_s_ger_heer_medic";
	INS_Op4_Eng = "LIB_GER_sapper";
	INS_Op4_pilot = ["LIB_GER_pilot"];
	INS_Op4_Veh_Light = ["LIB_Kfz1_MG42_sernyt","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
	INS_Op4_Veh_Tracked = ["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
	INS_Op4_Veh_Support = ["LIB_OpelBlitz_Ambulance","LIB_OpelBlitz_Ammo","LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Parm"];
	INS_Op4_Veh_AA = ["LIB_FlakPanzerIV_Wirbelwind"];
	INS_Op4_helis = [];
	INS_Op4_fixedWing = ["LIB_FW190F8","LIB_FW190F8_2","LIB_FW190F8_3","LIB_FW190F8_4","LIB_FW190F8_5","LIB_Ju87_italy","LIB_Ju87"];
	INS_Op4_stat_weps = ["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
	INS_civlist = ["LIB_CIV_Assistant","LIB_CIV_Assistant_2","LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Doctor","LIB_CIV_Functionary_4","LIB_CIV_Functionary_1","LIB_CIV_Functionary_2","LIB_CIV_Functionary_3","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_SchoolTeacher","LIB_CIV_SchoolTeacher_2","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4","LIB_CIV_Worker_3","LIB_CIV_Worker_4","LIB_CIV_Worker_1","LIB_CIV_Worker_2"];
	INS_civ_Veh_Car = ["LIB_GazM1","LIB_GazM1_SOV","LIB_GazM1_FFI","LIB_Zis5v_w","LIB_Zis5v"];
	INS_civ_Veh_Utl = ["LIB_Zis6_Parm","LIB_Zis5v_Fuel","LIB_Zis5v_Med"];
	INS_CAS = "LIB_P47";
};

// IFA3/FOW - SS
if (_opposingArmies isEqualTo 11) then {
	INS_Op4_side = WEST;
	INS_men_list = ["SG_sturmtrooper_AT_soldier","fow_s_ger_ss_nco_mp40","SG_sturmtrooper_sapper","fow_s_ger_ss_tl_mp40","fow_s_ger_ss_mg42_sparebarrel","fow_s_ger_ss_mg42_asst","fow_s_ger_ss_mg42_gunner","fow_s_ger_ss_medic","fow_s_ger_ss_radio_operator","fow_s_ger_ss_tl_asst","fow_s_ger_ss_rifleman_g43","fow_s_ger_ss_rifleman","fow_s_ger_ss_tl_stg","LIB_GER_scout_sniper","fow_s_ger_ss_mg34_gunner","fow_s_ger_ss_rifleman_mp40"];
	INS_Op4_medic = "fow_s_ger_ss_medic";
	INS_Op4_Eng = "SG_sturmtrooper_sapper";
	INS_Op4_pilot = ["LIB_GER_pilot"];
	INS_Op4_Veh_Light = ["LIB_Kfz1_MG42_sernyt","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
	INS_Op4_Veh_Tracked = ["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
	INS_Op4_Veh_Support = ["LIB_OpelBlitz_Ambulance","LIB_OpelBlitz_Ammo","LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Parm"];
	INS_Op4_Veh_AA = ["LIB_FlakPanzerIV_Wirbelwind"];
	INS_Op4_helis = [];
	INS_Op4_fixedWing = ["LIB_FW190F8","LIB_FW190F8_2","LIB_FW190F8_3","LIB_FW190F8_4","LIB_FW190F8_5","LIB_Ju87_italy","LIB_Ju87"];
	INS_Op4_stat_weps = ["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
	INS_civlist = ["LIB_CIV_Assistant","LIB_CIV_Assistant_2","LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Doctor","LIB_CIV_Functionary_4","LIB_CIV_Functionary_1","LIB_CIV_Functionary_2","LIB_CIV_Functionary_3","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_SchoolTeacher","LIB_CIV_SchoolTeacher_2","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4","LIB_CIV_Worker_3","LIB_CIV_Worker_4","LIB_CIV_Worker_1","LIB_CIV_Worker_2"];
	INS_civ_Veh_Car = ["LIB_GazM1","LIB_GazM1_SOV","LIB_GazM1_FFI","LIB_Zis5v_w","LIB_Zis5v"];
	INS_civ_Veh_Utl = ["LIB_Zis6_Parm","LIB_Zis5v_Fuel","LIB_Zis5v_Med"];
	INS_CAS = "LIB_P47";
};

// ISC - Syrian Arab Army
if (_opposingArmies isEqualTo 12) then {
	INS_Op4_side = EAST;
	INS_men_list = ["isc_saa_at_o","isc_saa_crewman_o","isc_saa_grenadier_o","isc_saa_machinegunner_o","isc_saa_medic_o","isc_saa_officer_o","isc_saa_rifleman_o","isc_saa_sapper_o","isc_saa_sniper_o"];
	INS_Op4_medic = "isc_saa_medic_o";
	INS_Op4_Eng = "isc_saa_sapper_o";
	INS_Op4_pilot = ["isc_saa_crewman_o"];
	INS_Op4_Veh_Light = ["isc_saa_Ural_zu23_o","isc_saa_gaz66_zu23_o","isc_saa_BTR60PB_o","isc_saa_BTR80_o","isc_saa_BTR80a_o","isc_saa_tigr_m_o","isc_saa_tigr_m_3camo_o","isc_saa_tigr_sts_o","isc_saa_tigr_sts_3camo_o","isc_saa_UAZ_ags_o","isc_saa_UAZ_dshkm_o","isc_saa_UAZ_spg9_o"];
	INS_Op4_Veh_Tracked = ["isc_saa_zsu23_o","isc_saa_T72ba_o","isc_saa_T72bb_o","isc_saa_BMP1_o","isc_saa_BMP1p_o","isc_saa_BMP2_o"];
	INS_Op4_Veh_Support = ["isc_saa_ural_fuel_o","isc_saa_kamaz_o","isc_saa_BM21_o","isc_saa_ural_o","isc_saa_gaz66_o","isc_saa_tigr_o","isc_saa_kamaz_open_o","isc_saa_ural_open_o"];
	INS_Op4_Veh_AA = ["isc_saa_gaz66_zu23_o","isc_saa_Ural_zu23_o","isc_saa_ZSU_o"];
	INS_Op4_stat_weps = ["isc_saa_zu23_o","isc_saa_kord_high_o","isc_saa_ags30_o","isc_saa_dshkm_minitripod_o","isc_saa_dshkm_o","isc_saa_kord_o","isc_saa_spg9_o","isc_saa_Kornet_o","isc_saa_Metis_o","isc_saa_nsv_o","isc_saa_2b14_o","isc_saa_D30_at_o","isc_saa_D30_o"];
	INS_Op4_fixedWing = ["isc_saa_L39_AA_o","isc_saa_L39_CAS_o","isc_saa_su25_o","isc_saa_su25_cas_o","isc_saa_su25_kh29_o","isc_saa_yak130_o"];
	INS_Op4_helis = ["isc_saa_mi24_o","isc_saa_mi24_at_o","isc_saa_mi24_fab_o","isc_saa_mi24_upk23_o","isc_saa_mi8amtsh_o","isc_saa_mi8amtsh_fab_o","isc_saa_mi8amtsh_upk23_o","isc_saa_mi8mtv_o","isc_saa_mi8mtv_fab_o","isc_saa_mi8mtv_upk23_o"];
	INS_civlist = ["C_man_p_beggar_F","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_hunter_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];// A3 Civilians
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
};

// CUP - Takistan Army
if (_opposingArmies isEqualTo 13) then {
	INS_Op4_side = EAST;
	INS_men_list = ["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL"];
	INS_Op4_medic = "CUP_O_TK_Medic";
	INS_Op4_Eng = "CUP_O_TK_Engineer";
	INS_Op4_pilot = ["CUP_O_TK_Pilot"];
	INS_Op4_Veh_Light = ["CUP_O_BRDM2_TKA","CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_BTR60_TK","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_BTR40_MG_TKA"];
	INS_Op4_Veh_Tracked = ["CUP_O_BMP2_ZU_TKA","CUP_O_BMP_HQ_TKA","CUP_O_T34_TKA","CUP_O_BMP1_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_T72_TKA","CUP_O_T55_TK","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];
	INS_Op4_Veh_Support = ["CUP_O_BMP2_AMB_TKA","CUP_O_LR_Ambulance_TKA","CUP_O_Ural_TKA","CUP_O_Ural_Reammo_TKA","CUP_O_Ural_Refuel_TKA","CUP_O_Ural_Repair_TKA"];
	INS_Op4_Veh_AA = ["CUP_O_ZSU23_TK"];
	INS_Op4_stat_weps = ["O_HMG_01_high_F","CUP_O_ZU23_TK","CUP_O_AGS_TK","CUP_O_2b14_82mm_TK","CUP_O_D30_TK","CUP_O_D30_AT_TK","CUP_O_SPG9_TK"];
	INS_Op4_fixedWing = ["CUP_B_SU34_LGB_CDF","CUP_I_SU34_LGB_AAF","CUP_O_Su25_TKA","CUP_O_Su25_Dyn_TKA","CUP_O_L39_TK"];
	INS_Op4_helis = ["CUP_O_UH1H_TKA","CUP_O_Mi24_D_Dynamic_TK","CUP_O_Mi17_TK","O_Heli_Attack_02_black_F","CUP_AirVehicles_Ka50"];
	INS_civ_Veh_Car = ["CUP_C_Golf4_whiteblood_Civ","CUP_C_Golf4_random_Civ","CUP_C_Golf4_camo_Civ","CUP_C_Golf4_camodigital_Civ","CUP_C_Golf4_camodark_Civ","CUP_C_LR_Transport_CTK","CUP_C_Octavia_CIV","CUP_C_Datsun","CUP_C_Datsun_4seat","CUP_C_Datsun_Plain","CUP_C_Datsun_Covered","CUP_C_Skoda_White_CIV","CUP_C_Skoda_Green_CIV","CUP_C_Skoda_Red_CIV","CUP_C_Skoda_Blue_CIV","CUP_C_SUV_TK"];
	INS_civ_Veh_Utl = ["CUP_C_Ural_Civ_01","CUP_C_Ural_Open_Civ_01","CUP_C_Ural_Civ_02","CUP_C_Ural_Civ_03","CUP_C_Ural_Open_Civ_03","CUP_C_UAZ_Open_TK_CIV","CUP_C_UAZ_Unarmed_TK_CIV","C_Truck_02_covered_F","C_Truck_02_box_F","C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["CUP_C_TK_Man_07_Waist","CUP_C_TK_Man_04","CUP_C_TK_Man_04_Jack","CUP_C_TK_Man_04_Waist","CUP_C_TK_Man_07","CUP_C_TK_Man_07_Coat","CUP_C_TK_Man_07_Waist","CUP_C_TK_Man_08","CUP_C_TK_Man_08_Jack","CUP_C_TK_Man_08_Waist","CUP_C_TK_Man_05_Coat","CUP_C_TK_Man_05_Jack","CUP_C_TK_Man_05_Waist","CUP_C_TK_Man_06_Coat","CUP_C_TK_Man_06_Jack","CUP_C_TK_Man_06_Waist","CUP_C_TK_Man_02","CUP_C_TK_Man_02_Jack","CUP_C_TK_Man_02_Waist","CUP_C_TK_Man_01_Waist","CUP_C_TK_Man_01_Coat","CUP_C_TK_Man_01_Jack","CUP_C_TK_Man_03_Coat","CUP_C_TK_Man_03_Jack","CUP_C_TK_Man_03_Waist"];//Takistani Civilians
	INS_CAS = "CUP_B_A10_AT_USA";
};

// CUP - CUP Armed Forces of the Russian Federation
if (_opposingArmies isEqualTo 14) then {
	INS_Op4_side = EAST;
	INS_men_list = ["CUP_O_RU_Soldier_AA_M_EMR","CUP_O_RU_Soldier_AA_M_EMR","CUP_O_RU_Soldier_HAT_M_EMR","CUP_O_RU_Soldier_HAT_M_EMR","CUP_O_RU_Soldier_AR_M_EMR","CUP_O_RU_Engineer_M_EMR","CUP_O_RU_Explosive_Specialist_M_EMR","CUP_O_RU_Soldier_GL_M_EMR","CUP_O_RU_Soldier_MG_M_EMR","CUP_O_RU_Soldier_Marksman_M_EMR","CUP_O_RU_Medic_M_EMR","CUP_O_RU_Officer_M_EMR","CUP_O_RU_Soldier_M_EMR","CUP_O_RU_Soldier_LAT_M_EMR","CUP_O_RU_Soldier_AT_M_EMR","CUP_O_RU_Soldier_Saiga_M_EMR","CUP_O_RU_Sniper_M_EMR","CUP_O_RU_Sniper_KSVK_M_EMR","CUP_O_RU_Spotter_M_EMR","CUP_O_RU_Soldier_SL_M_EMR","CUP_O_RU_Soldier_TL_M_EMR"];
	INS_Op4_medic = "CUP_O_RU_Medic_M_EMR";
	INS_Op4_Eng = "CUP_O_RU_Engineer_M_EMR";
	INS_Op4_pilot = ["CUP_O_RU_Pilot_M_EMR"];
	INS_Op4_Veh_Light = ["CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_PK_RU","CUP_O_BTR90_RU","CUP_O_Ural_ZU23_RU","CUP_O_BTR60_Green_RU","CUP_O_BRDM2_RUS","CUP_O_BTR60_RU"];
	INS_Op4_Veh_Tracked = ["CUP_O_T72_RU","CUP_O_T90_RU","CUP_O_2S6_RU","CUP_O_2S6M_RU","CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP3_RU"];
	INS_Op4_Veh_Support = ["CUP_O_Kamaz_Reammo_RU","CUP_O_Kamaz_Refuel_RU","CUP_O_Kamaz_Repair_RU","CUP_O_Ural_Reammo_RU","CUP_O_Ural_Refuel_RU","CUP_O_Ural_Repair_RU","CUP_O_GAZ_Vodnik_MedEvac_RU","CUP_O_BRDM2_HQ_RUS","CUP_O_BTR90_HQ_RU"];
	INS_Op4_Veh_AA = ["CUP_O_2S6_RU","CUP_O_2S6M_RU","CUP_O_Ural_ZU23_RU"];
	INS_Op4_stat_weps = ["O_HMG_01_high_F","CUP_O_ZU23_RU","CUP_O_AGS_RU","CUP_O_D30_RU","CUP_O_D30_AT_RU","CUP_O_KORD_high_RU","CUP_O_KORD_RU","CUP_O_Metis_RU","CUP_O_2b14_82mm_RU"];
	INS_Op4_fixedWing = ["CUP_O_Su25_Dyn_RU","CUP_O_SU34_RU","CUP_I_SU34_AAF","CUP_O_Su25_Dyn_CSAT_T","CUP_O_Su25_Dyn_SLA","CUP_O_SU34_SLA"];
	INS_Op4_helis = ["O_Heli_Attack_02_black_F","CUP_O_Ka60_Grey_RU","CUP_O_Mi24_P_Dynamic_RU","CUP_O_Mi24_V_Dynamic_RU","CUP_O_Mi8_RU","CUP_O_Ka52_RU","CUP_O_Ka50_DL_RU"];
	INS_civ_Veh_Car = ["C_Quadbike_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F","C_SUV_01_F","CUP_C_Datsun","CUP_C_Datsun_4seat","CUP_C_Golf4_black_Civ","CUP_C_Golf4_blue_Civ","CUP_C_Golf4_camo_Civ","CUP_C_Golf4_camodark_Civ","CUP_C_Golf4_camodigital_Civ","CUP_C_Golf4_green_Civ","CUP_C_Golf4_kitty_Civ","CUP_C_Golf4_crowe_Civ","CUP_C_Golf4_random_Civ","CUP_C_Golf4_reptile_Civ","CUP_C_Golf4_white_Civ","CUP_C_Golf4_whiteblood_Civ","CUP_C_Golf4_yellow_Civ","CUP_C_Octavia_CIV","CUP_C_Skoda_Blue_CIV","CUP_C_Skoda_Green_CIV","CUP_C_Skoda_Red_CIV","CUP_C_Skoda_White_CIV","CUP_C_S1203_Militia_CIV","CUP_C_Datsun_Covered","CUP_C_Datsun_Plain","CUP_C_Datsun_Tubeframe","CUP_C_Golf4_red_Civ","CUP_C_Lada_White_CIV","CUP_LADA_LM_CIV","CUP_C_Lada_Red_CIV","CUP_C_SUV_CIV"];
	INS_civ_Veh_Utl = ["C_Truck_02_fuel_F","C_Truck_02_box_F","C_Truck_02_transport_F","C_Truck_02_covered_F","C_Van_01_fuel_F","C_Offroad_01_repair_F","C_Van_01_transport_F","C_Van_01_box_F","CUP_C_Tractor_CIV","CUP_C_Tractor_Old_CIV","CUP_C_Ural_Civ_03","CUP_C_Ural_Open_Civ_03","CUP_C_Ural_Open_Civ_01","CUP_C_Ural_Civ_02","CUP_C_Ural_Open_Civ_02"];
	INS_civlist = ["CUP_C_R_Assistant_01","CUP_C_R_Citizen_02","CUP_C_R_Citizen_01","CUP_C_R_Citizen_04","CUP_C_R_Citizen_03","CUP_C_R_Doctor_01","CUP_C_R_Functionary_01","CUP_C_R_Functionary_02","CUP_C_R_Worker_05","CUP_C_R_Mechanic_02","CUP_C_R_Mechanic_03","CUP_C_R_Mechanic_01","CUP_C_R_Profiteer_02","CUP_C_R_Profiteer_03","CUP_C_R_Profiteer_01","CUP_C_R_Profiteer_04","CUP_C_R_Rocker_01","CUP_C_R_Rocker_03","CUP_C_R_Rocker_02","CUP_C_R_Rocker_04","CUP_C_R_Schoolteacher_01","CUP_C_R_Villager_01","CUP_C_R_Villager_04","CUP_C_R_Villager_02","CUP_C_R_Villager_03","CUP_C_R_Woodlander_01","CUP_C_R_Woodlander_02","CUP_C_R_Woodlander_03","CUP_C_R_Woodlander_04","CUP_C_R_Worker_03","CUP_C_R_Worker_04","CUP_C_R_Worker_02","CUP_C_R_Worker_01"];
	INS_CAS = "CUP_B_A10_AT_USA";
};

// Massi Middle Eastern Warfare CSAT Army (EAST)
if (_opposingArmies isEqualTo 15) then {
	INS_Op4_side = EAST;
	INS_men_list = ["O_mas_irahd_Army_F","O_mas_irahd_Army_SL_F","O_mas_irahd_Army_LITE_F","O_mas_irahd_Army_OFF_F","O_mas_irahd_Army_EXP_F","O_mas_irahd_Army_GL_F","O_mas_irahd_Army_TL_F","O_mas_irahd_Army_MG_F","O_mas_irahd_Army_AR_F","O_mas_irahd_Army_LAT_F","O_mas_irahd_Army_AT_F","O_mas_irahd_Army_AA_F","O_mas_irahd_Army_M_F","O_mas_irahd_Army_MEDIC_F","O_mas_irahd_Army_ENG_F","O_mas_irahd_Army_amort_F","O_mas_irahd_Army_smort_F","O_mas_irahd_SOF_F","O_mas_irahd_SOF_SL_F","O_mas_irahd_SOF_EXP_F","O_mas_irahd_SOF_MEDIC_F","O_mas_irahd_SOF_M_F","O_mas_irahd_SOF_MO_F"];
	INS_Op4_medic = "O_mas_irahd_Army_MEDIC_F";
	INS_Op4_Eng = "O_mas_irahd_Army_ENG_F";
	INS_Op4_pilot = ["O_mas_irahd_Army_Pilot_F"];
	INS_Op4_Veh_Light = ["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_Med","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23"];
	INS_Op4_Veh_Tracked = ["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	INS_Op4_Veh_AA = ["O_mas_ZSU_OPF_01"];
	INS_Op4_Veh_Support = ["O_mas_cars_Ural_BM21","O_mas_cars_Ural","O_mas_cars_Ural_open","O_mas_cars_Ural_ammo","O_mas_cars_Ural_fuel","O_mas_cars_Ural_repair"];//"O_mas_cars_UAZ_Med"
	INS_Op4_stat_weps = ["O_mas_DSHKM_AAF","O_mas_ZU23_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	INS_Op4_fixedWing = ["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F","O_Plane_CAS_02_F"];
	INS_Op4_helis = ["O_mas_MI24V","O_mas_MI8","O_mas_MI8MTV"];
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["C_mas_med_1","C_mas_med_2","C_mas_med_3","C_mas_med_4","C_mas_med_5","C_mas_med_6","C_mas_med_7","C_mas_med_8","C_mas_med_9","C_mas_med_10"];//Faction - mas_med_cim
};

// Massi Takistan Army (EAST)
if (_opposingArmies isEqualTo 16) then {
	INS_Op4_side = EAST;
	INS_men_list = ["O_mas_med_Armyhd_F","O_mas_med_Armyhd_SL_F","O_mas_med_Armyhd_OFF_F","O_mas_med_Armyhd_EXP_F","O_mas_med_Armyhd_GL_F","O_mas_med_Armyhd_TL_F","O_mas_med_Armyhd_MG_F","O_mas_med_Armyhd_AR_F","O_mas_med_Armyhd_LAT_F","O_mas_med_Armyhd_AT_F","O_mas_med_Armyhd_AA_F","O_mas_med_Armyhd_M_F","O_mas_med_Armyhd_MEDIC_F","O_mas_med_Armyhd_ENG_F","O_mas_med_Armyhd_amort_F","O_mas_med_Armyhd_smort_F","O_mas_med_ArmyhdSF_F","O_mas_med_ArmyhdSF_EXP_F","O_mas_med_ArmyhdSF_TL_F","O_mas_med_ArmyhdSF_M_F","O_mas_med_ArmyhdSF_MEDIC_F"];
	INS_Op4_medic = "O_mas_med_Armyhd_MEDIC_F";
	INS_Op4_Eng = "O_mas_med_Armyhd_ENG_F";
	INS_Op4_pilot = ["O_mas_med_Army_Pilot_F"];
	INS_Op4_Veh_Light = ["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_Med","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23"];
	INS_Op4_Veh_Tracked = ["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	INS_Op4_Veh_AA = ["O_mas_ZSU_OPF_01"];
	INS_Op4_Veh_Support = ["O_mas_cars_Ural_BM21","O_mas_cars_Ural","O_mas_cars_Ural_open","O_mas_cars_Ural_ammo","O_mas_cars_Ural_fuel","O_mas_cars_Ural_repair"];
	INS_Op4_stat_weps = ["O_mas_DSHKM_AAF","O_mas_ZU23_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	INS_Op4_fixedWing = ["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F","O_Plane_CAS_02_F"];
	INS_Op4_helis = ["O_mas_MI24V","O_mas_MI8","O_mas_MI8MTV"];
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
	INS_civlist = ["C_mas_med_Civil_1_1_F","C_mas_med_Civil_1_2_F","C_mas_med_Civil_1_3_F","C_mas_med_Civil_1_4_F","C_mas_med_Civil_2_1_F","C_mas_med_Civil_2_2_F","C_mas_med_Civil_2_3_F","C_mas_med_Civil_2_4_F","C_mas_med_Civil_doc_F","C_mas_med_Civil_fun_F"];//Faction - mas_med_civ
};

// Massi African REBEL ARMY UNITS and RUSSIAN SPETSNAZ ADVISORS (EAST)
if (_opposingArmies isEqualTo 17) then {
	INS_Op4_side = EAST;
	INS_men_list = ["O_mas_afr_Soldier_F","O_mas_afr_Soldier_GL_F","O_mas_afr_soldier_AR_F","O_mas_afr_soldier_MG_F","O_mas_afr_Soldier_lite_F","O_mas_afr_Soldier_off_F","O_mas_afr_Soldier_SL_F","O_mas_afr_soldier_M_F","O_mas_afr_soldier_LAT_F","O_mas_afr_soldier_LAA_F","O_mas_afr_medic_F","O_mas_afr_soldier_repair_F","O_mas_afr_soldier_exp_F","O_mas_afr_rusadv1_F","O_mas_afr_rusadv2_F","O_mas_afr_rusadv3_F"];
	INS_Op4_medic = "O_mas_afr_medic_F";
	INS_Op4_Eng = "O_mas_afr_soldier_repair_F";
	INS_Op4_pilot = ["O_helipilot_F"];
	INS_Op4_Veh_Light = ["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_Med","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23"];
	INS_Op4_Veh_Tracked = ["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	INS_Op4_Veh_AA = ["O_mas_ZSU_OPF_01"];
	INS_Op4_Veh_Support = ["O_mas_cars_Ural_BM21","O_mas_cars_Ural","O_mas_cars_Ural_open","O_mas_cars_Ural_ammo","O_mas_cars_Ural_fuel","O_mas_cars_Ural_repair"];
	INS_Op4_stat_weps = ["O_mas_DSHKM_AAF","O_mas_ZU23_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	INS_Op4_fixedWing = ["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F","O_Plane_CAS_02_F"];
	INS_Op4_helis = ["O_mas_MI24V","O_mas_MI8","O_mas_MI8MTV"];
	INS_civlist = ["C_mas_afr_1","C_mas_afr_2","C_mas_afr_3","C_mas_afr_4","C_mas_afr_5","C_mas_afr_6","C_mas_afr_7","C_mas_afr_8","C_mas_afr_9","C_mas_afr_10"];// Masi African Civilians
	INS_civ_Veh_Car = ["C_Hatchback_01_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F"];
	INS_civ_Veh_Utl = ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"];
};

// IFA3 - Wehrmacht Winter
if (_opposingArmies isEqualTo 18) then {
	INS_Op4_side = WEST;
	INS_men_list = ["LIB_GER_AT_soldier_w","LIB_GER_Hauptmann_w","LIB_GER_Sapper_w","LIB_GER_Unterofficer_w","LIB_GER_AT_grenadier_w","LIB_GER_Mgunner_w","LIB_GER_Medic_w","LIB_GER_Radioman_w","LIB_GER_Ober_lieutenant_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Rifleman_w","LIB_GER_Unterofficer_w","LIB_GER_Scout_sniper_w","LIB_GER_Stggunner_w","LIB_GER_Scout_smgunner_w","LIB_GER_Scout_lieutenant_w","LIB_GER_Scout_mgunner_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Scout_rifleman_w","LIB_GER_Scout_unterofficer_w"];
	INS_Op4_medic = "LIB_GER_medic_w";
	INS_Op4_Eng = "LIB_GER_sapper_w";
	INS_Op4_pilot = ["LIB_GER_pilot"];
	INS_Op4_Veh_Light = ["LIB_Kfz1_MG42_sernyt","LIB_SdKfz222"];
	INS_Op4_Veh_Tracked = ["LIB_SdKfz251_FFV_w","LIB_SdKfz_7_AA_w","LIB_FlakPanzerIV_Wirbelwind_w","LIB_PzKpfwIV_H_w","LIB_PzKpfwV_w","LIB_StuG_III_G_w","LIB_PzKpfwVI_E_w","LIB_PzKpfwVI_B_w"];
	INS_Op4_Veh_Support = ["LIB_OpelBlitz_Ambulance_w","LIB_OpelBlitz_Ammo_w","LIB_OpelBlitz_Fuel_w","LIB_OpelBlitz_Parm_w"];
	INS_Op4_Veh_AA = ["LIB_FlakPanzerIV_Wirbelwind_w"];
	INS_Op4_helis = [];
	INS_Op4_fixedWing = ["LIB_FW190F8_w","LIB_FW190F8_2_w","LIB_FW190F8_3_w","LIB_Ju87_w"];
	INS_Op4_stat_weps = ["LIB_Pak40_w","LIB_MG42_Lafette_Deployed","LIB_Flak_38_w","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
	INS_civlist = ["LIB_CIV_Assistant","LIB_CIV_Assistant_2","LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Doctor","LIB_CIV_Functionary_4","LIB_CIV_Functionary_1","LIB_CIV_Functionary_2","LIB_CIV_Functionary_3","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_SchoolTeacher","LIB_CIV_SchoolTeacher_2","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4","LIB_CIV_Worker_3","LIB_CIV_Worker_4","LIB_CIV_Worker_1","LIB_CIV_Worker_2"];
	INS_civ_Veh_Car = ["LIB_GazM1","LIB_GazM1_SOV","LIB_GazM1_FFI","LIB_Zis5v_w","LIB_Zis5v"];
	INS_civ_Veh_Utl = ["LIB_Zis6_Parm","LIB_Zis5v_Fuel","LIB_Zis5v_Med"];
	INS_CAS = "LIB_P47";
};

// IFA3/FOW - Wehrmacht
if (_opposingArmies isEqualTo 19) then {
	INS_Op4_side = WEST;
	INS_men_list = ["LIB_GER_AT_soldier","LIB_GER_hauptmann","LIB_GER_sapper","LIB_GER_unterofficer","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_radioman","LIB_GER_ober_lieutenant","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_unterofficer","LIB_GER_scout_sniper","LIB_GER_stggunner","LIB_GER_scout_smgunner","LIB_GER_scout_lieutenant","LIB_GER_scout_mgunner","LIB_GER_scout_ober_rifleman","LIB_GER_scout_rifleman","LIB_GER_scout_unterofficer"];
	INS_Op4_medic = "LIB_GER_medic";
	INS_Op4_Eng = "LIB_GER_sapper";
	INS_Op4_pilot = ["LIB_GER_pilot"];
	INS_Op4_Veh_Light = ["LIB_Kfz1_MG42_sernyt","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
	INS_Op4_Veh_Tracked = ["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
	INS_Op4_Veh_Support = ["LIB_OpelBlitz_Ambulance","LIB_OpelBlitz_Ammo","LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Parm"];
	INS_Op4_Veh_AA = ["LIB_FlakPanzerIV_Wirbelwind"];
	INS_Op4_helis = [];
	INS_Op4_fixedWing = ["LIB_FW190F8","LIB_FW190F8_2","LIB_FW190F8_3","LIB_FW190F8_4","LIB_FW190F8_5","LIB_Ju87_italy","LIB_Ju87"];
	INS_Op4_stat_weps = ["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
	INS_civlist = ["LIB_CIV_Assistant","LIB_CIV_Assistant_2","LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Doctor","LIB_CIV_Functionary_4","LIB_CIV_Functionary_1","LIB_CIV_Functionary_2","LIB_CIV_Functionary_3","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_SchoolTeacher","LIB_CIV_SchoolTeacher_2","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4","LIB_CIV_Worker_3","LIB_CIV_Worker_4","LIB_CIV_Worker_1","LIB_CIV_Worker_2"];
	INS_civ_Veh_Car = ["LIB_GazM1","LIB_GazM1_SOV","LIB_GazM1_FFI","LIB_Zis5v_w","LIB_Zis5v"];
	INS_civ_Veh_Utl = ["LIB_Zis6_Parm","LIB_Zis5v_Fuel","LIB_Zis5v_Med"];
	INS_CAS = "LIB_P47";
};

if (!isServer && hasInterface) exitWith {};

private _gridMarkerUnitPools = {
	// Classes used by grid system
	params ["_faction"];
	//diag_log format ["RESULT %1",_faction];
	private ["_InfPool","_ArmPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_issueNVG"];
	switch (_faction) do {
		case 0: {// EAST CSAT FACTION
			_InfPool=	["O_SoldierU_SL_F","O_Soldier_GL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F","O_HeavyGunner_F","O_Soldier_HAT_F","O_Soldier_AHAT_F"];
			_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_v2_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
			_MotPool=	["O_Truck_02_covered_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_G_Offroad_01_armed_F","O_MBT_04_cannon_F"];
			_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
			_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F"];//"O_Heli_Transport_04_bench_F"
			_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
			_stPool=	["O_Mortar_01_F","O_Mortar_01_F","O_static_AT_F","O_static_AA_F","O_GMG_01_high_F","O_HMG_01_high_F"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["O_crew_F"];
			_heliCrew=	["O_helicrew_F","O_helipilot_F"];
			_issueNVG= true;// true if faction can have NVGs else false
		};
		case 1: {// WEST NATO
			_InfPool=	["B_Soldier_A_F","B_soldier_AR_F","B_medic_F","B_engineer_F","B_soldier_exp_F","B_Soldier_GL_F","B_HeavyGunner_F","B_soldier_M_F","B_soldier_mine_F","B_soldier_AA_F","B_soldier_AT_F","B_officer_F","B_soldier_repair_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT2_F","B_Soldier_lite_F","B_Sharpshooter_F","B_Soldier_SL_F","B_Soldier_TL_F","B_recon_exp_F","B_recon_JTAC_F","B_recon_M_F","B_recon_medic_F","B_recon_F","B_recon_LAT_F","B_Recon_Sharpshooter_F","B_recon_TL_F","B_sniper_F","B_ghillie_ard_F","B_ghillie_lsh_F","B_ghillie_sard_F","B_spotter_F"];
			_ArmPool=	["B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_AA_F"];
			_MotPool=	["B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_LSV_01_AT_F","B_LSV_01_armed_F","B_APC_Wheeled_01_cannon_F","B_AFV_Wheeled_01_cannon_F","B_AFV_Wheeled_01_up_cannon_F"];//"I_MRAP_03_F",
			_ACHPool=	["B_Heli_Attack_01_dynamicLoadout_F","B_Heli_Light_01_dynamicLoadout_F"];
			_CHPool=	["B_Heli_Transport_03_F","B_Heli_Light_01_F","B_Heli_Transport_01_F"];
			_uavPool=	["B_UAV_02_dynamicLoadout_F","B_UAV_05_F","B_UGV_01_rcws_F"];
			_stPool=	["B_HMG_01_high_F","B_GMG_01_high_F","B_Mortar_01_F","B_static_AA_F","B_static_AT_F"];
			_shipPool=	["B_Boat_Transport_01_F","B_Boat_Armed_01_minigun_F"];
			_diverPool=	["B_diver_F","B_diver_exp_F","B_diver_TL_F"];
			_crewPool=	["B_crew_F"];
			_heliCrew=	["B_helicrew_F","B_Helipilot_F"];//"B_soldier_PG_F",
			_issueNVG= true;
		};
		case 2: {// WEST FIA FACTION
			_InfPool=	["B_G_Soldier_F","B_G_Soldier_lite_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_LAT_F","B_G_Soldier_A_F","B_G_officer_F","B_G_Sharpshooter_F","B_G_Soldier_LAT2_F"];
			_ArmPool=	["B_APC_Tracked_01_rcws_F"];
			_MotPool=	["B_G_Offroad_01_armed_F","B_G_Offroad_01_AT_F","B_LSV_01_AT_F","B_LSV_01_armed_F","O_G_Offroad_01_AT_F","O_G_Offroad_01_armed_F"];
			_ACHPool=	["I_Heli_light_03_F","B_Heli_Light_01_F"];
			_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","O_Heli_Transport_04_covered_F"];
			_uavPool=	[];
			_stPool=	["B_G_Mortar_01_F","B_GMG_01_high_F","B_HMG_01_high_F","B_HMG_01_F","B_static_AT_F","B_static_AA_F","B_GMG_01_F"];
			_shipPool=	["B_G_Boat_Transport_01_F","B_Boat_Armed_01_minigun_F"];
			_diverPool=	["B_diver_F","B_diver_exp_F","B_diver_TL_F"];
			_crewPool=	["B_G_engineer_F"];
			_heliCrew=	["B_G_Soldier_SL_F","B_G_Soldier_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_Soldier_LAT_F","B_G_Soldier_GL_F"];
			_issueNVG= false;
		};
		case 3: {// EAST CSAT Pacific FACTION
			_InfPool=	["O_T_Soldier_A_F","O_T_Soldier_AAR_F","O_T_Support_AMG_F","O_T_Support_AMort_F","O_T_Soldier_AAA_F","O_T_Soldier_AAT_F","O_T_Soldier_AR_F","O_T_Medic_F","O_T_Crew_F","O_T_Engineer_F","O_T_Soldier_Exp_F","O_T_Soldier_GL_F","O_T_Support_GMG_F","O_T_Support_MG_F","O_T_Support_Mort_F","O_T_Soldier_M_F","O_T_Soldier_AA_F","O_T_Soldier_AA_F","O_T_Soldier_AT_F","O_T_Officer_F","O_T_Soldier_PG_F","O_T_Soldier_Repair_F","O_T_Soldier_F","O_T_Soldier_LAT_F","O_T_Soldier_SL_F","O_T_Soldier_TL_F","O_T_Soldier_UAV_F","O_T_Recon_Exp_F","O_T_Recon_JTAC_F","O_T_Recon_M_F","O_T_Recon_Medic_F","O_T_Recon_F","O_T_Recon_LAT_F","O_T_Recon_TL_F","O_T_Sniper_F","O_T_Spotter_F","O_T_ghillie_tna_F","O_V_Soldier_ghex_F","O_V_Soldier_TL_ghex_F","O_V_Soldier_Exp_ghex_F","O_V_Soldier_Medic_ghex_F","O_V_Soldier_M_ghex_F","O_V_Soldier_LAT_ghex_F","O_V_Soldier_JTAC_ghex_F","O_T_Soldier_HAT_F","O_T_Soldier_AHAT_F"];
			_ArmPool=	["O_T_MBT_02_cannon_ghex_F","O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Tracked_02_AA_ghex_F","O_T_MBT_04_command_F","O_T_MBT_04_cannon_F"];
			_MotPool=	["O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","O_T_LSV_02_armed_F","O_G_Offroad_01_armed_F","O_T_APC_Wheeled_02_rcws_v2_ghex_F"];
			_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
			_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F"];
			_uavPool=	["O_T_UAV_04_CAS_F","O_UAV_01_F","O_T_UGV_01_rcws_ghex_F"];
			_stPool=	["B_T_HMG_01_F","O_GMG_01_high_F","O_HMG_01_high_F","O_static_AT_F","O_static_AA_F","O_GMG_01_F","O_G_Mortar_01_F"];
			_shipPool=	["O_T_Boat_Transport_01_F","O_T_Boat_Armed_01_hmg_F"];
			_diverPool=	["O_T_Diver_Exp_F","O_T_Diver_TL_F","O_T_Diver_F"];
			_crewPool=	["O_T_Crew_F"];
			_heliCrew=	["O_T_Helicrew_F","O_T_Helipilot_F"];
			_issueNVG= false;
		};
		case 4: {// INDEPENDENT Synikat FACTION
			_InfPool=	["I_C_Soldier_Para_7_F","I_C_Soldier_Para_2_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_1_F","I_C_Soldier_Para_5_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_1_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_4_F"];
			_ArmPool=	["I_APC_tracked_03_cannon_F"];
			_MotPool=	["I_G_Offroad_01_armed_F","O_G_Offroad_01_armed_F","I_C_Offroad_02_AT_F","I_C_Offroad_02_LMG_F","I_G_Offroad_01_AT_F","O_G_Offroad_01_AT_F"];
			_ACHPool=	["I_Heli_light_03_dynamicLoadout_F"];
			_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","I_C_Heli_Light_01_civil_F"];
			_uavPool=	[];
			_stPool=	["I_G_Mortar_01_F","I_GMG_01_high_F","I_HMG_01_high_F","I_HMG_01_F","I_static_AT_F","I_static_AA_F","I_GMG_01_F"];
			_shipPool=	["I_C_Boat_Transport_02_F","I_C_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
			_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
			_crewPool=	["I_C_Soldier_Para_8_F"];
			_heliCrew=	["I_C_Pilot_F","I_C_Helipilot_F"];
			_issueNVG= false;
		};
		case 5: {// RHS - Armed Forces of the Russian Federation MSV
			_InfPool=	["rhs_msv_driver_armored","rhs_msv_rifleman","rhs_msv_efreitor","rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_machinegunner_assistant","rhs_msv_at","rhs_msv_strelok_rpg_assist","rhs_msv_marksman","rhs_msv_officer_armored","rhs_msv_junior_sergeant","rhs_msv_sergeant","rhs_msv_engineer","rhs_msv_driver","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT"];//"rhs_msv_officer",
			_ArmPool=	["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
			_MotPool=	["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01"];
			_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc"];
			_CHPool=	["Cha_Mi24_P","Cha_Mi24_V","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
			_uavPool=	["rhs_pchela1t_vvs"];
			_stPool=	["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["rhs_msv_crew_commander","rhs_msv_combatcrew","rhs_msv_armoredcrew","rhs_msv_crew"];
			_heliCrew=	["rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_at","rhs_msv_rifleman","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman"];
			_issueNVG= true;
		};
		case 6: {// RHS - DESERT Armed Forces of the Russian Federation VDV
			_InfPool=	["rhs_vdv_des_aa","rhs_vdv_des_at","rhs_vdv_des_arifleman","rhs_vdv_des_sergeant","rhs_vdv_des_efreitor","rhs_vdv_des_grenadier_rpg","rhs_vdv_des_strelok_rpg_assist","rhs_vdv_des_junior_sergeant","rhs_vdv_des_machinegunner","rhs_vdv_des_machinegunner_assistant","rhs_vdv_des_marksman","rhs_vdv_des_marksman_asval","rhs_vdv_des_rifleman","rhs_vdv_des_rifleman_asval","rhs_vdv_des_rifleman_lite","rhs_vdv_des_grenadier"];
			_ArmPool=	["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
			_MotPool=	["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01"];
			_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc"];
			_CHPool=	["Cha_Mi24_P","Cha_Mi24_V","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
			_uavPool=	["rhs_pchela1t_vvs"];
			_stPool=	["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["rhs_vdv_des_crew_commander","rhs_vdv_des_combatcrew","rhs_vdv_des_armoredcrew"];
			_heliCrew=	["rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_at","rhs_msv_rifleman","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman"];
			_issueNVG= true;
		};
		case 7: {// RHS GREF - Chenarus Ground Forces (RESISTANCE)
			_InfPool=	["rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_m70","rhsgref_cdf_reg_rifleman_lite","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_officer","rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_medic","rhsgref_cdf_reg_engineer","rhsgref_cdf_para_rifleman","rhsgref_cdf_para_rifleman_lite","rhsgref_cdf_para_autorifleman","rhsgref_cdf_para_machinegunner","rhsgref_cdf_para_marksman","rhsgref_cdf_para_squadleader","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_engineer"];//"rhsgref_cdf_reg_general","rhsgref_cdf_para_officer"
			_ArmPool=	["rhsgref_cdf_t72ba_tv","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_gaz66_zu23"];
			_MotPool=	["rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_BRDM2_HQ","rhsgref_BRDM2_ATGM","rhsgref_c_a2port_armor","rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9"];
			_ACHPool=	["rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh"];
			_CHPool=	["rhsgref_cdf_reg_Mi8amt"];
			_uavPool=	[];
			_stPool=	["RHSgref_cdf_ZU23","rhsgref_cdf_reg_M252","rhsgref_cdf_reg_d30","rhsgref_cdf_reg_d30_at","rhsgref_cdf_Igla_AA_pod","rhsgref_cdf_AGS30_TriPod","rhsgref_cdf_DSHKM","rhsgref_cdf_DSHKM_Mini_TriPod","rhsgref_cdf_NSV_TriPod","rhsgref_cdf_SPG9","rhsgref_cdf_SPG9M"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
			_crewPool=	["rhsgref_cdf_reg_crew","rhsgref_cdf_para_crew"];
			_heliCrew=	["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_machinegunner","rhs_msv_at","rhsgref_cdf_reg_rifleman","rhsgref_cdf_para_engineer","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_reg_marksman"];
			_issueNVG= true;
		};
		case 8: {// IFA3/FOW - Falscirmjagers
			_InfPool=	["LIB_FSJ_AT_soldier","fow_s_ger_luft_camo_tl_stg","LIB_FSJ_sapper_gefr","fow_s_ger_luft_camo_tl_mp40","fow_s_ger_luft_camo_mg42_asst","fow_s_ger_luft_camo_mg42_sparebarrel","fow_s_ger_luft_camo_mg42_gunner","fow_s_ger_luft_camo_medic","fow_s_ger_luft_camo_radio_operator","fow_s_ger_luft_camo_rifleman_mp40_pzf","fow_s_ger_luft_camo_rifleman_g43","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_nco_mp40","LIB_FSJ_Sniper","fow_s_ger_luft_camo_rifleman_fg42","fow_s_ger_luft_mg34_gunner","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_tl_asst"];
			_ArmPool=	["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
			_MotPool=	["LIB_Kfz1_MG42_sernyt","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
			_ACHPool=	[];
			_CHPool=	[];
			_uavPool=	[];
			_stPool=	["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
			_shipPool=	["B_Boat_Transport_01_F","LIB_LCM3_Armed"];
			_diverPool=	["LIB_FSJ_AT_soldier","fow_s_ger_luft_camo_tl_stg","LIB_FSJ_sapper_gefr","fow_s_ger_luft_camo_tl_mp40","fow_s_ger_luft_camo_mg42_asst","fow_s_ger_luft_camo_mg42_sparebarrel","fow_s_ger_luft_camo_mg42_gunner","fow_s_ger_luft_camo_medic","fow_s_ger_luft_camo_radio_operator","fow_s_ger_luft_camo_rifleman_mp40_pzf","fow_s_ger_luft_camo_rifleman_g43","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_nco_mp40","LIB_FSJ_Sniper","fow_s_ger_luft_camo_rifleman_fg42","fow_s_ger_luft_mg34_gunner","fow_s_ger_luft_camo_rifleman","fow_s_ger_luft_camo_tl_asst"];
			_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_unterofficer","LIB_GER_tank_lieutenant"];
			_heliCrew=	["LIB_GER_pilot"];
			_issueNVG= false;
		};
		case 9: {// IFA3/FOW - Heer
			_InfPool=	["LIB_GER_AT_soldier","fow_s_ger_heer_nco_mp40","LIB_GER_sapper","fow_s_ger_heer_tl_mp40","fow_s_ger_heer_mg42_sparebarrel","fow_s_ger_heer_mg42_asst","fow_s_ger_heer_mg42_gunner","fow_s_ger_heer_medic","fow_s_ger_heer_radio_operator","fow_s_ger_heer_tl_asst","fow_s_ger_heer_rifleman_g43","fow_s_ger_heer_rifleman","fow_s_ger_heer_tl_stg","LIB_GER_scout_sniper","fow_s_ger_heer_rifleman_mp40_pzf","fow_s_ger_heer_mg34_gunner"];
			_ArmPool=	["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
			_MotPool=	["LIB_Kfz1_MG42_sernyt","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
			_ACHPool=	[];
			_CHPool=	[];
			_uavPool=	[];
			_stPool=	["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
			_shipPool=	["B_Boat_Transport_01_F","LIB_LCM3_Armed"];
			_diverPool=	["LIB_GER_AT_soldier","fow_s_ger_heer_nco_mp40","LIB_GER_sapper","fow_s_ger_heer_tl_mp40","fow_s_ger_heer_mg42_sparebarrel","fow_s_ger_heer_mg42_asst","fow_s_ger_heer_mg42_gunner","fow_s_ger_heer_medic","fow_s_ger_heer_radio_operator","fow_s_ger_heer_tl_asst","fow_s_ger_heer_rifleman_g43","fow_s_ger_heer_rifleman","fow_s_ger_heer_tl_stg","LIB_GER_scout_sniper","fow_s_ger_heer_rifleman_mp40_pzf","fow_s_ger_heer_mg34_gunner"];
			_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_unterofficer","LIB_GER_tank_lieutenant"];
			_heliCrew=	["LIB_GER_pilot"];
			_issueNVG= false;
		};
		case 10: {// IFA3/FOW - SS
			_InfPool=	["SG_sturmtrooper_AT_soldier","fow_s_ger_ss_nco_mp40","SG_sturmtrooper_sapper","fow_s_ger_ss_tl_mp40","fow_s_ger_ss_mg42_sparebarrel","fow_s_ger_ss_mg42_asst","fow_s_ger_ss_mg42_gunner","fow_s_ger_ss_medic","fow_s_ger_ss_radio_operator","fow_s_ger_ss_tl_asst","fow_s_ger_ss_rifleman_g43","fow_s_ger_ss_rifleman","fow_s_ger_ss_tl_stg","LIB_GER_scout_sniper","fow_s_ger_ss_mg34_gunner","fow_s_ger_ss_rifleman_mp40"];
			_ArmPool=	["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
			_MotPool=	["LIB_Kfz1_MG42_sernyt","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
			_ACHPool=	[];
			_CHPool=	[];
			_uavPool=	[];
			_stPool=	["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
			_shipPool=	["B_Boat_Transport_01_F","LIB_LCM3_Armed"];
			_diverPool=	["SG_sturmtrooper_AT_soldier","fow_s_ger_ss_nco_mp40","LIB_GER_sapper","fow_s_ger_ss_tl_mp40","fow_s_ger_ss_mg42_sparebarrel","fow_s_ger_ss_mg42_asst","fow_s_ger_ss_mg42_gunner","fow_s_ger_ss_medic","fow_s_ger_ss_radio_operator","fow_s_ger_ss_tl_asst","fow_s_ger_ss_rifleman_g43","fow_s_ger_ss_rifleman","fow_s_ger_ss_tl_stg","LIB_GER_scout_sniper","fow_s_ger_ss_mg34_gunner","fow_s_ger_ss_rifleman_mp40"];
			_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_unterofficer","LIB_GER_tank_lieutenant"];
			_heliCrew=	["LIB_GER_pilot"];
			_issueNVG= false;
		};
		case 11: {// Project_OPFOR - Afghan militia
			_InfPool=	["LOP_AM_Infantry_TL","LOP_AM_Infantry_SL","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL"];
			_ArmPool=	["LOP_AM_BTR60","LOP_AM_M113_W","LOP_AM_T72BA"];
			_MotPool=	["LOP_AM_Landrover_M2","LOP_AM_Offroad_M2","LOP_IA_M1025_W_Mk19","LOP_IA_M1025_W_M2","LOP_AM_UAZ_SPG","LOP_AM_UAZ_DshKM","LOP_AM_UAZ_AGS","LOP_ISTS_Nissan_PKM"];
			_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
			_CHPool=	["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_FAB","LOP_SLA_Mi8MTV3_UPK23"];
			_uavPool=	[];
			_stPool=	["LOP_ISTS_Static_Mk19_TriPod","LOP_ISTS_Static_M2","LOP_ISTS_Static_M2_MiniTripod","O_G_Mortar_01_F","LOP_AM_Static_ZU23","LOP_AM_Static_ZU23","LOP_AM_Static_SPG9","LOP_AM_Static_AT4","LOP_AM_Igla_AA_pod","LOP_AM_Static_DSHKM","LOP_AM_Kord"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
			_crewPool=	["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_AT"];
			_heliCrew=	["LOP_AM_Infantry_SL","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_AT","LOP_AM_Infantry_AR"];
			_issueNVG= false;
		};
		case 12: {// ISC - Syrian Arab Army (Opfor)
			_InfPool=	["isc_saa_at_o","isc_saa_crewman_o","isc_saa_grenadier_o","isc_saa_machinegunner_o","isc_saa_medic_o","isc_saa_officer_o","isc_saa_rifleman_o","isc_saa_sapper_o","isc_saa_sniper_o"];
			_ArmPool=	["isc_saa_zsu23_o","isc_saa_T72ba_o","isc_saa_T72bb_o","isc_saa_BMP1_o","isc_saa_BMP1p_o","isc_saa_BMP2_o"];
			_MotPool=	["isc_saa_BTR60PB_o","isc_saa_BTR80_o","isc_saa_BTR80a_o","isc_saa_tigr_m_o","isc_saa_tigr_m_3camo_o","isc_saa_tigr_sts_o","isc_saa_tigr_sts_3camo_o","isc_saa_UAZ_ags_o","isc_saa_UAZ_dshkm_o","isc_saa_UAZ_spg9_o","isc_saa_Ural_zu23_o","isc_saa_gaz66_zu23_o"];
			_ACHPool=	["isc_saa_mi24_o","isc_saa_mi24_at_o","isc_saa_mi24_fab_o","isc_saa_mi24_upk23_o","isc_saa_mi8amtsh_o","isc_saa_mi8amtsh_fab_o","isc_saa_mi8amtsh_upk23_o","isc_saa_mi8mtv_o","isc_saa_mi8mtv_cargo_o","isc_saa_mi8mtv_fab_o","isc_saa_mi8mtv_upk23_o"];
			_CHPool=	["isc_saa_mi8amt_o","isc_saa_mi8mt_o","isc_saa_mi8mt_cargo_o"];
			_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
			_stPool=	["isc_saa_zu23_o","isc_saa_kord_high_o","isc_saa_ags30_o","isc_saa_dshkm_minitripod_o","isc_saa_dshkm_o","isc_saa_kord_o","isc_saa_spg9_o","isc_saa_Kornet_o","isc_saa_Metis_o","isc_saa_nsv_o","isc_saa_2b14_o","isc_saa_D30_at_o","isc_saa_D30_o"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["isc_saa_crewman_o"];
			_heliCrew=	["isc_saa_grenadier_o","isc_saa_machinegunner_o","isc_saa_at_o","isc_saa_crewman_o"];
			_issueNVG= true;
		};
		case 13: {// CUP Takistan Army
			_InfPool=	["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Story_Aziz","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Pilot","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL","CUP_O_TK_SpecOps_MG","CUP_O_TK_SpecOps","CUP_O_TK_SpecOps_TL"];
			_ArmPool=	["CUP_O_BMP2_ZU_TKA","CUP_O_BMP_HQ_TKA","CUP_O_BMP1_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];//"CUP_O_M113_Med_TKA",
			_MotPool=	["CUP_O_BRDM2_TKA","CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_BTR60_TK","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_BTR40_MG_TKA"];
			_ACHPool=	["CUP_O_Mi17_TK","CUP_O_Mi24_D_TK"];
			_CHPool=	["CUP_O_UH1H_TKA","CUP_O_Mi17_TK"];
			_uavPool=	[];
			_stPool=	["CUP_O_ZU23_TK","O_HMG_01_high_F","CUP_O_AGS_TK","CUP_O_2b14_82mm_TK","CUP_O_D30_TK","CUP_O_D30_AT_TK","CUP_O_SPG9_TK"];//"CUP_O_DSHkM_MiniTriPod_TK","CUP_O_DSHKM_TK"
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["CUP_O_TK_Crew"];
			_heliCrew=	["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Pilot","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL","CUP_O_TK_SpecOps_MG","CUP_O_TK_SpecOps","CUP_O_TK_SpecOps_TL"];
			_issueNVG= true;
		};
		case 14: {// CUP Takistan Militia
			_InfPool=	["CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Commander"];
			_ArmPool=	["CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_T55_TK","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];
			_MotPool=	["CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_I_Datsun_PK_TK_Random"];
			_ACHPool=	["CUP_O_Mi17_TK","CUP_O_Mi24_D_TK"];
			_CHPool=	["CUP_O_UH1H_TKA","CUP_O_Mi17_TK"];
			_uavPool=	[];
			_stPool=	["CUP_O_ZU23_TK_INS","CUP_O_D30_TK_INS","CUP_O_D30_AT_TK_INS","CUP_O_DSHKM_TK_INS","CUP_O_DSHkM_MiniTriPod_TK_INS","CUP_O_2b14_82mm_TK_INS","CUP_O_SPG9_TK_INS","CUP_O_AGS_TK_INS"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool=	["CUP_O_TK_INS_Soldier"];
			_crewPool=	["CUP_O_TK_INS_Soldier"];
			_heliCrew=	["CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Commander"];
			_issueNVG= false;
		};
		case 15: {// CUP Armed Forces of the Russian Federation Modern MSV
			_InfPool=	["CUP_O_RU_Soldier_AA_M_EMR","CUP_O_RU_Soldier_HAT_M_EMR","CUP_O_RU_Soldier_AR_M_EMR","CUP_O_RU_Engineer_M_EMR","CUP_O_RU_Explosive_Specialist_M_EMR","CUP_O_RU_Soldier_GL_M_EMR","CUP_O_RU_Soldier_MG_M_EMR","CUP_O_RU_Soldier_Marksman_M_EMR","CUP_O_RU_Medic_M_EMR","CUP_O_RU_Officer_M_EMR","CUP_O_RU_Soldier_M_EMR","CUP_O_RU_Soldier_LAT_M_EMR","CUP_O_RU_Soldier_AT_M_EMR","CUP_O_RU_Soldier_Saiga_M_EMR","CUP_O_RU_Sniper_M_EMR","CUP_O_RU_Sniper_KSVK_M_EMR","CUP_O_RU_Spotter_M_EMR","CUP_O_RU_Soldier_SL_M_EMR","CUP_O_RU_Soldier_TL_M_EMR"];
			_ArmPool=	["CUP_O_2S6_RU","CUP_O_2S6M_RU","CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP3_RU","CUP_O_T72_RU","CUP_O_T90_RU"];
			_MotPool=	["CUP_O_Ural_ZU23_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BTR60_RU","CUP_O_BTR60_Green_RU","CUP_O_BTR90_RU","CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_RU","CUP_O_UAZ_METIS_RU","CUP_O_UAZ_SPG9_RU"];
			_ACHPool=	["CUP_O_Mi8_RU","CUP_O_Mi24_V_Dynamic_RU"];
			_CHPool=	["CUP_O_Mi8_RU","CUP_O_Ka60_Grey_RU","CUP_O_Mi8_VIV_RU"];
			_uavPool=	[];//"CUP_O_Pchela1T_RU"
			_stPool=	["CUP_O_AGS_RU","CUP_O_D30_RU","CUP_O_D30_AT_RU","CUP_O_KORD_high_RU","CUP_O_KORD_RU","CUP_O_Metis_RU","CUP_O_2b14_82mm_RU","CUP_O_ZU23_RU"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","CUP_O_PBX_RU"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["CUP_O_RU_Crew_M_EMR"];
			_heliCrew=	["CUP_O_RU_Soldier_AA_M_EMR","CUP_O_RU_Soldier_HAT_M_EMR","CUP_O_RU_Soldier_MG_M_EMR","CUP_O_RU_Soldier_M_EMR","CUP_O_RU_Soldier_AT_M_EMR","CUP_O_RU_Soldier_TL_M_EMR","CUP_O_RU_Soldier_SL_M_EMR","CUP_O_RU_Soldier_Marksman_M_EMR"];
			_issueNVG= true;
		};
		case 16: {// CUP Armed Forces of the Russian Federation MSV EMR
			_InfPool=	["CUP_O_RU_Soldier_AA_EMR","CUP_O_RU_Soldier_HAT_EMR","CUP_O_RU_Soldier_AR_EMR","CUP_O_RU_Engineer_EMR","CUP_O_RU_Explosive_Specialist_EMR","CUP_O_RU_Soldier_GL_EMR","CUP_O_RU_Soldier_MG_EMR","CUP_O_RU_Soldier_Marksman_EMR","CUP_O_RU_Medic_EMR","CUP_O_RU_Officer_EMR","CUP_O_RU_Soldier_EMR","CUP_O_RU_Soldier_LAT_EMR","CUP_O_RU_Soldier_AT_EMR","CUP_O_RU_Soldier_Saiga_EMR","CUP_O_RU_Sniper_EMR","CUP_O_RU_Sniper_KSVK_EMR","CUP_O_RU_Spotter_EMR","CUP_O_RU_Soldier_SL_EMR","CUP_O_RU_Soldier_TL_EMR","CUP_O_RU_Soldier_AA_EMR","CUP_O_RU_Soldier_HAT_EMR"];
			_ArmPool=	["CUP_O_2S6_RU","CUP_O_2S6M_RU","CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP3_RU","CUP_O_T72_RU","CUP_O_T90_RU"];
			_MotPool=	["CUP_O_Ural_ZU23_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BTR60_RU","CUP_O_BTR60_Green_RU","CUP_O_BTR90_RU","CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_RU","CUP_O_UAZ_METIS_RU","CUP_O_UAZ_SPG9_RU"];
			_ACHPool=	["CUP_O_Mi8_RU","CUP_O_Mi24_V_Dynamic_RU"];
			_CHPool=	["CUP_O_Mi8_RU","CUP_O_Ka60_Grey_RU","CUP_O_Mi8_VIV_RU"];
			_uavPool=	[];//"CUP_O_Pchela1T_RU"
			_stPool=	["CUP_O_AGS_RU","CUP_O_D30_RU","CUP_O_D30_AT_RU","CUP_O_KORD_high_RU","CUP_O_KORD_RU","CUP_O_Metis_RU","CUP_O_2b14_82mm_RU","CUP_O_ZU23_RU"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","CUP_O_PBX_RU"];
			_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["CUP_O_RU_Crew_EMR"];
			_heliCrew=	["CUP_O_RU_Soldier_HAT_EMR","CUP_O_RU_Soldier_AA_EMR","CUP_O_RU_Soldier_GL_EMR","CUP_O_RU_Soldier_MG_EMR","CUP_O_RU_Soldier_AR_EMR","CUP_O_RU_Soldier_Marksman_EMR","CUP_O_RU_Soldier_AT_EMR","CUP_O_RU_Soldier_SL_EMR","CUP_O_RU_Soldier_TL_EMR"];
			_issueNVG= true;
		};
		case 17: {// Massi CSAT Army (EAST)
			_InfPool= 	["O_mas_irahd_Army_F","O_mas_irahd_Army_SL_F","O_mas_irahd_Army_LITE_F","O_mas_irahd_Army_OFF_F","O_mas_irahd_Army_EXP_F","O_mas_irahd_Army_GL_F","O_mas_irahd_Army_TL_F","O_mas_irahd_Army_MG_F","O_mas_irahd_Army_AR_F","O_mas_irahd_Army_LAT_F","O_mas_irahd_Army_AT_F","O_mas_irahd_Army_AA_F","O_mas_irahd_Army_M_F","O_mas_irahd_Army_MEDIC_F","O_mas_irahd_Army_ENG_F","O_mas_irahd_Army_amort_F","O_mas_irahd_Army_smort_F","O_mas_irahd_SOF_F","O_mas_irahd_SOF_SL_F","O_mas_irahd_SOF_EXP_F","O_mas_irahd_SOF_MEDIC_F","O_mas_irahd_SOF_M_F","O_mas_irahd_SOF_MO_F"];
			_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
			_ACHPool= 	[];
			_CHPool= 	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["O_mas_irahd_Army_CREW_F","O_mas_irahd_Army_GL_F","O_mas_irahd_Army_ENG_F","O_mas_irahd_Army_F","O_mas_irahd_Army_LAT_F","O_mas_irahd_Army_AR_F"];
			_heliCrew=	["O_mas_irahd_Army_Pilot_F","O_mas_irahd_SOF_F","O_mas_irahd_SOF_SL_F","O_mas_irahd_SOF_EXP_F","O_mas_irahd_SOF_MEDIC_F","O_mas_irahd_Army_MG_F"];
			_issueNVG= true;
		};
		case 18: {// Massi Middle East Insurgents (EAST)
			_InfPool= 	["O_mas_med_Rebelhd1_F","O_mas_med_Rebelhd8a_F","O_mas_med_Rebelhd1a_F","O_mas_med_Rebelhd2_F","O_mas_med_Rebelhd3_F","O_mas_med_Rebelhd4_F","O_mas_med_Rebelhd_amort_F","O_mas_med_Rebelhd_smort_F","O_mas_med_Rebelhd5_F","O_mas_med_Rebelhd6_F","O_mas_med_Rebelhd6a_F","O_mas_med_Rebelhd7_F","O_mas_med_Rebelhd8_F"];
			_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_afr_GMG_01_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];//"O_mas_afr_Offroad_01s_armed_F",
			_ACHPool= 	[];
			_CHPool=	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=  ["O_mas_med_Rebelhd1_F","O_mas_med_Rebelhd8a_F","O_mas_med_Rebelhd1a_F","O_mas_med_Rebelhd2_F","O_mas_med_Rebelhd3_F","O_mas_med_Rebelhd4_F","O_mas_med_Rebelhd_amort_F"];
			_heliCrew=  ["O_mas_med_Rebelhd_smort_F","O_mas_med_Rebelhd5_F","O_mas_med_Rebelhd6_F","O_mas_med_Rebelhd6a_F","O_mas_med_Rebelhd7_F","O_mas_med_Rebelhd8_F"];
			_issueNVG= false;
		};
		case 19: {// Massi Takistan Army (EAST)
			_InfPool= 	["O_mas_med_Armyhd_F","O_mas_med_Armyhd_SL_F","O_mas_med_Armyhd_OFF_F","O_mas_med_Armyhd_EXP_F","O_mas_med_Armyhd_GL_F","O_mas_med_Armyhd_TL_F","O_mas_med_Armyhd_MG_F","O_mas_med_Armyhd_AR_F","O_mas_med_Armyhd_LAT_F","O_mas_med_Armyhd_AT_F","O_mas_med_Armyhd_AA_F","O_mas_med_Armyhd_M_F","O_mas_med_Armyhd_MEDIC_F","O_mas_med_Armyhd_ENG_F","O_mas_med_Armyhd_amort_F","O_mas_med_Armyhd_smort_F","O_mas_med_ArmyhdSF_F","O_mas_med_ArmyhdSF_EXP_F","O_mas_med_ArmyhdSF_TL_F","O_mas_med_ArmyhdSF_M_F","O_mas_med_ArmyhdSF_MEDIC_F"];//"O_mas_med_Armyhd_UNA_F"
			_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
			_ACHPool= 	[];
			_CHPool= 	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F","O_mas_med_Armyhd_MEDIC_F","O_mas_med_Armyhd_ENG_F"];
			_crewPool=	["O_mas_med_Armyhd_CREW_F","O_mas_med_Armyhd_GL_F","O_mas_med_Armyhd_LAT_F","O_mas_med_Armyhd_ENG_F","O_mas_med_Armyhd_AR_F"];
			_heliCrew=	["O_mas_med_Armyhd_Pilot_F","O_mas_med_ArmyhdSF_TL_F","O_mas_med_ArmyhdSF_M_F","O_mas_med_ArmyhdSF_MEDIC_F"];
			_issueNVG= true;
		};
		case 20: {// Massi Takistan Insurgents (EAST)
			_InfPool= 	["O_mas_med_Insuhd_F","O_mas_med_Insuhd_SL_F","O_mas_med_Insuhd_OFF_F","O_mas_med_Insuhd_EXP_F","O_mas_med_Insuhd_GL_F","O_mas_med_Insuhd_TL_F","O_mas_med_Insuhd_MG_F","O_mas_med_Insuhd_AR_F","O_mas_med_Insuhd_LAT_F","O_mas_med_Insuhd_AT_F","O_mas_med_Insuhd_AA_F","O_mas_med_Insuhd_M_F","O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_ENG_F","O_mas_med_Insuhd_amort_F","O_mas_med_Insuhd_smort_F"];
			_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_afr_Offroad_01s_armed_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];
			_ACHPool= 	[];
			_CHPool=	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=  ["O_mas_med_Insuhd_ENG_F","O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_F","O_mas_med_Insuhd_GL_F","O_mas_med_Insuhd_AR_F","O_mas_med_Insuhd_LAT_F"];
			_heliCrew=  ["O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_AA_F","O_mas_med_Insuhd_F","O_mas_med_Insuhd_OFF_F","O_mas_med_Insuhd_EXP_F"];
			_issueNVG= false;
		};
		case 21: {// Massi Africian Rebel Army (EAST)
			_InfPool= 	["O_mas_afr_Soldier_F","O_mas_afr_Soldier_GL_F","O_mas_afr_soldier_AR_F","O_mas_afr_soldier_MG_F","O_mas_afr_Soldier_lite_F","O_mas_afr_Soldier_off_F","O_mas_afr_Soldier_SL_F","O_mas_afr_soldier_M_F","O_mas_afr_soldier_LAT_F","O_mas_afr_soldier_LAA_F","O_mas_afr_medic_F","O_mas_afr_soldier_repair_F","O_mas_afr_soldier_exp_F","O_mas_afr_rusadv1_F","O_mas_afr_rusadv2_F","O_mas_afr_rusadv3_F"];//"O_mas_afr_Soldier_TL_Fn"
			_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
			_ACHPool= 	[];
			_CHPool= 	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=	["O_mas_afr_crew_F","O_mas_afr_soldier_AR_F","O_mas_afr_rusadv1_F"];
			_heliCrew=	["O_mas_afr_Soldier_GL_F","O_mas_afr_soldier_AR_F","O_mas_afr_rusadv1_F"];
			_issueNVG= false;
		};
		case 22: {// Massi Armed African Civilians (Rebel supporters EAST)
			_InfPool= 	["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel3_F","O_mas_afr_Rebel4_F","O_mas_afr_Rebel5_F","O_mas_afr_Rebel6_F","O_mas_afr_Rebel6a_F","O_mas_afr_Rebel7_F","O_mas_afr_Rebel8_F","O_mas_afr_Rebel8a_F","O_mas_afr_Rebel_amort_F","O_mas_afr_Rebel_smort_F"];
			_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
			_MotPool= 	["O_mas_afr_GMG_01_F","O_mas_afr_Offroad_01s_armed_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];
			_ACHPool= 	[];
			_CHPool=	["O_mas_MI8"];
			_uavPool= 	[];
			_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
			_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
			_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
			_crewPool=  ["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel8a_F","O_mas_afr_Rebel_amort_F"];
			_heliCrew=  ["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel3_F","O_mas_afr_Rebel4_F"];
			_issueNVG= false;
		};
		case 23: {// IFA3 Wehrmacht Winter
			_InfPool=	["LIB_GER_AT_soldier_w","LIB_GER_Hauptmann_w","LIB_GER_Sapper_w","LIB_GER_Unterofficer_w","LIB_GER_AT_grenadier_w","LIB_GER_Mgunner_w","LIB_GER_Medic_w","LIB_GER_Radioman_w","LIB_GER_Ober_lieutenant_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Rifleman_w","LIB_GER_Unterofficer_w","LIB_GER_Scout_sniper_w","LIB_GER_Stggunner_w","LIB_GER_Scout_smgunner_w","LIB_GER_Scout_lieutenant_w","LIB_GER_Scout_mgunner_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Scout_rifleman_w","LIB_GER_Scout_unterofficer_w"];
			_ArmPool=	["LIB_SdKfz251_FFV_w","LIB_SdKfz_7_AA_w","LIB_FlakPanzerIV_Wirbelwind_w","LIB_PzKpfwIV_H_w","LIB_PzKpfwV_w","LIB_StuG_III_G_w","LIB_PzKpfwVI_E_w","LIB_PzKpfwVI_B_w"];
			_MotPool=	["LIB_Kfz1_MG42_sernyt","LIB_OpelBlitz_Tent_Y_Camo_w","LIB_OpelBlitz_Open_Y_Camo_w","LIB_SdKfz222"];
			_ACHPool=	[];
			_CHPool=	[];
			_uavPool=	[];
			_stPool=	["LIB_Pak40_w","LIB_MG42_Lafette_Deployed","LIB_Flak_38_w","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
			_shipPool=	["LIB_LCM3_Armed","B_Boat_Transport_01_F"];
			_diverPool=	["LIB_GER_AT_soldier_w","LIB_GER_Hauptmann_w","LIB_GER_Sapper_w","LIB_GER_Unterofficer_w","LIB_GER_AT_grenadier_w","LIB_GER_Mgunner_w","LIB_GER_Medic_w","LIB_GER_Radioman_w","LIB_GER_Ober_lieutenant_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Rifleman_w","LIB_GER_Unterofficer_w","LIB_GER_Scout_sniper_w","LIB_GER_Stggunner_w","LIB_GER_Scout_smgunner_w","LIB_GER_Scout_lieutenant_w","LIB_GER_Scout_mgunner_w","LIB_GER_Scout_ober_rifleman_w","LIB_GER_Scout_rifleman_w","LIB_GER_Scout_unterofficer_w"];
			_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_unterofficer","LIB_GER_tank_lieutenant"];
			_heliCrew=	["LIB_GER_pilot"];
			_issueNVG= false;
		};
		case 24: {// IFA3 Wehrmacht
			_InfPool=	["LIB_GER_AT_soldier","LIB_GER_hauptmann","LIB_GER_sapper","LIB_GER_unterofficer","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_radioman","LIB_GER_ober_lieutenant","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_unterofficer","LIB_GER_scout_sniper","LIB_GER_stggunner","LIB_GER_scout_smgunner","LIB_GER_scout_lieutenant","LIB_GER_scout_mgunner","LIB_GER_scout_ober_rifleman","LIB_GER_scout_rifleman","LIB_GER_scout_unterofficer"];
			_ArmPool=	["fow_v_sdkfz_251_camo_foliage_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_camo_foliage_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_PzKpfwIV_H_tarn51c","LIB_PzKpfwV","LIB_StuG_III_G","LIB_PzKpfwVI_B_tarn51d","LIB_PzKpfwVI_E"];
			_MotPool=	["LIB_Kfz1_MG42_sernyt","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_Kfz1_MG42","fow_v_sdkfz_222_camo_foliage_ger_heer","fow_v_sdkfz_234_1"];
			_ACHPool=	[];
			_CHPool=	[];
			_uavPool=	[];
			_stPool=	["LIB_Pak40","LIB_MG42_Lafette_Deployed","LIB_Flak_38","LIB_MG34_Lafette_low_Deployed","LIB_Flak_36"];
			_shipPool=	["O_Boat_Transport_01_F"];
			_diverPool=	["LIB_GER_AT_soldier","LIB_GER_hauptmann","LIB_GER_sapper","LIB_GER_unterofficer","LIB_GER_AT_grenadier","LIB_GER_AT_grenadier","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_radioman","LIB_GER_ober_lieutenant","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_unterofficer","LIB_GER_scout_sniper","LIB_GER_stggunner","LIB_GER_scout_smgunner","LIB_GER_scout_lieutenant","LIB_GER_scout_mgunner","LIB_GER_scout_ober_rifleman","LIB_GER_scout_rifleman","LIB_GER_scout_unterofficer"];
			_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_unterofficer","LIB_GER_tank_lieutenant"];
			_heliCrew=	["LIB_GER_pilot"];
			_issueNVG= false;
		};
	};

	//return
	_ret = [_InfPool,_ArmPool,_MotPool,_ACHPool,_CHPool,_uavPool,_stPool,_shipPool,_diverPool,_crewPool,_heliCrew,_issueNVG];
	//diag_log format ["RESULT %1",_ret];
	_ret
};

private "_enemyFactions";
switch (_opposingArmies) do {
	// CSAT (no mods)
	case 1: {_enemyFactions = [0,0]};
	// NATO (no mods)
	case 2: {_enemyFactions = [1,1]};
	// NATO and FIA (no mods)
	case 3: {_enemyFactions = [1,2]};
	// CSAT Pacific Apex (no mods)
	case 4: {_enemyFactions = [3,3]};
	// CSAT Pacific and Syndikat Apex (no mods)
	case 5: {_enemyFactions = [3,4]};
	// RHS - Armed Forces of the Russian Federation (@RHSAFRF)
	case 6: {_enemyFactions = [5,5]};
	// RHS - DESERT Armed Forces of the Russian Federation (@RHSAFRF)
	case 7: {_enemyFactions = [6,6]};
	// RHS - GREF (@RHSAFRF;@RHSUSAF;@RHSGREF)
	case 8: {_enemyFactions = [7,7]};
	// IFA3/FOW - Falscirmjagers (@CBA_A3;@CUP_Terrains_Core;@IFA3_AIO_LITE;@Faces of war)
	case 9: {_enemyFactions = [8,8]};
	// IFA3/FOW - Heer (@CBA_A3;@CUP_Terrains_Core;@IFA3_AIO_LITE;@Faces of war)
	case 10: {_enemyFactions = [9,9]};
	// IFA3/FOW - SS (@CBA_A3;@CUP_Terrains_Core;@IFA3_AIO_LITE;@Faces of war)
	case 11: {_enemyFactions = [10,10]};
	// Iraqi-Syrian Conflict (@RHSAFRF;@RHSUSAF;@RHSGREF;@RHSSAF;@ISC;)
	case 12: {_enemyFactions = [11,12]};
	// CUP - Takistan Army and Takistan Militia (@CBA_A3;@cup_units;@cup_weapons;@cup_vehicles)
	case 13: {_enemyFactions = [13,14]};
	// CUP - CUP Armed Forces of the Russian Federation MSV (@CBA_A3;@cup_units;@cup_weapons;@cup_vehicles)
	case 14: {_enemyFactions = [15,16]};
	// Middle East Warfare - CSAT Army and Middle East Insurgents, NATO SF and Russian Spetsnaz Weapons, NATO Russsian Vehicles (@CBA_A3;@MiddleEastWarfare;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle)
	case 15: {_enemyFactions = [17,18]};
	// Middle East Warfare - Takistan Army and Takistan Insurgents, NATO SF and Russian Spetsnaz Weapons, NATO Russsian Vehicles (@CBA_A3;@MiddleEastWarfare;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle)
	case 16: {_enemyFactions = [19,20]};
	// African Conflict, NATO SF and Russian Spetsnaz Weapons, NATO Russsian Vehicles (@CBA_A3;@AfricanConflict_mas;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle)
	case 17: {_enemyFactions = [21,22]};
	// IFA3/FOW Wehrmacht Winter (@CBA_A3;@CUP_Terrains_Core;@IFA3_AIO_LITE;@Faces of war)
	case 18: {_enemyFactions = [23,23]};
	// IFA3/FOW Wehrmacht (@CBA_A3;@CUP_Terrains_Core;@IFA3_AIO_LITE;@Faces of war)
	case 19: {_enemyFactions = [24,24]};
};

private _majorFaction = _enemyFactions # 0;
private _currFactionArrays = [_majorFaction] call _gridMarkerUnitPools;
missionNamespace setVariable ["BMR_major_facArr", _currFactionArrays];

private _minorFaction = _enemyFactions # 1;
_currFactionArrays = [_minorFaction] call _gridMarkerUnitPools;
missionNamespace setVariable ["BMR_minor_facArr", _currFactionArrays];