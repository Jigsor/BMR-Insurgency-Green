// Modify this file with desired classnames for customization of Blufor Arsenal. Only items listed here will be available in Virtual Arsenal.
// If using class names from moded content then these mods must be loaded or else client side error occurs.
if (!hasInterface) exitWith {};

if (INS_op_faction in [9,10,11,18,19]) exitWith
{ // IFA3/FOW contents only
_availableBackpacks = [
	"B_Parachute",       //Vanilla, Not required for HALO or Bail
	"B_LIB_US_Backpack",
	"B_LIB_US_Backpack_Bandoleer",
	"B_LIB_US_Backpack_dday",
	"B_LIB_US_Backpack_eng",
	"B_LIB_US_Backpack_Mk2",
	"B_LIB_US_Backpack_RocketBag",
	"B_LIB_US_Backpack_RocketBag_Big_Empty",
	"B_LIB_US_Backpack_RocketBag_Empty",
	"B_LIB_US_Bag",
	"B_LIB_US_Bandoleer",
	"B_LIB_US_BARBag",
	"B_LIB_US_BazBag",
	"B_LIB_US_M2Flamethrower",
	"B_LIB_US_M36",
	"B_LIB_US_M36_Bandoleer",
	"B_LIB_US_M36_KOTH",
	"B_LIB_US_M36_MGbag",
	"B_LIB_US_M36_Rocketbag",
	"B_LIB_US_M36_Rocketbag_Big_Empty",
	"B_LIB_US_M36_Rocketbag_Empty",
	"B_LIB_US_M36_Rope",
	"B_LIB_US_MedicBackpack",
	"B_LIB_US_MedicBackpack_Big_Empty",
	"B_LIB_US_MedicBackpack_Empty",
	"B_LIB_US_MGbag",
	"B_LIB_US_MGbag_Big_Empty",
	"B_LIB_US_MGbag_Empty",
	"B_LIB_US_MineBag",
	"B_LIB_US_Parachute",
	"B_LIB_US_Radio",
	"B_LIB_US_Radio_ACRE2",
	"B_LIB_US_Radio_Empty",
	"B_LIB_US_RocketBag",
	"B_LIB_US_RocketBag_Big_Empty",
	"B_LIB_US_RocketBag_Empty",
	"B_LIB_US_Type5",
	"B_LIB_US_TypeA3",
	"LIB_Backpack_us",
	"LIB_Backpack_US_BAR",
	"LIB_Backpack_US_Baz",
	"LIB_Backpack_US_Mine",

	"fow_b_uk_bergenpack",
	"fow_b_uk_p37",
	"fow_b_uk_p37_blanco",
	"fow_b_uk_p37_blanco_shovel",
	"fow_b_uk_p37_radio",
	"fow_b_uk_p37_radio_blanco",
	"fow_b_uk_p37_shovel",
	"fow_b_uk_piat",
	"fow_b_uk_vickers_support",
	"fow_b_uk_vickers_weapon",
	"fow_b_us_bandoleer",
	"fow_b_us_m1928",
	"fow_b_us_m1944",
	"fow_b_us_m1944_ropes",
	"fow_b_us_m2_fueltank",
	"fow_b_us_m2_mortar_adv_weapon",
	"fow_b_us_m2_mortar_support",
	"fow_b_us_m2_mortar_weapon",
	"fow_b_us_radio",
	"fow_b_us_radio_scr",
	"fow_b_us_rocket_bag",
	"fow_b_usa_m1919_support",
	"fow_b_usa_m1919_weapon",
	"fow_b_usmc_m1928",
	"fow_b_usmc_m1928_02"
];

_availableItems = [
	"ItemMap",               //Required for many Map Click mission functions.
	"FirstAidKit",           //Required for BTC Revives
	//"ToolKit",             //Does nothing in IFA3, use LIB_ToolKit instead
	"MineDetector",
	"LIB_ToolKit",
	"Medikit",
	"ItemRadio",
	"ItemCompass",
	"ItemGPS",
	"ItemWatch",
	//NVGs
	"LIB_Mohawk",
	"LIB_GER_Headset",
	"LIB_GER_Gloves3",
	"LIB_GER_Gloves5",//<-US Airborne
	"LIB_Headwrap",
	"LIB_Headwrap_gloves",
	"fow_i_nvg_US_A4Wool_Beige",
	"fow_i_nvg_US_A4Wool_Blue",
	"fow_i_nvg_US_A4Wool_Green",
	"fow_i_nvg_US_scr",
	//Facewear
	"G_LIB_Dust_Goggles",
	"G_LIB_Headwrap",
	"G_LIB_Scarf2_B",
	"G_LIB_Scarf2_G",
	"fow_g_gloves1",
	"fow_g_gloves3",
	"fow_g_gloves4",
	"fow_g_gloves5",
	"fow_g_gloves6",
	"fow_g_glasses4",

	//Uniforms
	"U_LIB_US_AB_Uniform_M42",
	"U_LIB_US_AB_Uniform_M42_506",
	"U_LIB_US_AB_Uniform_M42_corporal",
	"U_LIB_US_AB_Uniform_M42_FC",
	"U_LIB_US_AB_Uniform_M42_Gas",
	"U_LIB_US_AB_Uniform_M42_Medic",
	"U_LIB_US_AB_Uniform_M42_NCO",
	"U_LIB_US_AB_Uniform_M42_W",
	"U_LIB_US_AB_Uniform_M43",
	"U_LIB_US_AB_Uniform_M43_corporal",
	"U_LIB_US_AB_Uniform_M43_FC",
	"U_LIB_US_AB_Uniform_M43_Flag",
	"U_LIB_US_AB_Uniform_M43_Medic",
	"U_LIB_US_AB_Uniform_M43_Medic_82AB",
	"U_LIB_US_AB_Uniform_M43_NCO",
	"U_LIB_US_AB_Uniform_M43_W",
	"U_LIB_US_Bomber_Crew",
	"U_LIB_US_Bomber_Pilot",
	"U_LIB_US_Cap",
	"U_LIB_US_Cap_w",
	"U_LIB_US_Corp",
	"U_LIB_US_Corp_w",
	"U_LIB_US_Eng",
	"U_LIB_US_Eng_w",
	"U_LIB_US_Med",
	"U_LIB_US_Med_w",
	"U_LIB_US_NAC_Med",
	"U_LIB_US_NAC_Uniform",
	"U_LIB_US_NAC_Uniform_2",
	"U_LIB_US_Off",
	"U_LIB_US_Off_w",
	"U_LIB_US_Pilot",
	"U_LIB_US_Pilot_2",
	"U_LIB_US_Private",
	"U_LIB_US_Private_1st",
	"U_LIB_US_Private_1st_w",
	"U_LIB_US_Private_w",
	"U_LIB_US_Rangers_Corp",
	"U_LIB_US_Rangers_Eng",
	"U_LIB_US_Rangers_Med",
	"U_LIB_US_Rangers_Private_1st",
	"U_LIB_US_Rangers_Sergant",
	"U_LIB_US_Rangers_Uniform",
	"U_LIB_US_Sergant",
	"U_LIB_US_Sergant_w",
	"U_LIB_US_Snipe",
	"U_LIB_US_Snipe_w",
	"U_LIB_US_Tank_Crew",
	"U_LIB_US_Tank_Crew2",

	"fow_u_aus_m37_01_private",
	"fow_u_aus_m37_02_private",
	"fow_u_aus_m37_03_private",
	"fow_u_uk_bd40_01_corporal",
	"fow_u_uk_bd40_01_lance_corporal",
	"fow_u_uk_bd40_01_lieutenant",
	"fow_u_uk_bd40_01_private",
	"fow_u_uk_bd40_01_sergeant",
	"fow_u_uk_bd40_bp_01_corporal",
	"fow_u_uk_bd40_bp_01_lance_corporal",
	"fow_u_uk_bd40_bp_01_lieutenant",
	"fow_u_uk_bd40_bp_01_private",
	"fow_u_uk_bd40_bp_01_sergeant",
	"fow_u_uk_bd40_can_01_corporal",
	"fow_u_uk_bd40_can_01_lance_corporal",
	"fow_u_uk_bd40_can_01_lieutenant",
	"fow_u_uk_bd40_can_01_private",
	"fow_u_uk_bd40_can_01_sergeant",
	"fow_u_uk_bd40_can_02_corporal",
	"fow_u_uk_bd40_can_02_lance_corporal",
	"fow_u_uk_bd40_can_02_lieutenant",
	"fow_u_uk_bd40_can_02_private",
	"fow_u_uk_bd40_can_02_sergeant",
	"fow_u_uk_bd40_commando_01_private",
	"fow_u_uk_bd40_corporal",
	"fow_u_uk_bd40_kieffer_01",
	"fow_u_uk_bd40_kieffer_02",
	"fow_u_uk_bd40_lance_corporal",
	"fow_u_uk_bd40_lieutenant",
	"fow_u_uk_bd40_nor_01_commando_corporal",
	"fow_u_uk_bd40_nor_01_commando_lance_corporal",
	"fow_u_uk_bd40_nor_01_commando_lieutenant",
	"fow_u_uk_bd40_nor_01_commando_private",
	"fow_u_uk_bd40_nor_01_commando_sergeant",
	"fow_u_uk_bd40_nor_02_commando_private",
	"fow_u_uk_bd40_pib_01_corporal",
	"fow_u_uk_bd40_pib_01_lance_corporal",
	"fow_u_uk_bd40_pib_01_lieutenant",
	"fow_u_uk_bd40_pib_01_private",
	"fow_u_uk_bd40_pib_01_sergeant",
	"fow_u_uk_bd40_pol_01_commando_corporal",
	"fow_u_uk_bd40_pol_01_commando_lance_corporal",
	"fow_u_uk_bd40_pol_01_commando_lieutenant",
	"fow_u_uk_bd40_pol_01_commando_private",
	"fow_u_uk_bd40_pol_01_commando_sergeant",
	"fow_u_uk_bd40_pol_02_commando_private",
	"fow_u_uk_bd40_private",
	"fow_u_uk_bd40_seac_01_corporal",
	"fow_u_uk_bd40_seac_01_lance_corporal",
	"fow_u_uk_bd40_seac_01_lieutenant",
	"fow_u_uk_bd40_seac_01_private",
	"fow_u_uk_bd40_seac_01_sergeant",
	"fow_u_uk_bd40_seac_02_corporal",
	"fow_u_uk_bd40_seac_02_lance_corporal",
	"fow_u_uk_bd40_seac_02_lieutenant",
	"fow_u_uk_bd40_seac_02_private",
	"fow_u_uk_bd40_seac_02_sergeant",
	"fow_u_uk_bd40_sergeant",
	"fow_u_uk_parasmock",
	"fow_u_uk_pol_parasmock",
	"fow_u_us_hbt_01_private",
	"fow_u_us_hbt_02_private",
	"fow_u_us_m37_01_private",
	"fow_u_us_m37_02_private",
	"fow_u_us_m41_01_private",
	"fow_u_us_m42_ab_01_101_corporal",
	"fow_u_us_m42_ab_01_101_flag_corporal",
	"fow_u_us_m42_ab_01_101_flag_private",
	"fow_u_us_m42_ab_01_101_flag_sergeant",
	"fow_u_us_m42_ab_01_101_flag_staffsergeant",
	"fow_u_us_m42_ab_01_101_private",
	"fow_u_us_m42_ab_01_101_sergeant",
	"fow_u_us_m42_ab_01_101_staffsergeant",
	"fow_u_us_m42_ab_01_82_corporal",
	"fow_u_us_m42_ab_01_82_flag_corporal",
	"fow_u_us_m42_ab_01_82_flag_private",
	"fow_u_us_m42_ab_01_82_flag_sergeant",
	"fow_u_us_m42_ab_01_82_flag_staffsergeant",
	"fow_u_us_m42_ab_01_82_private",
	"fow_u_us_m42_ab_01_82_sergeant",
	"fow_u_us_m42_ab_01_82_staffsergeant",
	"fow_u_us_m42_ab_01_corporal",
	"fow_u_us_m42_ab_01_private",
	"fow_u_us_m42_ab_01_sergeant",
	"fow_u_us_m42_ab_01_staffsergeant",
	"fow_u_us_pilot_01",
	"fow_u_us_pilot_02",
	"fow_u_usmc_p41_01_private",
	"fow_u_usmc_p42_01_camo01_1_private",
	"fow_u_usmc_p42_01_camo01_2_private",
	"fow_u_usmc_p42_01_camo01_3_private",
	"fow_u_usmc_p42_01_camo02_1_private",
	"fow_u_usmc_p42_01_camo02_2_private",
	"fow_u_usmc_p42_01_camo02_3_private",

	//Headgear / Masks
	"H_LIB_US_AB_Helmet",
	"H_LIB_US_AB_Helmet_2",
	"H_LIB_US_AB_Helmet_3",
	"H_LIB_US_AB_Helmet_4",
	"H_LIB_US_AB_Helmet_5",
	"H_LIB_US_AB_Helmet_Clear_1",
	"H_LIB_US_AB_Helmet_Clear_2",
	"H_LIB_US_AB_Helmet_Clear_3",
	"H_LIB_US_AB_Helmet_CO_1",
	"H_LIB_US_AB_Helmet_CO_2",
	"H_LIB_US_AB_Helmet_Jump_1",
	"H_LIB_US_AB_Helmet_Jump_2",
	"H_LIB_US_AB_Helmet_Medic_1",
	"H_LIB_US_AB_Helmet_NCO_1",
	"H_LIB_US_AB_Helmet_NCO_2",
	"H_LIB_US_AB_Helmet_Plain_1",
	"H_LIB_US_AB_Helmet_Plain_2",
	"H_LIB_US_AB_Helmet_Plain_3",
	"H_LIB_US_Helmet",
	"H_LIB_US_Helmet_Cap",
	"H_LIB_US_Helmet_Cap_w",
	"H_LIB_US_Helmet_CO",
	"H_LIB_US_Helmet_Cover_w",
	"H_LIB_US_Helmet_First_lieutenant",
	"H_LIB_US_Helmet_First_lieutenant_w",
	"H_LIB_US_Helmet_Med",
	"H_LIB_US_Helmet_Med_ns",
	"H_LIB_US_Helmet_Med_os",
	"H_LIB_US_Helmet_Med_w",
	"H_LIB_US_Helmet_NCO",
	"H_LIB_US_Helmet_Net",
	"H_LIB_US_Helmet_Net_ns",
	"H_LIB_US_Helmet_Net_os",
	"H_LIB_US_Helmet_Net_w",
	"H_LIB_US_Helmet_ns",
	"H_LIB_US_Helmet_os",
	"H_LIB_US_Helmet_Pilot",
	"H_LIB_US_Helmet_Pilot_Glasses_Down",
	"H_LIB_US_Helmet_Pilot_Glasses_Up",
	"H_LIB_US_Helmet_Pilot_Respirator",
	"H_LIB_US_Helmet_Pilot_Respirator_Glasses_Down",
	"H_LIB_US_Helmet_Pilot_Respirator_Glasses_Up",
	"H_LIB_US_Helmet_Second_lieutenant",
	"H_LIB_US_Helmet_Second_lieutenant_w",
	"H_LIB_US_Helmet_Tank",
	"H_LIB_US_Helmet_w",
	"H_LIB_US_Pilot_Cap",
	"H_LIB_US_Pilot_Cap_Khaki",
	"H_LIB_US_Rangers_Helmet",
	"H_LIB_US_Rangers_Helmet_Cap",
	"H_LIB_US_Rangers_Helmet_First_lieutenant",
	"H_LIB_US_Rangers_Helmet_NCO",
	"H_LIB_US_Rangers_Helmet_ns",
	"H_LIB_US_Rangers_Helmet_os",
	"H_LIB_US_Rangers_Helmet_Second_lieutenant",

	"fow_h_uk_beret_commando",
	"fow_h_uk_beret_commando_kieffer",
	"fow_h_uk_beret_commando_nor",
	"fow_h_uk_beret_commando_pol",
	"fow_h_uk_beret_para",
	"fow_h_uk_beret_para_2",
	"fow_h_uk_beret_para_pol",
	"fow_h_uk_beret_rha",
	"fow_h_uk_beret_rha_headset",
	"fow_h_uk_beret_royalmarines",
	"fow_h_uk_beret_rtr",
	"fow_h_uk_beret_rtr_headset",
	"fow_h_uk_beret_sas",
	"fow_h_uk_beret_sas_2",
	"fow_h_uk_bp_beret",
	"fow_h_uk_jungle_hat_01",
	"fow_h_uk_jungle_hat_02",
	"fow_h_uk_jungle_hat_03",
	"fow_h_uk_mk2",
	"fow_h_uk_mk2_net",
	"fow_h_uk_mk2_net_camo",
	"fow_h_uk_mk2_net_foliage",
	"fow_h_uk_mk2_para",
	"fow_h_uk_mk2_para_camo",
	"fow_h_uk_mk2_para_foliage",
	"fow_h_uk_mk3",
	"fow_h_uk_mk3_net_camo",
	"fow_h_uk_pib_beret",
	"fow_h_uk_pol_mk2_para",
	"fow_h_uk_pol_mk2_para_camo",
	"fow_h_uk_woolen_hat",
	"fow_h_uk_woolen_hat02",
	"fow_h_us_daisy_mae_01",
	"fow_h_us_daisy_mae_02",
	"fow_h_us_daisy_mae_03",
	"fow_h_us_flight_helmet",
	"fow_h_us_m1",
	"fow_h_us_m1_closed",
	"fow_h_us_m1_folded",
	"fow_h_us_m1_medic",
	"fow_h_us_m1_nco",
	"fow_h_us_m1_nco_closed",
	"fow_h_us_m1_nco_folded",
	"fow_h_us_m1_net",
	"fow_h_us_m1_officer",
	"fow_h_us_m1_officer_closed",
	"fow_h_us_m1_officer_folded",
	"fow_h_us_m2",
	"fow_h_us_m2_ace",
	"fow_h_us_m2_camo",
	"fow_h_us_m2_camo_ace",
	"fow_h_us_m2_camo_clover",
	"fow_h_us_m2_camo_diamond",
	"fow_h_us_m2_camo_heart",
	"fow_h_us_m2_camo_open",
	"fow_h_us_m2_camo_open_ace",
	"fow_h_us_m2_camo_open_clover",
	"fow_h_us_m2_camo_open_diamond",
	"fow_h_us_m2_camo_open_heart",
	"fow_h_us_m2_clover",
	"fow_h_us_m2_diamond",
	"fow_h_us_m2_fak",
	"fow_h_us_m2_fak_camo",
	"fow_h_us_m2_fak_net",
	"fow_h_us_m2_heart",
	"fow_h_us_m2_net",
	"fow_h_us_m2_net_ace",
	"fow_h_us_m2_net_clover",
	"fow_h_us_m2_net_diamond",
	"fow_h_us_m2_net_heart",
	"fow_h_usmc_m1",
	"fow_h_usmc_m1_camo_01",
	"fow_h_usmc_m1_camo_02",

	//Vests
	"V_LIB_US_AB_Vest_45",
	"V_LIB_US_AB_Vest_Asst_MG",
	"V_LIB_US_AB_Vest_Bar",
	"V_LIB_US_AB_Vest_Carbine",
	"V_LIB_US_AB_Vest_Carbine_eng",
	"V_LIB_US_AB_Vest_Carbine_nco",
	"V_LIB_US_AB_Vest_Carbine_nco_Radio",
	"V_LIB_US_AB_Vest_Garand",
	"V_LIB_US_AB_Vest_Grenadier",
	"V_LIB_US_AB_Vest_M1919",
	"V_LIB_US_AB_Vest_Thompson",
	"V_LIB_US_AB_Vest_Thompson_nco",
	"V_LIB_US_AB_Vest_Thompson_nco_Radio",
	"V_LIB_US_Assault_Vest",
	"V_LIB_US_Assault_Vest_dday",
	"V_LIB_US_Assault_Vest_Light",
	"V_LIB_US_Assault_Vest_Thompson",
	"V_LIB_US_LifeVest",
	"V_LIB_US_Vest_45",
	"V_LIB_US_Vest_Asst_MG",
	"V_LIB_US_Vest_Bar",
	"V_LIB_US_Vest_Carbine",
	"V_LIB_US_Vest_Carbine_eng",
	"V_LIB_US_Vest_Carbine_nco",
	"V_LIB_US_Vest_Carbine_nco_Radio",
	"V_LIB_US_Vest_Garand",
	"V_LIB_US_Vest_Grenadier",
	"V_LIB_US_Vest_M1919",
	"V_LIB_US_Vest_Medic",
	"V_LIB_US_Vest_Medic2",
	"V_LIB_US_Vest_Thompson",
	"V_LIB_US_Vest_Thompson_nco",
	"V_LIB_US_Vest_Thompson_nco_Radio",

	"fow_v_uk_bren",
	"fow_v_uk_bren_green",
	"fow_v_uk_officer",
	"fow_v_uk_officer_green",
	"fow_v_uk_para_bren",
	"fow_v_uk_para_bren_green",
	"fow_v_uk_para_sten",
	"fow_v_uk_para_sten_green",
	"fow_v_uk_sten",
	"fow_v_uk_sten_green",
	"fow_v_us_45",
	"fow_v_us_ab_45",
	"fow_v_us_ab_asst_mg",
	"fow_v_us_ab_bar",
	"fow_v_us_ab_carbine",
	"fow_v_us_ab_carbine_eng",
	"fow_v_us_ab_carbine_nco",
	"fow_v_us_ab_carbine_nco_scr",
	"fow_v_us_ab_garand",
	"fow_v_us_ab_garand_bandoleer",
	"fow_v_us_ab_grenade",
	"fow_v_us_ab_thompson",
	"fow_v_us_ab_thompson_nco",
	"fow_v_us_ab_thompson_nco_scr",
	"fow_v_us_asst_mg",
	"fow_v_us_bar",
	"fow_v_us_carbine",
	"fow_v_us_carbine_eng",
	"fow_v_us_carbine_nco",
	"fow_v_us_carbine_nco_scr",
	"fow_v_us_garand",
	"fow_v_us_garand_bandoleer",
	"fow_v_us_grenade",
	"fow_v_us_medic",
	"fow_v_us_thompson",
	"fow_v_us_thompson_nco",
	"fow_v_us_thompson_nco_scr",
	"fow_v_usmc_45",
	"fow_v_usmc_bar",
	"fow_v_usmc_carbine",
	"fow_v_usmc_garand",
	"fow_v_usmc_thompson",
	"fow_v_usmc_thompson_nco",

	//Weapon Accessories
	"LIB_ACC_M1891_Bayo",
	"LIB_M1918A2_BAR_Bipod",
	"LIB_ACC_GL_M7",
	"LIB_ACC_M44_Bayo",
	"LIB_ACC_GL_DYAKONOV_Empty",
	"LIB_ACC_K98_Bayo",
	"LIB_ACC_GW_SB_Empty",
	"fow_w_acc_M1897_bayo",
	"fow_w_acc_m1918a2_bipod",
	"fow_w_acc_m1918a2_handle",
	"fow_w_acc_m1_bayo",
	"fow_w_acc_no4_bayo",
	"fow_w_acc_type30_bayo",
	"fow_w_acc_fg42_bayo"
];

_availableMagazines = [
	"SmokeShellYellow",               //Poison Gas Grenade
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShell",
	
	"LIB_Ladung_Big_MINE_mag",
	"LIB_Ladung_Small_MINE_mag",
	"LIB_US_TNT_4pound_mag",
	"LIB_PMD6_MINE_mag",
	"LIB_pomzec_MINE_mag",
	"LIB_shumine_42_MINE_mag",
	"LIB_SMI_35_MINE_mag",
	"LIB_SMI_35_1_MINE_mag",
	"LIB_STMI_MINE_mag",
	"LIB_TM44_MINE_mag",
	"LIB_TMI_42_MINE_mag",
	"LIB_US_M1A1_ATMINE_mag",
	"LIB_US_M3_MINE_mag",
	"LIB_M3_MINE_mag",
	"LIB_1Rnd_RPzB",
	"LIB_1Rnd_Faustpatrone",
	"LIB_1Rnd_PzFaust_30m",
	"LIB_1Rnd_PzFaust_60m",
	"LIB_1rnd_81mmHE_GRWR34",
	"LIB_1rnd_82mmHE_BM37",
	"LIB_1rnd_60mmHE_M2",
	"LIB_US_M18",
	"LIB_US_M18_Red",
	"LIB_US_M18_Green",
	"LIB_US_M18_Yellow",
	"LIB_1Rnd_flare_white",
	"LIB_1Rnd_flare_red",
	"LIB_1Rnd_flare_green",
	"LIB_1Rnd_flare_yellow",
	"LIB_100Rnd_792x57",
	"LIB_10Rnd_792x57_sS",
	"LIB_10Rnd_792x57_SMK",
	"LIB_10Rnd_792x57_T",
	"LIB_10Rnd_792x57_T2",
	"LIB_30rnd_792x33_t",
	"LIB_32rnd_9x19_t",
	"LIB_50Rnd_792x57",
	"LIB_50Rnd_792x57_sS",
	"LIB_50Rnd_792x57_SMK",
	"LIB_5Rnd_792x57_sS",
	"LIB_5Rnd_792x57_SMK",
	"LIB_5Rnd_792x57_t",
	"LIB_75Rnd_792x57",
	"LIB_10Rnd_9x19_M1896",
	"LIB_Rg42",
	"LIB_Rpg6",
	"LIB_Pwm",
	"LIB_RDG",
	"LIB_20Rnd_792x57",
	"LIB_10Rnd_792x57_clip",
	"LIB_10Rnd_792x57",
	"LIB_5Rnd_792x57",
	"LIB_Shg24",
	"LIB_Shg24x7",
	"LIB_M39",
	"LIB_32Rnd_9x19",
	"LIB_30Rnd_792x33",
	"LIB_NB39",
	"LIB_8Rnd_9x19_P08",
	"LIB_8Rnd_9x19",
	"LIB_7Rnd_9x19",
	"LIB_7Rnd_45ACP",
	"LIB_47Rnd_762x54",
	"LIB_47Rnd_762x54d",
	"LIB_63Rnd_762x54",
	"LIB_63Rnd_762x54d",
	"LIB_15Rnd_762x33",
	"LIB_15Rnd_762x33_t",
	"LIB_8Rnd_762x63",
	"LIB_8Rnd_762x63_t",
	"LIB_5Rnd_762x63",
	"LIB_5Rnd_762x63_t",
	"LIB_20Rnd_762x63",
	"LIB_50Rnd_762x63",
	"LIB_30Rnd_45ACP",
	"LIB_30Rnd_45ACP_t",
	"LIB_50Rnd_45ACP",
	"LIB_M2_Flamethrower_Mag",
	"LIB_M2_Flamethrower_Mag_Empty",
	"LIB_30Rnd_M3_GreaseGun_45ACP",
	"LIB_5Rnd_762x54",
	"LIB_5Rnd_762x54_t46",
	"LIB_5Rnd_762x54_t30",
	"LIB_5Rnd_762x54_D",
	"LIB_5Rnd_762x54_b30",
	"LIB_35Rnd_762x25",
	"LIB_35Rnd_762x25_t",
	"LIB_35Rnd_762x25_t2",
	"LIB_35Rnd_762x25_ap",
	"LIB_71Rnd_762x25",
	"LIB_71Rnd_762x25_t",
	"LIB_71Rnd_762x25_t2",
	"LIB_71Rnd_762x25_ap",
	"LIB_1Rnd_145x114",
	"LIB_10Rnd_762x54",
	"LIB_10Rnd_762x54_t46",
	"LIB_10Rnd_762x54_t30",
	"LIB_10Rnd_762x54_t462",
	"LIB_10Rnd_762x54_t302",
	"LIB_10Rnd_762x54_d",
	"LIB_10Rnd_762x54_b30",
	"LIB_1Rnd_60mm_M6",
	"LIB_US_Mk_2",
	"LIB_8Rnd_762x25",
	"LIB_7Rnd_762x38",
	"LIB_F1",
	"LIB_US_BM10_PM_mag",
	"LIB_PM_Provod_100",
	"LIB_100Rnd_762x63",
	
	"fow_e_tnt_halfpound",
	"fow_e_tnt_onepound_mag",
	"fow_e_tnt_twohalfpound_mag",
	"fow_e_tnt_twopound_mag",	
	"fow_1Rnd_pzfaust_100",	
	"fow_1Rnd_pzfaust_60",
	"fow_1Rnd_type2_40",
	"fow_1Rnd_pzfaust_30",
	"fow_1Rnd_pzfaust_30_klein",
	"fow_1Rnd_piat_HEAT",
	"fow_1Rnd_piat_HE",
	"fow_10nd_792x57",
	"fow_20Rnd_792x57",
	"fow_30Rnd_792x33",
	"fow_30Rnd_77x58",
	"fow_32Rnd_8x22",
	"fow_32Rnd_9x19_mp40",
	"fow_32Rnd_9x19_sten",
	"fow_50Rnd_792x57",
	"fow_5Rnd_792x57",
	"fow_5Rnd_77x58",
	"fow_7Rnd_765x17",
	"fow_8Rnd_765x17",
	"fow_8Rnd_8x22",
	"fow_13Rnd_9x19",
	"fow_8Rnd_9x19",
	"fow_e_m24K_spli",
	"fow_e_m24_at",
	"fow_e_m24_spli",
	"fow_e_m24",
	"fow_e_m24K",
	"fow_e_nb39b",
	"fow_e_type97",
	"fow_e_type99",
	"fow_e_type99_at",
	"fow_10Rnd_303",
	"fow_5Rnd_12G_Pellets",
	"fow_15Rnd_762x33",
	"fow_8Rnd_762x63",
	"fow_30Rnd_45acp",
	"fow_30Rnd_45acp_T",
	"fow_5Rnd_762x63",
	"fow_20Rnd_762x63",
	"fow_30Rnd_762x63",
	"fow_50Rnd_762x63",
	"fow_100Rnd_762x63",
	"fow_20Rnd_45acp",
	"fow_6Rnd_12G_Pellets",
	"fow_6Rnd_12G_Slug",
	"fow_30Rnd_303_bren",
	"fow_7Rnd_45acp",
	"fow_1Rnd_m6a1",
	"fow_1Rnd_m9a1",
	"fow_e_mk2",
	"fow_e_no36mk1",
	"fow_e_no69",
	"fow_e_no73",
	"fow_e_no77",
	"fow_e_no79",
	"fow_e_no82"
];

_availableWeapons = [
//IFA3
	"LIB_Binocular_US",
	"LIB_Binocular_GER",
	"LIB_Binocular_SU",
	"LIB_FG42G",
	"LIB_G3340",
	"LIB_G41",
	"LIB_G43",
	"LIB_K98",
	"LIB_K98_Late",
	"LIB_K98ZF39",
	"LIB_MG34",
	"LIB_MG34_PT",
	"LIB_MG42",
	"LIB_M38",
	"LIB_MP38",
	"LIB_MP40",
	"LIB_MP44",
	"LIB_DELISLE",
	"LIB_DP28",
	"LIB_DT",
	"LIB_DT_OPTIC",
	"LIB_M1_Carbine",
	"LIB_M1_Garand",
	"LIB_M1A1_Carbine",
	"LIB_M1A1_Thompson",
	"LIB_M1903A3_Springfield",
	"LIB_M1903A4_Springfield",
	"LIB_M1918A2_BAR",
	"LIB_M1919A4",
	"LIB_M1919A6",
	"LIB_M1928_Thompson",
	"LIB_M1928A1_Thompson",
	"LIB_M3_GreaseGun",
	"LIB_M9130PU",
	"LIB_M9130",
	"LIB_M44",
	"LIB_MP40",
	"LIB_MP44",
	"LIB_PPSh41_m",
	"LIB_PPSh41_d",
	"LIB_PTRD",
	"LIB_SVT_40",
	"LIB_M2_Flamethrower",
	//SideArms
	"LIB_FLARE_PISTOL",
	"LIB_M1896",
	"LIB_P08",
	"LIB_P38",
	"LIB_WaltherPPK",
	"LIB_M1908",
	"LIB_Colt_M1911",
	"LIB_TT33",
	"LIB_M1895",
	//Launchers
	"LIB_M1A1_Bazooka",
	"LIB_Faustpatrone",
	"LIB_PzFaust_30m",
	"LIB_PzFaust_60m",
	"LIB_RPzB",
	"LIB_RPzB_w",
	"LIB_M2_60_Barrel",
	"LIB_M2_60_Tripod",
	"LIB_BM37_Barrel",
	"LIB_BM37_Tripod",
	"LIB_M2_Tripod",
	"LIB_GrWr34_Barrel",
	"LIB_GrWr34_Tripod",
//FOW
	"fow_i_dienstglas",
	"fow_w_fg42",
	"fow_w_g43",
	"fow_w_k98",
	"fow_w_k98_scoped",
	"fow_w_mg34",
	"fow_w_mg42",
	"fow_w_mp40",
	"fow_w_stg44",
	"fow_w_type100",
	"fow_w_type99",
	"fow_w_type99_lmg",
	"fow_w_type99_sniper",
	"fow_w_bren",
	"fow_w_leeenfield_no4mk1",
	"fow_w_leeenfield_no4mk1_redwood",
	"fow_w_leeenfield_no5mk1_junglecarbine",
	"fow_w_sten_mk2",
	"fow_w_sten_mk5",
	"fow_w_ithaca37",
	"fow_w_m1a1_thompson",
	"fow_w_m1_carbine",
	"fow_w_m1_garand",
	"fow_w_m1_garand_l",
	"fow_w_m1_garand_2",
	"fow_w_m1_thompson",
	"fow_w_m1903A1",
	"fow_w_m1903A1_sniper",
	"fow_w_M1912",
	"fow_w_m1918a2",
	"fow_w_m1918a2_bak",
	"fow_w_m1918a2_bak_acc",
	"fow_w_m1918a2_acc",
	"fow_w_m1919a4",
	"fow_w_m1919a6",
	"fow_w_m3",
	"fow_w_m55_reising",
	//SideArms
	"fow_w_p08",
	"fow_w_p640p",
	"fow_w_ppk",
	"fow_w_type10",
	"fow_w_type14",
	"fow_w_webley",
	"fow_w_welrod_mkii",
	"fow_w_m1911",
	//Launchers
	"fow_w_m1a1_bazooka",
	"fow_w_piat",
	"fow_w_pzfaust_100",
	"fow_w_pzfaust_30",
	"fow_w_pzfaust_30_klein",
	"fow_w_pzfaust_60"
];

[_availableBackpacks,_availableItems,_availableMagazines,_availableWeapons]
};

_availableBackpacks = [
// Vanilla Backpacks
	"B_Parachute",       //Not required for HALO or Bail
	"B_AssaultPack_mcamo",
	"B_AssaultPack_Kerry",
	"B_AssaultPack_tna_F",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_oli",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_cbr",
	"B_Static_Designator_01_weapon_F",
	"B_UAV_01_backpack_F",
	"B_GMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"B_HMG_01_high_weapon_F",
	"B_HMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"B_GMG_01_weapon_F",
	"B_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"B_HMG_01_support_high_F",
	"B_HMG_01_support_F",
	"B_Static_Designator_01_weapon_F",
	"B_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"B_UAV_06_medical_backpack_F",
	"B_UAV_01_backpack_F",
	"C_UAV_06_medical_backpack_F"
];

_availableItems = [
// Vanilla items
	"ItemMap",               //Required for many Map Click mission functions.
	"G_Tactical_Clear",      //Required for Helmet Cam HUD
	"FirstAidKit",           //Required for BTC Revives
	"B_UavTerminal",         //Required to Access UAVs/UGVs
	"MineDetector",
	"ToolKit",
	"Medikit",
	"ItemRadio",
	"ItemCompass",
	"ItemGPS",
	"ItemWatch",

	//Optics
	"NVGoggles",
	"NVGoggles_tna_F",
	"NVGogglesB_blk_F",
	"NVGogglesB_grn_F",
	"NVGogglesB_gry_F",
	"G_AirPurifyingRespirator_01_F", //Is Gas mask
	"G_RegulatorMask_F", //Is Gas mask
	"G_Diving",
	"G_B_Diving",
	"G_Lowprofile",
	"O_NVGoggles_hex_F",
	"O_NVGoggles_urb_F",
	"O_NVGoggles_ghex_F",
	"G_Goggles_VR",
	"G_Lady_Blue",
	"G_Aviator",
	"G_Tactical_Black",

	//Weapon Accessories
	"acc_flashlight",
	"acc_pointer_IR",
	"bipod_01_F_blk",
	"bipod_03_F_blk",
	"bipod_01_F_blk",
	"bipod_01_F_mtp",
	"bipod_01_F_snd",
	"bipod_01_F_khk",
	"bipod_02_F_blk",
	"bipod_02_F_hex",
	"bipod_02_F_tan",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_58_ghex_F",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F",
	"muzzle_snds_65_TI_ghex_F",
	"muzzle_snds_acp",
	"muzzle_snds_L",
	"muzzle_snds_H",
	"muzzle_snds_B",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_338_sand",
	"muzzle_snds_H_khk_F",
	"muzzle_snds_B_khk_F",
	"muzzle_snds_B_snd_F",
	"muzzle_snds_B_lush_F",
	"muzzle_snds_570",
	"optic_Yorris",
	"optic_MRD",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_Aco_smg",
	"optic_ACO_grn_smg",
	"optic_Arco_lush_F",
	"optic_Arco_arid_F",
	"optic_Arco_AK_blk_F",
	"optic_Arco_AK_lush_F",
	"optic_Arco_AK_arid_F",
	"optic_ARCO",
	"optic_Arco_blk_F",
	"optic_ERCO_blk_F",
	"optic_MRCO",
	"optic_Holosight",
	"optic_Holosight_blk_F",
	"optic_Holosight_smg",
	"optic_Holosight_smg_blk_F",
	"optic_KHS_old",
	"optic_ico_01_f",
	"optic_ico_01_black_f",
	"optic_ico_01_camo_f",
	"optic_ico_01_sand_f",
	"optic_SOS",
	"optic_NVS",
	"optic_tws",
	"optic_tws_mg",
	"optic_DMS",
	"optic_LRPS",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",

	//Uniforms
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_tshirt",
	"U_B_CombatUniform_mcam_worn",
	"U_B_CombatUniform_mcam_vest",
	"U_B_FullGhillie_lsh",
	"U_B_FullGhillie_sard",
	"U_B_FullGhillie_ard",
	"U_B_survival_uniform",
	"U_B_CombatUniform_wdl",
	"U_B_CombatUniform_wdl_tshirt",
	"U_B_CombatUniform_wdl_vest",
	"U_B_CombatUniform_sgg",
	"U_B_CombatUniform_sgg_tshirt",
	"U_B_CombatUniform_sgg_vest",
	"U_B_SpecopsUniform_sgg",
	"U_B_PilotCoveralls",
	"U_B_CTRG_1",
	"U_B_CTRG_2",
	"U_B_CTRG_3",
	"U_B_CTRG_Soldier_F",
	"U_B_CTRG_Soldier_2_F",
	"U_B_CTRG_Soldier_3_F",
	"U_B_CTRG_Soldier_urb_1_F",
	"U_B_T_Soldier_SL_F",
	"U_B_Wetsuit",

	//Vests
	"V_BandollierB_khk",
	"V_BandollierB_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier3_rgr",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrierL_CTRG",
	"V_PlateCarrierH_CTRG",

	//Helmets
	"H_PilotHelmetFighter_B",//Is Gas mask
	"H_HelmetB",
	"H_HelmetB_camo",
	"H_HelmetB_paint",
	"H_HelmetB_light",
	"H_HelmetB_grass",
	"H_HelmetB_snakeskin",
	"H_HelmetB_sand",
	"H_HelmetB_desert",
	"H_HelmetB_light_desert",
	"H_HelmetSpecB",
	"H_HelmetSpecB_sand",
	"H_HelmetSpecB_snakeskin",
	"H_Cap_tan_specops_US",
	"H_MilCap_mcamo",
	"H_HelmetB_light_black",
	"H_HelmetB_light_grass",
	"H_HelmetB_light_sand",
	"H_HelmetB_light_snakeskin",
	"H_HelmetB_black",
	"H_HelmetSpecB_blk",
	"H_HelmetSpecB_paint2",
	"H_HelmetSpecB_paint1",
	"H_HelmetCrew_B",
	"H_PilotHelmetHeli_B",
	"H_HelmetB_tna_F",
	"H_HelmetB_Enh_tna_F",
	"H_HelmetB_Light_tna_F",
	"H_PilotHelmetHeli_B",
	"H_Booniehat_tna_F",
	"H_Booniehat_khk_hs",
	"H_Booniehat_khk",
	"H_Booniehat_mcamo",
	"H_Booniehat_tan",
	"H_Booniehat_oli",
	"H_Beret_02",
	"H_Beret_Colonel",
	"H_Bandanna_mcamo",
	"H_Cap_tan_specops_US",
	"H_Cap_usblack",
	"H_Cap_khaki_specops_UK",

	//HeadGear
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_Balaclava_TI_tna_F",
	"G_Balaclava_TI_G_tna_F",
	"G_Bandanna_beast",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_tan",
	"G_Combat",
	"G_Combat_Goggles_tna_F",
	"H_WirelessEarpiece_F",

	//Vests
	"V_Rangemaster_belt",
	"V_BandollierB_blk",
	"V_BandollierB_rgr",
	"V_Chestrig_blk",
	"V_Chestrig_rgr",
	"V_TacVest_blk",
	"V_TacVestIR_blk",
	"V_PlateCarrier1_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier2_blk",
	"V_PlateCarrierGL_blk",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierGL_mtp",
	"V_PlateCarrierSpec_blk",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrierSpec_mtp",
	"V_RebreatherB",
	"V_TacChestrig_grn_F",
	"V_PlateCarrier1_tna_F",
	"V_PlateCarrier2_tna_F",
	"V_PlateCarrierSpec_tna_F",
	"V_PlateCarrierGL_tna_F",
	"V_PlateCarrier1_rgr_noflag_F",
	"V_PlateCarrier2_rgr_noflag_F",
	"V_Rangemaster_belt"
];

_availableMagazines = [
// Vanilla Magazines
	//Misc
	"Laserbatteries",

	//Throw
	"SmokeShellYellow",               //Poison Gas Grenade
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShell",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"MiniGrenade",
	"HandGrenade",
	"B_IR_Grenade",

	//Put
	"SatchelCharge_Remote_Mag",       //Can Destroy Ammo Caches and Towers
	"DemoCharge_Remote_Mag",          //Can Destroy Ammo Caches and Towers
	"APERSBoundingMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSTripMine_Wire_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",

	//Ammo
	"UGL_FlareGreen_F",
	"UGL_FlareWhite_F",               //Required for Hunt IR
	"1Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"3Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"1Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_HE_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"UGL_FlareYellow_F",
	"UGL_FlareRed_F",
	"UGL_FlareGreen_F",
	"30Rnd_9x21_Mag",
	"16Rnd_9x21_Mag",
	"16Rnd_9x21_green_Mag",
	"30Rnd_9x21_Green_Mag",
	"30Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"100Rnd_65x39_caseless_black_mag",
	"100Rnd_65x39_caseless_black_mag_tracer",
	"100Rnd_65x39_caseless_khaki_mag",
	"100Rnd_65x39_caseless_khaki_mag_tracer",



	"20Rnd_762x51_Mag",
	"7Rnd_408_Mag",
	"10Rnd_338_Mag",
	"130Rnd_338_Mag",
	"20Rnd_556x45_UW_mag",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_red",
	"150Rnd_556x45_Drum_Mag_F",
	"30Rnd_45ACP_Mag_SMG_01",
	"200Rnd_556x45_Box_F",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_Tracer_F",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"11Rnd_45ACP_Mag",
	"10Rnd_127x54_Mag",

	"10Rnd_Mk14_762x51_Mag",
	"6Rnd_12Gauge_Pellets",
	"6Rnd_12Gauge_Slug",
	"2Rnd_12Gauge_Pellets",
	"2Rnd_12Gauge_Slug",
	"50Rnd_570x28_SMG_03",//ADR

	//Launcher ammo
	"RPG32_HE_F",
	"RPG32_F",
	"NLAW_F",
	"Titan_AA",
	"Titan_AT",
	"Titan_AP"
];

_availableWeapons = [
// Vanilla Weapons
	//Misc
	"Binocular",
	"Rangefinder",
	"Laserdesignator",
	"Laserdesignator_03",
	"Laserdesignator_01_khk_F",

	//Rifles
	"arifle_SDAR_F",
	"srifle_EBR_F",
	"srifle_DMR_02_F",
	"srifle_DMR_03_F",
	"srifle_DMR_06_camo_khs_F",
	"srifle_DMR_04_F",
	"srifle_DMR_04_Tan_F",
	"srifle_LRR_F",
	"srifle_LRR_tna_F",
	"arifle_MX_GL_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_GL_khk_F",
	"arifle_MX_Black_F",
	"arifle_MX_khk_F",
	"arifle_MX_F",
	"arifle_MX_SW_Black_F",
	"arifle_MX_SW_khk_F",
	"arifle_MX_SW_F",
	"arifle_MXM_F",
	"arifle_MXC_Black_F",
	"arifle_MXC_khk_F",
	"arifle_MXC_F",
	"arifle_MXM_Black_F",
	"arifle_MXM_khk_F",
	"arifle_MXM_DMS_LP_BI_snds_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_khk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_03_blk_F",
	"srifle_DMR_06_hunter_F",//M14
	"sgun_HunterShotgun_01_F",//Shotgun
	"sgun_HunterShotgun_01_sawedoff_F",//Shotgun
	//ADR
	"SMG_03_black",
	"SMG_03_khaki",
	"SMG_03_TR_black",
	"SMG_03_TR_khaki",
	"SMG_03C_black",
	"SMG_03C_khaki",
	"SMG_03C_TR_black",
	"SMG_03C_TR_khaki",

	//MachineGuns
	"arifle_SPAR_02_blk_F",
	"arifle_SPAR_02_khk_F",
	"arifle_SPAR_02_snd_F",
	"LMG_03_F",//LIM-85
	"MMG_02_camo_F",
	"MMG_02_black_F",
	"MMG_02_sand_F",
	"SMG_01_F",
	"MMG_01_tan_F",
	"SMG_05_F",

	//Launchers
	"launch_RPG32_F",//opfor
	"launch_RPG7_F",//opfor
	"launch_NLAW_F",
	"launch_B_Titan_F",
	"launch_B_Titan_short_F",

	//SideArms
	"hgun_P07_khk_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_ACPC2_F",
	"hgun_Pistol_Signal_F",
	"hgun_P07_F"
];

[_availableBackpacks,_availableItems,_availableMagazines,_availableWeapons]