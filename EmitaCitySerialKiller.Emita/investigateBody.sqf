private _civBody = _this select 0;
InvestigatedBodies pushBack (name _civBody);
deleteVehicle _civBody;
publicVariable "InvestigatedBodies";
hint format["Body Investigated - {0}", InvestigatedBodies];
if(!(_civBody in InvestigatedBodies)) then {
	if(count(InvestigatedBodies) % 15 == 0) then {
		private _civKiller = _this select 3;
		private _districtNear = [[getPos _civKiller], GetClosestDistrict] remoteExecCall ["call"];
		private _message = format["The killer is near %1, check your map.", _districtNear];
		[[_message],SendMessageCop] remoteExecCall ["call"];

		[["killerMarker", getPos _civKiller, 1]] remoteExec ["createMarkerLocal"];
		["killerMarker","mil_pickup"] remoteExec ["setMarkerTypeLocal"];
		["killerMarker","ColorBlack"] remoteExec ["setMarkerColorLocal"];
		["killerMarker","Cache"] remoteExec ["setMarkerTextLocal"];

		sleep 3;

		["killerMarker", [getPos _civKiller]] remoteExec ["setMarkerPosLocal"];

		sleep 3;

		["killerMarker"] remoteExec ["deleteMarkerLocal"];
	};
};