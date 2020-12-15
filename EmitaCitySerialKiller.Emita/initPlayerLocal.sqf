player enableSimulationGlobal false;
CivsReady = false;
waitUntil {CivsReady};
player enableSimulationGlobal true;
if(side(player) == EAST) then {
	player setPos getPos(StartLocation);
}