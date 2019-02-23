

"BDX_CopSend" addPublicVariableEventHandler {

[West,"HQ"] sidechat (_this select 1);

};
"BDX_KillerSend" addPublicVariableEventHandler {

[East,"HQ"] sidechat (_this select 1);

};

"BDX_Sound" addPublicVariableEventHandler {

((_this select 1) select 1) say ((_this select 1) select 0);

};

_KilledHandler = player addEventHandler ["killed", {_this execVM "playerkilled.sqf"}];

sleep 5;


player addweapon "itemgps";
_ScrMarkerHandler = [] execVM "common\markers.sqf";

sleep 1;

_hide_pistol = player addAction ["Hide Pistol", "common\hidepistol.sqf", [], 0, false, false, "", "(handgunWeapon player != '') AND side player==EAST"];
_take_pistol = player addAction ["Take Pistol", "common\takepistol.sqf", [], 0, false, false, "", "BDX_HidingPistol"];


waituntil {ScriptDone _ScrMarkerHandler};
_ScrMarkerHandler = [] execVM "common\markers.sqf";


