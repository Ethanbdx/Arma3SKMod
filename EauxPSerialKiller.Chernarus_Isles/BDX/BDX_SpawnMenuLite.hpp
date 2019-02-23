
class BDX_SpawnMenuLite
{
    idd = 999;
    movingEnable = false;
    class controls
    {
        ////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Ethanbdx, v1.063, #Huruqi)
////////////////////////////////////////////////////////

class BDX_MenuBG: IGUIBack
{
	idc = 2200;
	x = 0.295312 * safezoneW + safezoneX;
	y = 0.392778 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.165 * safezoneH;
};
class BDX_txtPolStat: RscStructuredText
{
	idc = 1100;
	text = "Police Stations"; //--- ToDo: Localize;
	x = 0.360781 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.022 * safezoneH;
};
class BDX_comboLoc: RscCombo
{
	idc = 4303;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.467 * safezoneH + safezoneY;
	w = 0.0979687 * safezoneW;
	h = 0.022 * safezoneH;
};
class BDX_btnTele: RscButton
{
	idc = 1600;
	text = "Teleport"; //--- ToDo: Localize;
	x = 0.371094 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	action = "player setpos (getpos (BDX_locsReal select (lbCurSel 4303))); closeDialog 999;";
};
class BDX_txtVehic: RscStructuredText
{
	idc = 1101;
	text = "Vehicles"; //--- ToDo: Localize;
	x = 0.5825 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};
class BDX_comboVehic: RscCombo
{
	idc = 4302;
	x = 0.556719 * safezoneW + safezoneX;
	y = 0.467 * safezoneH + safezoneY;
	w = 0.0979687 * safezoneW;
	h = 0.022 * safezoneH;
};
class BDX_btnCreate: RscButton
{
	idc = 1601;
	text = "Spawn"; //--- ToDo: Localize;
	x = 0.577344 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	action = "_veh = ((BDX_SpawnVehicles select lbCurSel 4302) select 0); _spawn = _veh createVehicle getpos (nearestObjects [player, [""HeliHEmpty""], 200] select 0);if(_veh == 'C_SUV_01_F') then {_spawn setObjectTextureGlobal [0, 'cop\police_suv_b.paa']; _spawn execVM 'server\siren.sqf';}; if (_veh == 'C_Hatchback_01_F') then {_spawn setObjectTextureGlobal [0, 'cop\police_hb_w.paa']; _spawn execVM 'server\siren.sqf';};if(_veh == 'C_Hatchback_01_sport_F') then {_spawn setObjectTextureGlobal [0, 'cop\police_hb_sports.paa']; _spawn execVM 'server\siren.sqf';};closeDialog 999;";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

    
    };
};
