execVM "globalVars.sqf";
execVM "functions.sqf";

onPlayerConnected { [SyncJIP] remoteExecCall ["call"]; };
sleep 1;

execVM "spawnCivs.sqf";