private _civ = _this;
private _civGroup = group _civ;
private _civKilledHander = _civ addEventHandler ["killed", {_this execVM "civKillHandler.sqf"} ];

for [{private _i=0},{_i<5},{_i=_i+1}] do {
	private _wayPoint = _civGroup addWaypoint [getpos ((CivTrafficSpawns select(floor(random(count(CivTrafficSpawns)))))), 100];
	_wayPoint setWaypointBehaviour "SAFE";
	_wayPoint setWaypointType "MOVE";
};
private _wayPoint = _civGroup addWaypoint [getpos _civ, 0];
_wayPoint setWaypointBehaviour "SAFE";
_wayPoint setWaypointType "Cycle";