Markers = [];
Killer1HideMarker = [];
Killer2HideMarker = [];
KillerRevealMarker = [];
{
	[_x] call CreateCivMarker;
} foreach Civs;

while({true}) do {

	if((killer1 getVariable "isConcealed") and alive killer1) then {
		if(count(Killer1HideMarker) == 0) then {
			Killer1HideMarker pushBack ([killer1] call CreateCivMarker);
		};
	} else {
		if(count(Killer1HideMarker) != 0) then {
			private _index = Markers find Killer1HideMarker;
			Markers deleteAt _index;
			deleteMarker (Killer1HideMarker select 0);
			Killer1HideMarker = [];
		};
	};

	if((killer2 getVariable "isConcealed") and alive killer2) then {
		if(count(Killer2HideMarker) == 0) then {
			Killer2HideMarker pushBack ([killer2] call CreateCivMarker);
		};
	} else {
		if(count(Killer2HideMarker) != 0) then {
			private _index = Markers find Killer2HideMarker;
			Markers deleteAt _index;
			deleteMarker (Killer2HideMarker select 0);
			Killer2HideMarker = [];
		};
	};

	{
		if(alive (_x select 1)) then {
			(_x select 0) setMarkerPos getPos (_x select 1);
		} else {
			private _index = Markers find _x;
			Markers deleteAt _index;
			deleteMarker (_x select 0);
		};
	} foreach Markers;

	if(RevealedKiller select 1) then {
		KillerRevealMarker = [(RevealedKiller select 0)] call CreateKillerMarker;
		Markers pushBack KillerRevealMarker;

		RevealedKiller = [nil, false];
		publicVariable "RevealedKiller";
	} else {
		if(KillerRevealMarker in Markers) then {
			private _index = Markers find KillerRevealMarker;
			Markers deleteAt _index;
			deleteMarker (KillerRevealMarker select 0);
		};
	};

	sleep 5;
};
