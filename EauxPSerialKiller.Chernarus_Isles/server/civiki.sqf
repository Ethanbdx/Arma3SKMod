

if (isserver) then {
	_unit = _this select 0;
	_group = group _unit;
	_CivKilledHandler = _unit addEventHandler ["killed", {_this execVM "server\civkilled.sqf"}];


	for [{_c=0},{_c<5},{_c=_c+1}] do {
		_wp = _group addWaypoint [[(getpos _unit select 0)+(random 150)-(random 150),(getpos _unit select 1)+(random 150)-(random 150),0], 0];
		_wp setWaypointBehaviour "SAFE";
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "LIMITED";
	};

	_wp = _group addWaypoint [getpos _unit, 0];
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointType "Cycle";
};
