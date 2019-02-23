
onPlayerConnected "execVM 'server\SyncJIP.sqf';";
sleep 1;

execVM "server\spawn_city.sqf";
execVM "server\copwatch.sqf";
execVM "common\LockJailDoor.sqf";
