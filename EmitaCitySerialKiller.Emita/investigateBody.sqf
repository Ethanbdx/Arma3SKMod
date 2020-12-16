private _civBody = _this select 0;
InvestigatedBodies pushBack (name _civBody);
deleteVehicle _civBody;
publicVariable "InvestigatedBodies";
hint format["Body Investigated - {0}", InvestigatedBodies];
if(!(_civBody in InvestigatedBodies)) then {
	if(count(InvestigatedBodies) % 15 == 0) then {
		private _civKiller = _this select 3;
		RevealedKiller = [_civKiller];
		publicVariable "RevealedKiller";
	};
};