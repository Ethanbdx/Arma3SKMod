
if (isserver) then {

_unit=_this select 0;
_killer=_this select 1;

if(!(_unit in BDX_Civis)) exitwith {};
BDX_CivisAlive=BDX_CivisAlive-1;
BDX_Civis=BDX_Civis-[_unit];
if (_unit==_killer) then {
	_killernear=false;
	if ((Not isnil "killer1") AND (_unit distance killer1<50)) then {_killernear=true;};
	if ((Not isnil "killer2") AND (_unit distance killer2<50)) then {_killernear=true;};
	if ((_unit distance killer1<50) OR (_unit distance killer2<50)) then {_killernear=true;};	
	if (_killernear) then {
		BDX_KilledCivis=BDX_KilledCivis+1;
		_msg = [getpos _unit,"run down"] call f_GetKillMSG;
		BDX_CopSend=_msg;
		publicvariable "BDX_CopSend";
		[West,"HQ"] sideChat _msg;
		_name = format["markericvkilled%1",(random 999)];
		_marker = createMarker [_name, getpos _unit];
		_marker setmarkertype "mil_Objective";
		_marker setmarkercolor "ColorRed";
		_marker setmarkersize [0.4,0.4];
	};
} else {
	if ((side _killer) == EAST) then {
		_msg = [getpos _unit,"killed"] call f_GetKillMSG;
		BDX_CopSend=_msg;
		publicvariable "BDX_CopSend";
		[West,"HQ"] sideChat _msg;
		BDX_KilledCivis=BDX_KilledCivis + 1;
		_name = format["markericvkilled%1",(random 999)];
		_marker = createMarker [_name, getpos _unit];
		_marker setmarkertype "mil_Objective";
		_marker setmarkercolor "ColorRed";
		_marker setmarkersize [0.4,0.4];
	};
	if ((side _killer) == WEST) then {
		BDX_CopKilledCivis = BDX_CopKilledCivis + 1;
		_msg = [name _killer,getpos _unit] call f_CopKillMSG;
		BDX_CopSend=_msg;
		publicvariable "BDX_CopSend";
		systemChat _msg;
		_name = format["copmarker%1",(random 999)];
		_marker = createMarker [_name, getpos _unit];
		_marker setmarkertype "mil_Objective";
		_marker setmarkercolor "ColorBlue";
		_marker setmarkersize [0.4,0.4];
	 };
	if (((side _killer) == CIVILIAN) OR ((side _killer) == INDEPENDENT)) then {
		_msg = [getpos _unit] call f_CivKillMSG;
		BDX_CopSend=_msg;
		publicvariable "BDX_CopSend";
		[WEST,"HQ"] sideChat _msg;
		_name = format["civmarker%1",(random 999)];
		_marker = createMarker [_name, getpos _unit];
		_marker setmarkertype "mil_Objective";
		_marker setmarkercolor "ColorGreen";
		_marker setmarkersize [0.4,0.4];
	};
};
publicvariable "BDX_KilledCivis";
publicvariable "BDX_CivisAlive";
};


