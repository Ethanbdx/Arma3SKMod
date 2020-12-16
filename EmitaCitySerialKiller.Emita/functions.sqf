SendMessageCop = {
	private _message = _this select 0;
	[[WEST, "HQ"], _message] remoteExecCall ["sideChat"];
};

SendMessageGlobal = {
	private _sender = _this select 0;
	private _message = _this select 1;

	[_sender, _message] remoteExecCall ["globalChat"];
};

SyncGlobalVars = {
	publicVariable "CivsAlive";
	publicVariable "CivsReady";
	publicVariable "InvestigatedBodies";
	publicVariable "StartLocation";
	publicVariable "KillerStartLocations";
};

CreateKillMarker = {
	private _killerSide = _this select 0;
	private _markerPosition = _this select 1;
	private _markerTxt = "";
	private _color = "";
	if(_killerSide == EAST) then {
		_markerTxt = format["%1", CivsMurdered];
		_color = "ColorRed";
	};
	if(_killerSide == WEST) then {
		_markerTxt = format["%1", CivsCopMurdered];
		_color = "ColorBlue";
	};
	if(_killerSide == CIVILIAN) then {
		_markerTxt = format["%1", CivAccidents];
		_color = "ColorGreen";
	};
	private _marker = createMarkerLocal [format["marker%1",random(999)], _markerPosition];
	_marker setMarkerText _markerTxt;
	_marker setMarkerType "mil_Objective";
	_marker setMarkerColor _color;
	_marker setMarkerSize [0.4, 0.4];
};

CreateCivMarker = {
	private _unit = _this select 0;
	private _markerName = format["marker%1", (random(9999))];
	private _marker = createMarker [_markerName, getpos _unit];
	_marker setMarkerType "mil_dot";
	_marker setMarkerColor "ColorGreen";
	Markers pushBack ([_marker, _unit]);

	_marker;
};

CreateKillerMarker= {
	private _killer = _this select 0;
	private _markerName = format["killerMarker%1", (random(9999))];
	private _marker = createMarker [_markerName, (getpos _killer)];
	_marker setMarkerType "mil_dot";
	_marker setMarkerColor "ColorPink";
	
	[_marker, _killer];
};

"RevealedKiller" addPublicVariableEventHandler {
	private _pos = getPos ((_this select 1) select 0);
	private _message = [_pos] call GetKillerLocationMessage;
	[_message] call SendMessageCop;
};

GetClosestDistrict = {
	private _queryPosition = _this select 0;
	private _closestDistrict = (Districts select 0);
	{
		if(((_x select 0) distance _queryPosition) < ((_closestDistrict select 0) distance _queryPosition)) then {
			_closestDistrict = _x;
		};
	} foreach Districts;

	_closestDistrict;
};

GetKillerKillMessage = {
	private _killPosition = _this select 0;
	private _killType = _this select 1;
	private _district = [_killPosition] call GetClosestDistrict;
	private _message = format["A civilian has been %1 in %2, go investigate for more info.", _killType, (_district select 1)];
	if(_killPosition distance (_district select 0) < 100) then {
		_message = format["A civilian has been %1 near %2, go investigate for more info.", _killType, (_district select 1)];
	};

	if(_killPosition distance (_district select 0) > 250) then {
		_message = format["A civilian has been %1 in the vicinity of %2, go investigate for more info.", _killType, (_district select 1)];
	};

	//SQF returns the last expression evaluated.
	_message;
};

GetCopKillMessage = {
	private _killer = _this select 0;
	private _killPosition = _this select 1;
	private _district = [_killPosition] call GetClosestDistrict;
	private _message = format["Officer %1 has murdered a civilian in %2, they have been fired.", _killer, (_district select 1)];
	if(_killPosition distance (_district select 0) < 100) then {
		_message = format["Officer %1 has murdered a civilian near %2, they have been fired.", _killer, (_district select 1)];
	};

	if(_killPosition distance (_district select 0) > 250) then {
		_message = format["Officer %1 has murdered a civilian in the vicinity of %2, they have been fired.", _killer, (_district select 1)];
	};

	_message;
};

GetCivKillMessage = {
	private _killPosition = _this select 0;
	private _district = [_killPosition] call GetClosestDistrict;
	private _message = format["An accident has occured in %1", (_district select 1)];
	if(_killPosition distance (_district select 0) < 100) then {
		_message = format["An accident has occured near %1.", (_district select 1)];
	};

	if(_killPosition distance (_district select 0) > 250) then {
		_message = format["An accident has occured in the vicinity of %1.", (_district select 1)];
	};

	_message;
};

GetKillerLocationMessage = {
	private _killerLocation = _this select 0;
	private _district = [_killerLocation] call GetClosestDistrict;
	private _message = format["The killer is in %1", (_district select 1)];

	if(_killerLocation distance (_district select 0) < 100) then {
		_message = format["The killer is near", _district select 1];
	};

	if(_killerLocation distance (_district select 0) < 500) then {
		_message = format["The killer is in the vinicity of %1", (_district select 1)];
	};

	if(_killerLocation distance (_district select 0) > 500) then {
		_message = format["The killer is greater than half a click from %1", (_district select 1)];
	};

	_message;
}