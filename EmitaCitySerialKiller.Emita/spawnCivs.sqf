{
    private _marker = _x select 0;
    private _districtName = _x select 1;
    private _civCount = _x select 2;
    private _maxDistance = (_x select 3) / 2;
    private _spawnedCount = 0;
    private _civGroup = createGroup [Civilian, true];
    while {_spawnedCount < _civCount} do {
        _civPosition = [(getpos _marker select 0), (getpos _marker select 1), 0];
        private _model = CivModels select (floor(random(count(CivModels))));
        private _civ = _civGroup createUnit[_model, _civPosition, [], _maxDistance, "NONE"];
        Civs pushBack (_civ);
        [_civ, _maxDistance] execVM "walkingCivBehavior.sqf";
        _spawnedCount = _spawnedCount + 1;
        CivsAlive = CivsAlive + 1;
        sleep 0.1;
    };
} foreach Districts;

execVM "spawnCivTraffic.sqf";
