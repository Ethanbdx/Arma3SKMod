private _unit = _this select 0;
deleteVehicle (_this select 1);
_unit enableFatigue false;
_unit enableStamina false;
_unit setCustomAimCoef 0.35;

_unit addEventHandler ["HandleRating", {
	private _value = 0;
	_value;
}];

if((side _unit) == WEST) then {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit addWeapon "CUP_hgun_Glock17_blk";
	_unit addHandgunItem "CUP_17Rnd_9x19_glock17";

	_unit forceAddUniform "Police_uniform_Officer1";
	_unit addVest "Police_Rangemaster";

	_unit addWeapon "Binocular";

	for "_i" from 1 to 5 do {_unit addItemToUniform "FirstAidKit";};
	_unit addItemToUniform "CUP_17Rnd_9x19_glock17";
	for "_i" from 1 to 2 do {_unit addItemToVest "CUP_17Rnd_9x19_glock17";};
	_unit addHeadgear "Patrol_Cap";
	_unit addGoggles "G_Aviator";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
}