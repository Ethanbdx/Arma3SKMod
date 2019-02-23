

// Define vehicles and locations
BDX_SpawnVehicles = [["C_SUV_01_F",0],["C_Hatchback_01_F",0],["B_GEN_Offroad_01_gen_F",2],["C_Hatchback_01_sport_F",15],["B_MRAP_01_F",35],["B_G_Offroad_01_armed_F",45],["B_Heli_Light_01_F",50],["B_MRAP_01_hmg_F",55],["B_LSV_01_armed_black_F",75],["B_APC_Wheeled_03_cannon_F",90],["B_Heli_Attack_01_dynamicLoadout_F",150]];
_locs = ["Elektrozavodsk","Solnichniy","Krasnostav","Gorka","Vybor","Zelenogorsk"];


// Make grey Background
"colorCorrections" ppEffectAdjust [1, 1, -0.008, [0.8, 0.8, 0.8, 0.04], [0.8, 0.8, 0.8, 0.4], [.8, 0.8, 0.8, 0.4]];
"colorCorrections" ppEffectCommit 4;
"colorCorrections" ppEffectEnable TRUE;

// Create the dialog
BDX_SpawnDialog = createdialog "BDX_SpawnMenuLite";

// Fill those funny Listboxes
// with vehicles
_i = 0;
while {_i < (count BDX_SpawnVehicles)} do {
	if ((((BDX_SpawnVehicles select _i) select 1)/BDX_DownScale)<=BDX_KilledCivis) then {
		_text = getText (configFile >> "CfgVehicles" >> ((BDX_SpawnVehicles select _i) select 0) >> "displayname");
		_index = lbAdd [4302, _text];
	};
	_i = _i + 1;
	sleep 0.01;
};

// and locations
_i = 0;
while {_i <= ((count _locs) -1)} do {
	_text = format ["%1",(_locs select _i)];
	_index = lbAdd [4303, _text];
	_i = _i + 1;
	sleep 0.01;
};

lbSetCurSel [4302, 0];
lbSetCurSel [4303, 0];

while {dialog} do{
// Wait until the spawn place is free
_Blockers = count (nearestObjects [(nearestObjects [player, ["HeliHEmpty"], 200] select 0), ["land"], 5]);
	If (_Blockers < 1) then {
		ctrlEnable [43001, true];
	} else {
		ctrlEnable [43001,false];
	};
		sleep 0.1;
};
// Disable grey background wehn dialog is closed.
"colorCorrections" ppEffectEnable false;