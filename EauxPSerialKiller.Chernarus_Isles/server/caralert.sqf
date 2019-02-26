
_c=random 2.00;
_car=_this select 0;
_sound="CarAlarm";
if ((_c<0.66) OR (_car in BDX_NoAlert)) then {
	if(_car in BDX_NoAlert) then {
		//Do nothing.
	} else {
		BDX_NoAlert pushBack _car;
	};
} else {
	BDX_Sound=[_sound,_car];
	_city = [gt["A Car has been stolen near %1",(_city select 1)];
	BDX_CopSetpos _car] call f_GetNearestCity;
	_msg=formaend=_msg;
	publicvariable "BDX_CopSend";
	[West,"HQ"] sidechat _msg;
	publicvariable "BDX_Sound";
	_car say3D _sound;
	BDX_NoAlert pushBack _car;
};