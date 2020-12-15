killer = _this select 0;

killer setVariable ["primaryWeapon", (primaryWeapon killer)];
killer setVariable ["primaryWeaponItems", (primaryWeaponItems killer)];
killer setVariable ["primaryWeaponMagazine", (primaryWeaponMagazine killer)];
killer setVariable ["handgunWeapon", (handgunWeapon killer)];
killer setVariable ["handgunItems", (handgunItems killer)];
killer setVariable ["handgunMagazine", (handgunMagazine killer)];
killer setVariable ["secondaryWeapon", (secondaryWeapon killer)];
killer setVariable ["secondaryWeaponItems", (secondaryWeaponItems killer)];
killer setVariable ["secondaryWeaponMagazine", (secondaryWeaponMagazine killer)];

killer removeWeapon (primaryWeapon killer);
killer removeWeapon (handgunWeapon killer);
killer removeWeapon (secondaryWeapon killer);

killer setVariable ["isConcealed", true, true];

removeAllActions killer;

killer addAction [
	"Draw Weapons",
	"drawWeapons.sqf",
	nil,
	1.5,
	true,
	true,
	"",
	"_this == _target"
];