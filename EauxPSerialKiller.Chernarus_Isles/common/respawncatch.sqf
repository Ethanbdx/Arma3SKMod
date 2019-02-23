if (player in (_this select 0)) then {

BDX_Cops=BDX_Cops+[player];
publicvariable "BDX_Cops";
_spawns=BDX_locsReal-[Logic_5];
_sp = _spawns select floor(random(count(_spawns)));
player setpos getpos _sp;
player addweapon "itemgps";
execVM "briefing.sqf";

{if (!alive _x) then {BDX_Cops=BDX_Cops-[_x];publicvariable "BDX_Cops";};}foreach BDX_Cops;

};