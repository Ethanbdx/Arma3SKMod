
  jail1Door setVariable ["bis_disabled_Door_1", 0, true];
  jail2Door setVariable ["bis_disabled_Door_1", 0, true];
  jail3Door setVariable ["bis_disabled_Door_1", 0, true];
	jail4Door setVariable ["bis_disabled_Door_1", 0, true];
	jail5Door setVariable ["bis_disabled_Door_1", 0, true];
	jail6Door setVariable ["bis_disabled_Door_1", 0, true];
	jail1Door animate ["door_1_move", 1];
  jail2Door animate ["door_1_move", 1];
  jail3Door animate ["door_1_move", 1];
	jail4Door animate ["door_1_move", 1];
	jail5Door animate ["door_1_move", 1];
	jail6Door animate ["door_1_move", 1];
  hint "All doors have been opened!";
	

	_msg="A killer has been freed from the jail";
	
	BDX_CopSend=_msg;
	publicvariable "BDX_CopSend";
	[West,"HQ"] sidechat _msg;
	
