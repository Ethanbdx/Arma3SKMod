private _vehicle = _this select 3;
private _spawner = _this select 0;

if(_spawner == carSpawner) then {
	if(count(vehicles inAreaArray copVehicleSpawnTrigger) == 0) then {
	_vehicle createVehicle getPos(copVehicleSpawn);
	} else {
		hint "Spawn not empty.";
	};
} else {
	if(count(vehicles inAreaArray copHeliSpawnTrigger) == 0) then {
	_vehicle createVehicle getPos(copHeliSpawn);
	} else {
		hint "Spawn not empty.";
	};
};
