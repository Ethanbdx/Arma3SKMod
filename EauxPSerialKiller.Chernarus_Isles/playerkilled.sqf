
if (side player==West) then {
	BDX_Cops=BDX_Cops-[player];publicvariable "BDX_Cops";
};

BDX_HidingPistol=false;

waituntil {(alive player)};


if (side player==East) then {
	player setpos getpos Jail;
	removeallweapons player;
	sleep 5;
	player addWeapon "HandGunBase";
} else {
	BDX_Cops=BDX_Cops+[player];publicvariable "BDX_Cops";
	_spawns=BDX_locsReal-[Logic_5];
	_sp = _spawns select floor(random(count(_spawns)));
	player setpos getpos _sp;
	player addweapon "itemgps";
};