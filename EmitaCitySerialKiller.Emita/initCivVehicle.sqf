private _civVehicle = _this select 0;
_civVehicle addEventHandler ["GetIn", {
	private _unit = _this select 2;
	private _civVehicle = _this select 0;
	switch(side _unit) do
	{
		case EAST:
		{
			if(!(_civVehicle in NoAlertVehicles)) then {
				_value = random 1.00;
				if(_value < 0.80) then {
					_district = [getpos _civVehicle] call GetClosestDistrict;
					_message = format["A car has been stolen near %1", (_district select 1)];
					[_message] call SendMessageCop;
					[_civVehicle, "CarAlarm"] remoteExec ["say3D"];
				};
				NoAlertVehicles pushBack _civVehicle;
			};
		};

		case WEST:
		{
			moveOut _unit;
		};
	};
}];