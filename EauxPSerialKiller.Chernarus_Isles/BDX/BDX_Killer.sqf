
sleep 4;
if ((_this select 0)==player) then {
	// Define vehicles
	_selRow = 2100;
	_selRow2 = 2101;
	_weap = "";
	_mag = [];
	_Smag = [];
	_Sweap = "";
	_oldsel = 1;
	_Attach = "";
	_skin = "";
	_oldsel2 = 1;

	// Make grey Background
	"colorCorrections" ppEffectAdjust [1, 1, -0.008, [0.8, 0.8, 0.8, 0.04], [0.8, 0.8, 0.8, 0.4], [.8, 0.8, 0.8, 0.4]];
	"colorCorrections" ppEffectCommit 4;
	"colorCorrections" ppEffectEnable TRUE;

	// Create the dialog
	kay = createdialog "BDX_Weaponmenu";

	// Fill the funny Listbox with loadouts
	_index = lbAdd [2100, "AKM & P07"];
	_index = lbAdd [2100, "Rook-40 Silenced"];
	_index = lbAdd [2100, "PDW 2000 w/ Holo & Rook-40"];
	_index = lbAdd [2100, "MP5SD w/ Holo"];
	_index = lbAdd [2100, "M4 w/ RCO & Rook-40"];
	_index = lbAdd [2100, "CMR-76 & PM"];
	_index = lbAdd [2100, "UAV Technician & 4-Five w/ MRD"];

	_skins = lbAdd[2101, "Striped Polo"];
	_skins = lbAdd[2101, "Navy Polo"];
	_skins = lbAdd[2101, "Maroon Polo"];
	_skins = lbAdd[2101, "Navy Striped Polo"];
	_skins = lbAdd[2101, "Beiege Polo"];
	_skins = lbAdd[2101, "White/Red Polo"];
	_skins = lbAdd[2101, "Blue Shirt/Jeans"];
	_skins = lbAdd[2101, "Hunter"];
	_skins = lbAdd[2101, "Journalist"];
	_skins = lbAdd[2101, "Pink Shirt & Tie"];
	_skins = lbAdd[2101, "Sport Attire - Orange"];
	_skins = lbAdd[2101, "Sport Attire - Blue"];
	_skins = lbAdd[2101, "Blue/White Polo"];
	_skins = lbAdd[2101, "Green Striped Polo"];
	_skins = lbAdd[2101, "Yellow Shirt"];
	_skins = lbAdd[2101, "Orange Shirt"];
	_skins = lbAdd[2101, "Fisherman"]; 
	_skins = lbAdd[2101, "Utility Worker"];


	lbSetCurSel [_selRow, 0];
	lbSetCurSel [_selRow2,0];


	while {dialog} do {
		sleep 0.01;
		_sel = lbCurSel _selRow;
		while {not (_Oldsel == _sel)} do {
		_oldsel = _Sel;
		switch (_sel) do	{
			case 0: 	{
				_Weap = "arifle_AKM_F";
				_Mag = ["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"];
				_sweap ="hgun_P07_F";
				_SMag = ["16Rnd_9x21_Mag"];
				_Attach = "";
						};
				
			case 1: 	{
				_Weap = "hgun_Rook40_F";
				_Mag = ["30Rnd_9x21_Mag", "30Rnd_9x21_Mag", "30Rnd_9x21_Mag", "30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag"];
				_sweap = "";
				_Smag = "";
				_Attach = ["muzzle_snds_L"];
						};
				
			case 2: 	{
				_Weap = "hgun_PDW2000_Holo_F";
				_Mag = ["30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag"];
				_SMag = ["16Rnd_9x21_Mag"];
				_sweap ="hgun_Rook40_F","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag";
				_Attach = "";
						};
			
			case 3: 	{
				_Weap = "SMG_05_F";
				_Attach = ["muzzle_snds_L","optic_Holosight_smg"];
				_Mag = ["30Rnd_9x21_Mag_SMG_02", "30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02"];
				_SMag = ["16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag"];
				_sweap ="hgun_Rook40_F";
					};

			case 4: 	{
				_Weap = "arifle_SPAR_01_blk_f";
				_Mag = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"];
				_SMag = ["16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag"];
				_sweap ="hgun_Rook40_F";
				_Attach = ["optic_hamr"];
					};
					
			case 5: 	{
				_Weap = "srifle_DMR_07_blk_F";
				_Mag = ["20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F","20Rnd_650x39_Cased_Mag_F"];
				_SMag = ["10Rnd_9x21_Mag","10Rnd_9x21_Mag","10Rnd_9x21_Mag","10Rnd_9x21_Mag","10Rnd_9x21_Mag"];
				_sweap ="hgun_Pistol_01_F";
				_Attach = ["optic_DMS"];
				};
					
			case 6: 	{
				_Weap = "FakeWeapon";
				_Mag = "";
				_SMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
				_sweap ="hgun_Pistol_heavy_01_MRD_F";
					};
				};
			};
		_sel2 = lbCurSel _selRow2;
		while {not (_Oldsel2 == _sel2)} do {
		_oldsel2 = _Sel2;
		switch (_sel2) do	{
			case 0: {
				_skin = "U_C_Poloshirt_stripped";
				};
			case 1: {
				_skin = "U_C_Poloshirt_blue";
				};
			case 2: {
				_skin = "U_C_Poloshirt_burgundye";
				};
			case 3: {
				_skin = "U_C_Poloshirt_tricolour";
				};
			case 4: {
				_skin = "U_C_Poloshirt_salmon";
				};
			case 5: {
				_skin = "U_C_Poloshirt_redwhite";
				};
			case 6: {
				_skin = "U_C_Poor_1";
				};		
			case 7: {
				_skin = "U_C_HunterBody_grn";
				};	
			case 8: {
				_skin = "U_C_Journalist";
				};	
			case 9: {
				_skin = "U_NikosAgedBody";
				};	
			case 10: {
				_skin = "U_C_man_sport_2_F";
				};	
			case 11: {
				_skin = "U_C_man_sport_3_F";
				};	
			case 12: {
				_skin = "U_C_Man_casual_2_F";
				};	
			case 13: {
				_skin = "U_C_Man_casual_3_F";
				};
			case 14: {
				_skin = "U_C_Man_casual_5_F";
				};	
			case 15: {
				_skin = "U_C_Man_casual_6_F";
				};	
			case 16: {
				_skin = "U_C_Fisherman";
				};	
			case 17: {
				_skin = "U_C_ConstructionCoverall_Blue_F";
				};																
			};
		};
	};


	// Disable grey background wehn dialog is closed.
	"colorCorrections" ppEffectEnable false;

	// Add selected weapons to player
	removeUniform player;
	removeallweapons player;
	if (_Weap == "FakeWeapon") then {
		player addVest "V_BandollierB_blk";
		player addBackpack "O_UAV_01_backpack_F";
		player addItem "O_UavTerminal";
		player assignItem "O_UavTerminal";
	} else {
		player addBackpack "B_AssaultPack_blk";
		_backpack = unitbackPack player;
		_backpack hideObjectGlobal true;
		_backPack setObjectTextureGlobal [0,""];
	};

	player forceAddUniform _skin;
	_i = 0;
	while {_i <= ((count _Mag) -1)} do {
		player addmagazine (_mag select _i);
		_i = _i +1;
		sleep 0.01;
	};

	_i = 0;
	while {_i <= ((count _SMag) -1)} do {
		player addmagazine (_Smag select _i);
		_i = _i +1;
		sleep 0.01;
	};
	player addweapon _Weap;
	player addweapon _SWeap;
	if (_Weap == "hgun_Rook40_F") then {
		_i = 0;
		while {_i <= ((count _Attach) -1)} do {
			player addHandgunItem (_Attach select _i);
			_i = _i +1;
			sleep 0.01;};
	} else {
		_i = 0;
		while {_i <= ((count _Attach) -1)} do {
			player addPrimaryWeaponItem (_Attach select _i);
			_i = _i +1;
			sleep 0.01;
		};
	};
	_hide_pistol = player addAction ["Hide Pistol", "common\hidepistol.sqf", [], 0, false, false, "", "(handgunWeapon player != '') AND side player==EAST"];
	_take_pistol = player addAction ["Take Pistol", "common\takepistol.sqf", [], 0, false, false, "", "BDX_HidingPistol"];
};
