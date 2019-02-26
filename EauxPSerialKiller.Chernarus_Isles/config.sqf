
BDX_KilledCivis=0;
BDX_CopKilledCivis=0;
BDX_CivisAlive=0;
BDX_Cops=[];
BDX_Sound=[];
BDX_CivsReady=false;
BDX_NoAlert=[];
BDX_Civis=[];
BDX_Traffic=45;
BDX_TrafficVehicles=["C_Offroad_01_F","C_Offroad_01_repair_F","C_Offroad_01_red_F","C_Offroad_01_sand_F","C_Offroad_01_white_F","C_Offroad_01_blue_F","C_Offroad_01_darkred_F","C_Truck_02_covered_F","C_Truck_02_transport_F","C_Hatchback_01_F","C_Hatchback_01_grey_F","C_Hatchback_01_sport_F","C_Hatchback_01_green_F","C_Hatchback_01_blue_F","C_Hatchback_01_yellow_F","C_Hatchback_01_white_F","C_Hatchback_01_black_F","C_Hatchback_01_dark_F","C_Hatchback_01_sport_red_F","C_SUV_01_F","SUV_01_base_red_F","SUV_01_base_black_F","SUV_01_base_grey_F","SUV_01_base_orange_F","C_Truck_02_fuel_F","C_Truck_02_box_F","C_Van_01_transport_F","C_Van_01_box_F","C_Van_01_fuel_F","C_Van_01_transport_white_F","C_Van_01_transport_red_F","	C_Van_01_box_red_F","C_Offroad_02_unarmed_F","C_Offroad_02_unarmed_black_F","C_Offroad_02_unarmed_blue_F","C_Offroad_02_unarmed_green_F","C_Offroad_02_unarmed_red_F","C_Offroad_02_unarmed_orange_F","C_Offroad_02_unarmed_white_F"];
BDX_TrafficModels=["C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_4_F","C_man_polo_5_F","C_Marshal_F","C_man_p_fugitive_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_journalist_F","C_Orestes","C_Nikos_aged","C_man_sport_1_F","C_man_sport_2_F","C_man_sport_3_F","C_Man_casual_1_F","C_Man_casual_2_F","C_Man_casual_3_F","C_Man_casual_4_F","C_Man_casual_5_F","C_Man_casual_6_F","C_Man_ConstructionWorker_01_Red_F","C_Man_UtilityWorker_01_F","C_Man_Fisherman_01_F","C_Story_Mechanic_01_F"];


BDX_DownScale=1;
if (!isNil("paramsArray select 1")) then {
BDX_DownScale=paramsArray select 1;
};
BDX_Cities=[];
BDX_locsReal = [Logic_0, Logic_1, Logic_2, Logic_3, Logic_4, Logic_5];
BDX_Killerstarts=["killerplacer","killerplacer1","killerplacer2","killerplacer3","killerplacer4","killerplacer5","killerplacer6"];
BDX_CivModels=["C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_4_F","C_man_polo_5_F","C_Marshal_F","C_man_p_fugitive_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_journalist_F","C_Orestes","C_Nikos_aged","C_man_sport_1_F","C_man_sport_2_F","C_man_sport_3_F","C_Man_casual_1_F","C_Man_casual_2_F","C_Man_casual_3_F","C_Man_casual_4_F","C_Man_casual_5_F","C_Man_casual_6_F","C_Man_ConstructionWorker_01_Red_F","C_Man_UtilityWorker_01_F","C_Man_Fisherman_01_F","C_Story_Mechanic_01_F"];
