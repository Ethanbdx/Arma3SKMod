

if (side (_this select 1)==West) then {

// Define vehicles
_selRow = 2100;
_weap = "";
_mag = [];
_Smag = [];
_Sweap = "";
_oldsel = 1;
_Attach= "";

// Make grey Background
"colorCorrections" ppEffectAdjust [1, 1, -0.008, [0.8, 0.8, 0.8, 0.04], [0.8, 0.8, 0.8, 0.4], [.8, 0.8, 0.8, 0.4]];
"colorCorrections" ppEffectCommit 4;
"colorCorrections" ppEffectEnable TRUE;

// Create the dialog
kay = createDialog "BDX_CopArmory";

//Fill the funny Listbox with loadouts
_index = lbAdd [2100, "ACP-C2"];
If (7 <= BDX_KilledCivis) then {_index = lbAdd [2100, "Vermin & ACP-C2"];};
If (13 <= BDX_KilledCivis) then {_index = lbAdd [2100, "Sting w/ ACO & ACP-C2"];};
If (18 <= BDX_KilledCivis) then {_index = lbAdd [2100, "AKS-74U & ACP-C2"];};
If (23 <= BDX_KilledCivis) then {_index = lbAdd [2100, "SPAR-16 w/ ACO & ACP-C2"];};
If (27 <= BDX_KilledCivis) then {_index = lbAdd [2100, "MXC w/ Holo & 4-Five"];};
If (32 <= BDX_KilledCivis) then {_index = lbAdd [2100, "SPAR-17 w/ RCO & 4-Five"];};
If (37 <= BDX_KilledCivis) then {_index = lbAdd [2100, "MX SD w/ Holo & 4-Five"];};
If (44 <= BDX_KilledCivis) then {_index = lbAdd [2100, "MX SW w/ RCO & 4-Five"];};
If (50 <= BDX_KilledCivis) then {_index = lbAdd [2100, "M320 LRR w/ LRPS & 4-Five w/ MRD"];};

lbSetCurSel [_selRow, 0];

// The actual script
while {dialog} do {
// Prevent the display from refilling each second
	sleep 0.01;
	_sel = lbCurSel _selRow;
	while {not (_Oldsel == _sel)} do {
	_oldsel = _Sel;
	switch (_sel) do	{

// Define the loadouts

		case 0: 	{
			_Weap = "hgun_ACPC2_F";
			_Mag = ["9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"];
					};
				
		case 1: 	{	
			_Weap = "SMG_01_F";
			_Mag = ["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01"];
			_sweap ="hgun_ACPC2_F";
			_SMag = ["9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"];
					};		
				
		case 2: 	{
			_Weap = "SMG_02_ACO_F";
			_Mag = ["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02"];
			_sweap ="hgun_ACPC2_F";
			_SMag = ["9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"];
					};
					
		case 3: 	{
			_Weap = "arifle_AKS_F";
			_Mag = ["30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_F"];
			_sweap ="hgun_ACPC2_F";
			_SMag = ["9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"];
					};
						
				
		case 4: 	{
			_Weap = "arifle_SPAR_01_blk_F";
			_Mag = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"];
			_Sweap ="hgun_ACPC2_F";
			_SMag = ["9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"];
			_Attach=["optic_aco"];
				};
				
		case 5: 	{
			_Weap = "arifle_MXC_F";
			_Mag = ["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag"];
			_sMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
			_sweap ="hgun_Pistol_heavy_01_F";
			_Attach = ["optic_holosight"];
				};
				
		case 6: 	{
			_Weap = "arifle_SPAR_03_blk_F";
			_Mag = ["20Rnd_762x51_Mag", "20Rnd_762x51_Mag", "20Rnd_762x51_Mag","20Rnd_762x51_Mag", "20Rnd_762x51_Mag", "20Rnd_762x51_Mag"];
			_sMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
			_sweap ="hgun_Pistol_heavy_01_F";
			_Attach = ["optic_aco"];
				};
				
		case 7: 	{
			_Weap = "arifle_MX_Black_F";
			_Mag = ["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag"];
			_sMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
			_sweap ="hgun_Pistol_heavy_01_F";
			_Attach = ["optic_holosight_blk_f","muzzle_snds_h"];
				};
				
		case 8: 	{
			_Weap = "arifle_MX_SW_Black_F";
			_Mag = ["100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag"];
			_sMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
			_sweap ="hgun_Pistol_heavy_01_F";
				};
				
		case 9: 	{
			_Weap = "srifle_LRR_LRPS_F";
			_Mag = ["7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag"];
			_sMag = ["11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag"];
			_sweap ="hgun_Pistol_heavy_01_MRD_F";
			_Attach= [];
				};
		};
				
	};
};
// Disable grey background wehn dialog is closed.
"colorCorrections" ppEffectEnable falsE;

// Add selected weapons to player
removeallweapons player;
player addBackpack "B_AssaultPack_blk";
_backpack = unitbackPack player;
_backpack hideObjectGlobal true;
_backPack setObjectTextureGlobal [0,""];
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
Player addweapon _Weap;
Player addweapon _SWeap;
_i = 0;
while {_i <= ((count _Attach) -1)} do {
player addPrimaryWeaponItem (_Attach select _i);
_i = _i +1;
sleep 0.01;
};
};