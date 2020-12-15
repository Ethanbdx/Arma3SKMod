private _civ = _this select 0;
private _civKiller = _this select 1;
if(!(_civ in Civs)) exitWith {};
CivsAlive = CivsAlive - 1;
switch(side _civKiller) do {
	case EAST:
	{
		CivsMurdered = CivsMurdered + 1;
		private _message = [getpos _civ, "murdered"] call GetKillerKillMessage;
		[_message] call SendMessageCop;
		[EAST, getpos _civ] call CreateKillMarker;
		_civ addAction ["Investigate", "investigateBody.sqf", _civKiller, 1.5, true, true, "", "(side _this) == WEST", 5];
		_civ addAction ["Hide Body", "hideBody.sqf", nil, 1.5, true, true, "", "(side _this) == EAST", 5];

		if(CivsMurdered > 0 and (CivsMurdered % 22 == 0)) then {
			switch(CivsMurdered) do {
				case 22: {
					[carSpawner,["Ford Taurus", "spawnVehicle.sqf", "EM_Police_Taurus", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["SMG_02_F","CUP_sgun_M1014_solidstock"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
				case 44: {
					[carSpawner,["Ford Explorer", "spawnVehicle.sqf", "EM_Police_Explorer", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["CUP_smg_MP5A5","CUP_smg_MP7"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
				case 66: {
					[carSpawner,["BMW X6", "spawnVehicle.sqf", "EM_Police_BMWX6", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["CUP_arifle_HK416_CQB_Black"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
				case 88: {
					[carSpawner,["BMW X5", "spawnVehicle.sqf", "EM_Police_BMWX5", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["Police_SoldierVest"]],BIS_fnc_addVirtualItemCargo] remoteExecCall ["call"];
				};
				case 110: {
					[carSpawner,["Dodge Charger", "spawnVehicle.sqf", "EM_Police_Charger", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["CUP_arifle_M4A1_black","CUP_arifle_mk18_black"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
					[[copArmory, ["Police_Uniform_Long","Police_Uniform_Rolled","SWAT_Uniform_Jersey","Police_Modular_lite","SWAT_Modular_lite","SWAT_Modular_Combat","SWAT_Modular_Heavy","SWAT_Modular_Helmet","SWAT_Modular_Helmet_Peltor","SWAT_Modular_Helmet_Chops","SWAT_Modular_Helmet_EarGuard"]],BIS_fnc_addVirtualItemCargo] remoteExecCall ["call"];
				};
				case 132: {
					[[copArmory, ["CUP_srifle_Remington700_scoped"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
				case 154: {
					[carSpawner,["Insurgent", "spawnVehicle.sqf", "EM_Police_Insurgent", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["CUP_arifle_Mk17_STD_FG_black","CUP_srifle_M24_blk"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
				case 176: {
					[heliSpawner,["EC635", "spawnVehicle.sqf", "EM_Police_EC635", 0, true, true, "", "side(_this) == WEST", 5]] remoteExecCall ["addAction"];
					[[copArmory, ["CUP_srifle_M107_Base"]],BIS_fnc_addVirtualWeaponCargo] remoteExecCall ["call"];
				};
			};
			["A new tier has been unlocked."] call SendMessageCop;
		};
	};

	case WEST: 
	{
		CivsCopMurdered = CivsCopMurdered + 1;
		private _message = [name _civKiller, getpos _civ] call GetCopKillMessage;
		[_civKiller, _message] call SendMessageGlobal;
		[WEST, getpos _civ] call CreateKillMarker;
		_civKiller setDamage 100;
	};

	default 
	{
		CivAccidents = CivAccidents + 1;
		private _message = [getpos _civ] call GetCivKillMessage;
		[_message] call SendMessageCop;
		[CIVILIAN, getpos _civ] call CreateKillMarker;
	};

};
call SyncGlobalVars;
private _civIndex = Civs find _civ;
Civs deleteAt _civIndex;
