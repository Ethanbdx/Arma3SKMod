private _civBody = _this select 0;
InvestigatedBodies pushBack (name _civBody);
deleteVehicle _civBody;
publicVariable "InvestigatedBodies";
hint format["Body Investigated - %1", count(InvestigatedBodies)];
if(!(_civBody in InvestigatedBodies)) then {
	if(count(InvestigatedBodies) % 15 == 0) then {
		private _killer = _this select 3;
		private _markerName = format["killermarker%1",(random 999)];
		createMarkerLocal[_markerName, (getpos _killer)];
		_markerName setMarkerTypeLocal "mil_join";
		_markerName setMarkerColorLocal "ColorRed";
		_markerName setMarkerTextLocal "Killer";

		sleep 3;

		_markerName setMarkerPosLocal (getPos _killer);

		sleep 3;

		_markerName setMarkerPosLocal (getPos _killer);

		sleep 3;
		
		_markerName setMarkerPosLocal (getPos _killer);

		sleep 3;

		deleteMarkerLocal _markerName;
	};
};