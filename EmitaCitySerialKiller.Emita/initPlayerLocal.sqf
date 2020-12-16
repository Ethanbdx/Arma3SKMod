waituntil {!isnull cameraOn && getClientState != "MISSION RECEIVED" && getClientState != "GAME LOADED"};
CivsReady = false;
waitUntil {CivsReady};
if(side(player) == EAST) then {
	player setPos getPos(StartLocation);
	{
		private _markerName = format["cache%1",(random 999)];
		createMarkerLocal[_markerName, (getpos _x)];
		_markerName setMarkerTypeLocal "mil_pickup";
		_markerName setMarkerColorLocal "ColorBlack";
		_markerName setMarkerTextLocal "Cache";
	} forEach KillerStartLocations;
};
