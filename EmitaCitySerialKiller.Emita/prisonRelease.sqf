private _releaseLocation = _this select 0;
private _caller = _this select 1;

if(_caller == killer1) then {

	if(!(killer2 inArea jail)) then {
		return;
	};

	if(_releaseLocation == prisonRelease1) then {
		hint "Prisoner in transition, will arrive in 5 seconds";
		sleep 5;
		killer2 setPosATL (getPos prisonRelease1Location);
	} else {
		hint "Prisoner in transition, will arrive in 5 seconds";
		sleep 5;
		killer2 setPosATL (getPos prisonRelease2Location);
	};

} else {

	if(!(killer1 inArea jail)) then {
		return;
	};

	if(_releaseLocation == prisonRelease1) then {
		hint "Prisoner in transition, will arrive in 5 seconds";
		sleep 5;
		killer1 setPosATL (getPos prisonRelease1Location);
	} else {
		hint "Prisoner in transition, will arrive in 5 seconds";
		sleep 5;
		killer1 setPosATL (getPos prisonRelease2Location);
	};
};

sleep 10;
["A prisoner has been released 10 seconds ago!"] call SendMessageCop;
