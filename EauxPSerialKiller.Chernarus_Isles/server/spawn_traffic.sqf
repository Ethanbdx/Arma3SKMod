_group=createGroup Civilian;


for [{_c=0},{_c<BDX_Traffic/BDX_DownScale},{_c=_c+1}] do {
	if (BDX_CivisAlive > 126) then {
			_group=creategroup Independent;
	};
	_city = BDX_Cities select(floor(random(count(BDX_Cities))));
	_cpos = getpos (_city select 0);
	car = BDX_TrafficVehicles select(floor(random(count(BDX_TrafficVehicles)))) createvehicle _cpos;
	sleep 0.05;
	_civi = BDX_TrafficModels select floor(random(count(BDX_TrafficModels))) createUnit [_cpos, _group, "BDX_Civis=BDX_Civis+[this];dumvar = [this] execVM 'server\trafficki.sqf';this moveindriver car; this assignasdriver car;"];
	sleep 0.01;
	BDX_CivisAlive=BDX_CivisAlive+1;
	player sidechat "Civilian vehicle spawned.";

};


sleep 0.05;
execVM "server\markers.sqf";

BDX_CivsReady=true;
player sidechat "All Civilians have spawned.";
publicvariable "BDX_CivsReady";
