waituntil {!isnull cameraOn && getClientState != "MISSION RECEIVED" && getClientState != "GAME LOADED"};
player enableSimulationGlobal false;
CivsReady = false;
waitUntil {CivsReady};
player enableSimulationGlobal true;
if(side(player) == EAST) then {
	player setPos getPos(StartLocation);
	{
		private _markerName = format["cache%1",(random 999)];
		[[_markerName, getpos _x]] remoteExec ["createMarkerLocal"];
		[_markerName,"mil_pickup"] remoteExec ["setMarkerTypeLocal"];
		[_markerName,"ColorBlack"] remoteExec ["setMarkerColorLocal"];
		[_markerName,"Cache"] remoteExec ["setMarkerTextLocal"];
	} forEach KillerStartLocations;
};
