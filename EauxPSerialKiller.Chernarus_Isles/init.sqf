
    BDX_Initialisiert=true;
	Civilian setFriend [EAST , 1];
	execVM "lib.sqf";
	execVM "common\addRating.sqf";
	execVM "config.sqf";

	if (!isNil("paramsArray select 0")) then {
		skiptime paramsArray select 0;
	};
	if (!isNil("paramsArray select 2")) then {
		setviewdistance paramsArray select 2;
	};
	if (isserver) then {
		execVM "server\init_server.sqf";
	};

	if (NOT isdedicated) then {
		execVM "common\init_common.sqf";
	};



