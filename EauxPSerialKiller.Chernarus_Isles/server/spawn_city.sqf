

{
	_log=_x select 0;
	_name=_x select 1;
	_count=_x select 2;
	_group=createGroup Civilian;
	for [{_c=0},{_c<(_count)/BDX_DownScale},{_c=_c+1}] do {

		if (BDX_CivisAlive > 126) then {
			_group=creategroup Independent;
	};
		_cpos=[(getpos _log select 0)+(random 50)-(random 50),(getpos _log select 1)+(random 50)-(random 50),0];
		_civi = BDX_CivModels select floor(random(count(BDX_CivModels))) createUnit [_cpos, _group, "BDX_Civis=BDX_Civis+[this];dumvar = [this] execVM 'server\civiki.sqf';"];
		sleep 0.01;
		BDX_CivisAlive=BDX_CivisAlive+1;
	};
	player sidechat format ["%1 civilians spawned in %2.",ceil(_count/BDX_DownScale),_name];
	sleep 0.01;
}foreach BDX_Cities;
sleep 0.1;
execVM "server\spawn_traffic.sqf";


