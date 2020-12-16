waituntil {!isnull cameraOn && getClientState != "MISSION RECEIVED" && getClientState != "GAME LOADED"};
player enableSimulationGlobal false;
CivsReady = false;
waitUntil {CivsReady};
player enableSimulationGlobal true;
if(side(player) == EAST) then {
	player setPos getPos(StartLocation);
};
