killer = _this select 0;

killer addEventHandler ["HandleRating", {
	private _value = 0;
	_value;
}];

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

killer addEventHandler ["Take", {
	if(killer getVariable "isConcealed") then {
		if((primaryWeapon killer != "") OR (secondaryWeapon killer != "") OR (handgunWeapon killer != "")) then {
			hint "No longer concealed!";
			killer setVariable ["isConcealed", false, true];
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
		};
	};
}];
