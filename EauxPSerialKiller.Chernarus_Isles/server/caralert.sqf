
_c=random 1.00;
_car=_this select 0;
_sound="CarAlarm";
if(_car in BDX_NoAlert) then {
	return;
} else { 
	if (_c<0.80) then {
		BDX_NoAlert pushBack _car;
	}
	else {
		BDX_Sound=[_sound,_car];
		_city = [getpos _car] call f_GetNearestCity;
		_msg=format["A Car has been stolen near %1",(_city select 1)];
		BDX_CopSend=_msg;
		publicvariable "BDX_CopSend";
		publicvariable "BDX_Sound";
		_car say3D _sound;
		BDX_NoAlert pushBack _car;
	};
};
