sleep 0.2;
private _trafficGroup = createGroup[Civilian, true];
{
	private _vehiclePosition = getpos(_x);
	private _vehicleModel = CivVehicles select(floor(random(count(CivVehicles))));
	private _vehicleInstance = createVehicle[_vehicleModel, _vehiclePosition, [], 0, "NONE"];
	[_vehicleInstance] execVM "initCivVehicle.sqf";
	sleep 0.1;
	private _civModel = CivModels select (floor(random(count(CivModels))));
	private _civ = _trafficGroup createUnit[_civModel, _vehiclePosition, [], 0, "NONE"];
	Civs pushBack (_civ);
	_civ execVM "trafficCivBehavior.sqf";
	_civ moveInDriver _vehicleInstance;
	_civ assignAsDriver _vehicleInstance;
	sleep 0.1;
	CivsAlive=CivsAlive + 1;
}foreach CivTrafficSpawns;
sleep 0.05;
execVM "realTimeMarkers.sqf";
execVM "spawnRandomVehicles.sqf";

CivsReady = true;
StartLocation = KillerStartLocations select (floor(random(count KillerStartLocations)));

call SyncGlobalVars;
