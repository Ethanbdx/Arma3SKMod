f_CopSend={
	BDX_CopSend=_this select 0;
	publicvariable "BDX_CopSend";
};

f_KillerSend={
	BDX_KillerSend=_this select 0;
	publicvariable "BDX_CopSend";
};

f_GetNearestCity= {
	_pos=_this select 0;
	_city=((BDX_Cities select 0));

	{if (((_x select 0) distance _pos)<((_city select 0) distance _pos)) then {_city=_x;};}foreach BDX_Cities;
	_city;
};

f_GetKillMSG = {
	_pos = _this select 0;
	_type = _this select 1;
	_city = [_pos] call f_GetNearestCity;
	_msg=format["A Civilian has been %2 in %1",(_city select 1),_type];
	if (_pos distance (_city select 0)>100)then {
	_msg=format["A Civilian has been %2 near %1",(_city select 1),_type];
	};
	if (_pos distance (_city select 0)>250)then {
	_msg=format["A Civilian has been %2 in the vicinity of %1",(_city select 1),_type];
	};
	_msg;
};

f_CopKillMSG = {
	_killer = _this select 0;
	_pos = _this select 1;
	_city = [_pos] call f_GetNearestCity;
	_msg=format["Police officer %2 has murdered a civilian in %1",(_city select 1),_killer];
	if (_pos distance (_city select 0)>100)then {_msg=format["Police officer %2 has murdered a civilian in %1",(_city select 1),_killer];};
	if (_pos distance (_city select 0)>250)then {_msg=format["Police officer %2 has murdered a civilian in the vincity of %1",(_city select 1),_killer];};		
	_msg;
};

f_CivKillMSG = {
	_pos = _this select 0;
	_city = [_pos] call f_GetNearestCity;
	_msg=format["An accident has occured in %1",(_city select 1)];
	if (_pos distance (_city select 0)>100)then {
	_msg=format["An accident has occured in %1",(_city select 1)];
	};
	if (_pos distance (_city select 0)>250)then {
	_msg=format["An accident has occured in %1",(_city select 1)];
	};
	_msg;
};