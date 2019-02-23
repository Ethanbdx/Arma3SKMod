

if (isserver) then {
	_unit = _this select 0;
	_group = group _unit;
	_CivKilledHandler = _unit addEventHandler ["killed", {_this execVM "server\civkilled.sqf"}];



		for [{_c=0},{_c<5},{_c=_c+1}] do {
		_wp = _group addWaypoint [getpos ((BDX_Cities select(floor(random(count(BDX_Cities))))) select 0), 100];
		_wp setWaypointBehaviour "SAFE";
		_wp setWaypointType "MOVE";
		};
	_wp = _group addWaypoint [getpos _unit, 0];
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointType "Cycle";
};
