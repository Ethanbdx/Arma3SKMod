for [{true},{true},{true}] do {
	{
		if (!alive _x OR isNil("_x")) then {
				BDX_Cops=BDX_Cops-[_x];publicvariable "BDX_Cops";
			};
	}foreach BDX_Cops;
	sleep 5;
};