killer = _this select 0;


killer addWeapon (killer getVariable "primaryWeapon");
killer addPrimaryWeaponItem ((killer getVariable "primaryWeaponMagazine") select 0);
private _itemsCount = count(killer getVariable "primaryWeaponItems");
private _weaponItems = (killer getVariable "primaryWeaponItems");
for [{private _i = 0}, {_i < _itemsCount}, {_i = _i + 1}] do {
	killer addPrimaryWeaponItem (_weaponItems select _i);
};

killer addWeapon (killer getVariable "handgunWeapon");
killer addHandgunItem ((killer getVariable "handgunMagazine") select 0);
_itemsCount = count(killer getVariable "handgunItems");
_weaponItems = (killer getVariable "handgunItems");
for[{private _i = 0}, {_i < _itemsCount}, {_i = _i + 1}] do {
	killer addHandgunItem (_weaponItems select _i);
};

killer addWeapon (killer getVariable "secondaryWeapon");
killer addSecondaryWeaponItem ((killer getVariable "secondaryWeaponMagazine") select 0);
_itemsCount = count(killer getVariable "secondaryWeaponItems");
_weaponItems = (killer getVariable "secondaryWeaponItems");
for[{private _i = 0}, {_i < _itemsCount}, {_i = _i + 1}] do {
	killer addSecondaryWeaponItem (_weaponItems select _i);
};

killer setVariable ["isConcealed", false, true];
killer setVariable ["primaryWeapon", ""];
killer setVariable ["primaryWeaponItems", ["", "", "", ""]];
killer setVariable ["primaryWeaponMagazine", []];
killer setVariable ["handgunWeapon", ""];
killer setVariable ["handgunItems", ["", "", "", ""]];
killer setVariable ["handgunMagazine", []];
killer setVariable ["secondaryWeapon", ""];
killer setVariable ["secondaryWeaponItems", ["", "", "", ""]];
killer setVariable ["secondaryWeaponMagazine", []];


removeAllActions killer;

killer addAction [
	"Conceal Weapons",
	"concealWeapons.sqf",
	nil,
	1.5,
	true,
	true,
	"",
	"_this == _target"
];