{
	private _vehicleType = CivVehicles select (floor(random(count CivVehicles)));
	private _civVehicle = _vehicleType createVehicle (getpos _x);
	[_civVehicle] execVM "initCivVehicle.sqf";
	sleep 0.1;
} foreach CarSpawns;