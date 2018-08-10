//AUTHOR: Pax'Jarome Malues
//OFWvUsed: 3.3.2

#define package "uotc_loadout_west_"
/*
SET_GROUP(ifak)
	["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 2, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem;
	["ACE_morphine", 1, "uniform"] call FNC_AddItem;
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
END_GROUP;

SET_GROUP(ifak_participant)
	["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 2, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 2, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
END_GROUP;

SET_GROUP(items)
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ACE_Vector"] call FNC_AddItem;
	["ACE_MapTools", 1, "vest"] call FNC_AddItem;
	["ACE_Chemlight_IR", 1] call FNC_AddItem;
	["ACE_IR_Strobe_Item", 1] call FNC_AddItem;
	["ACE_Flashlight_MX991", 1] call FNC_AddItem;
	["ACE_microDAGR", 1] call FNC_AddItem;
END_GROUP;

SET_GROUP(radios)
END_GROUP;

SET_GROUP(sidearm)
	["rhsusf_weap_m9"] call FNC_AddItem;
	["rhsusf_mag_15Rnd_9x19_JHP", 3] call FNC_AddItem;
END_GROUP;

SET_GROUP(primary)
	["rhs_weap_m4a1_carryhandle"] call FNC_AddItem; //Primary rifle
	["rhsusf_acc_ACOG2_USMC"] call FNC_AddItem; //Red dot sight
	["rhsusf_acc_anpeq16a"] call FNC_AddItem;
END_GROUP;
*/
/////////////////////
//CASES Instructors
/////////////////////

case (package + "ins_jtac"): {
	
["rhs_uniform_cu_ocp"] call FNC_AddItem;
["rhsusf_iotv_ocp_Squadleader"] call FNC_AddItem;
["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem;

["tin_helmet_uotc_beret"] call FNC_AddItem;
["rhs_googles_clear"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ACE_VectorDay"] call FNC_AddItem;

["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,"vest"] call FNC_AddItem;
["rhs_mag_m713_Red",8,"vest"] call FNC_AddItem;
["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;
["rhs_mag_m18_green",3,"backpack"] call FNC_AddItem;

["rhs_weap_m4a1_m320"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_3d";

["rhsusf_weap_m9"] call FNC_AddItem;

};

case (package + "ins_fw"): {
	
["U_I_pilotCoveralls"] call FNC_AddItem;
["UK3CB_BAF_V_Pilot_DPMW"] call FNC_AddItem;
["B_Parachute"] call FNC_AddItem;

["H_PilotHelmetFighter_B"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ACE_Altimeter"] call FNC_AddItem;

["tin_helmet_uotc_beret", 1, "vest"] call FNC_AddItem;
["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC152",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",3,"uniform"] call FNC_AddItem;
["ACE_Chemlight_Shield",2,"vest"] call FNC_AddItem;
["ACE_CableTie",1,"vest"] call FNC_AddItem;
["hlc_30Rnd_9x19_SD_MP5",5,"vest"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["Chemlight_green",2,"vest"] call FNC_AddItem;
["ACE_Chemlight_IR",2,"vest"] call FNC_AddItem;
["rhs_mag_m18_green",2,"vest"] call FNC_AddItem;
["ACE_HandFlare_Green",2,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;

["hlc_smg_mp5k_PDW"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

["rhsusf_weap_m9"] call FNC_AddItem;

};

case (package + "ins_rw"): {
	
["U_I_pilotCoveralls"] call FNC_AddItem;
["UK3CB_BAF_V_Pilot_DPMW"] call FNC_AddItem;
["B_Parachute"] call FNC_AddItem;

["UK3CB_BAF_H_PilotHelmetHeli_A"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ACE_Altimeter"] call FNC_AddItem;

["tin_helmet_uotc_beret", 1, "vest"] call FNC_AddItem;
["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",3,"uniform"] call FNC_AddItem;
["ACE_Chemlight_Shield",2,"vest"] call FNC_AddItem;
["ACE_CableTie",1,"vest"] call FNC_AddItem;
["hlc_30Rnd_9x19_SD_MP5",5,"vest"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["Chemlight_green",2,"vest"] call FNC_AddItem;
["ACE_Chemlight_IR",2,"vest"] call FNC_AddItem;
["rhs_mag_m18_green",2,"vest"] call FNC_AddItem;
["ACE_HandFlare_Green",2,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;

["hlc_smg_mp5k_PDW"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

["rhsusf_weap_m9"] call FNC_AddItem;

};

/////////////////////
//CASES Participants
/////////////////////

case (package + "jtac"): {
	
["rhs_uniform_cu_ocp"] call FNC_AddItem;
["rhsusf_iotv_ocp_Squadleader"] call FNC_AddItem;
["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem;

["rhsusf_ach_helmet_headset_ocp"] call FNC_AddItem;
["rhs_googles_clear"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ACE_VectorDay"] call FNC_AddItem;

["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,"vest"] call FNC_AddItem;
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,"vest"] call FNC_AddItem;
["rhs_mag_m713_Red",8,"vest"] call FNC_AddItem;
["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;
["rhs_mag_m18_green",3,"backpack"] call FNC_AddItem;

["rhs_weap_m4a1_m320"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_SFMB556";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_3d";

["rhsusf_weap_m9"] call FNC_AddItem;

};

case (package + "fw"): {
	
["U_I_pilotCoveralls"] call FNC_AddItem;
["UK3CB_BAF_V_Pilot_DPMW"] call FNC_AddItem;
["B_Parachute"] call FNC_AddItem;

["H_PilotHelmetFighter_B"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ACE_Altimeter"] call FNC_AddItem;

["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC152",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",3,"uniform"] call FNC_AddItem;
["ACE_Chemlight_Shield",2,"vest"] call FNC_AddItem;
["ACE_CableTie",1,"vest"] call FNC_AddItem;
["hlc_30Rnd_9x19_SD_MP5",5,"vest"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["Chemlight_green",2,"vest"] call FNC_AddItem;
["ACE_Chemlight_IR",2,"vest"] call FNC_AddItem;
["rhs_mag_m18_green",2,"vest"] call FNC_AddItem;
["ACE_HandFlare_Green",2,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;

["hlc_smg_mp5k_PDW"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

["rhsusf_weap_m9"] call FNC_AddItem;

};

case (package + "rw"): {
	
["U_I_pilotCoveralls"] call FNC_AddItem;
["UK3CB_BAF_V_Pilot_DPMW"] call FNC_AddItem;
["B_Parachute"] call FNC_AddItem;

["UK3CB_BAF_H_PilotHelmetHeli_A"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ACE_Altimeter"] call FNC_AddItem;

["ACE_quikclot",2,"uniform"] call FNC_AddItem;
["ACE_elasticBandage",2,"uniform"] call FNC_AddItem;
["ACE_fieldDressing",2,"uniform"] call FNC_AddItem;
["ACE_epinephrine",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",2,"uniform"] call FNC_AddItem;
["ACE_MapTools",1,"uniform"] call FNC_AddItem;
["ACE_microDAGR",1,"uniform"] call FNC_AddItem;
["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;
["ACE_Flashlight_MX991",1,"uniform"] call FNC_AddItem;
["ACE_EarPlugs",1,"uniform"] call FNC_AddItem;
["ACE_Kestrel4500",1,"uniform"] call FNC_AddItem;
["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
["ACE_Chemlight_IR",1,"uniform"] call FNC_AddItem;
["rhsusf_mag_15Rnd_9x19_JHP",3,"uniform"] call FNC_AddItem;
["ACE_Chemlight_Shield",2,"vest"] call FNC_AddItem;
["ACE_CableTie",1,"vest"] call FNC_AddItem;
["hlc_30Rnd_9x19_SD_MP5",5,"vest"] call FNC_AddItem;
["rhs_mag_an_m8hc",2,"vest"] call FNC_AddItem;
["Chemlight_green",2,"vest"] call FNC_AddItem;
["ACE_Chemlight_IR",2,"vest"] call FNC_AddItem;
["rhs_mag_m18_green",2,"vest"] call FNC_AddItem;
["ACE_HandFlare_Green",2,"vest"] call FNC_AddItem;
["HandGrenade",2,"vest"] call FNC_AddItem;

["hlc_smg_mp5k_PDW"] call FNC_AddItem;
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

["rhsusf_weap_m9"] call FNC_AddItem;

};