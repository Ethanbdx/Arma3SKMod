private _civ = _this select 0;
private _maxDistance = _this select 1;
private _civGroup = group _civ;
_civ addMPEventHandler ["MPKilled", {_this execVM "civKillHandler.sqf"}];
for [{private _i=0},{_i<5},{_i=_i+1}] do {
	private _wayPoint = _civGroup addWaypoint [[(getpos _civ select 0)+(random _maxDistance)-(random _maxDistance),(getpos _civ select 1)+(random _maxDistance)-(random _maxDistance),0], 0];
	_wayPoint setWaypointBehaviour "SAFE";
	_wayPoint setWaypointType "MOVE";
	_wayPoint setWaypointSpeed "LIMITED";
};

private _wayPoint = _civGroup addWaypoint [getpos _civ, 0];
_wayPoint setWaypointBehaviour "SAFE";
_wayPoint setWaypointType "Cycle";