if (isserver) then {
	sleep 2;
	BDX_Cops=BDX_Cops+[(_this select 0)];
	publicvariable "BDX_Cops";
};