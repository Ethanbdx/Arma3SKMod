_caller = _this select 1;
_location = _this select 3;
if (_caller == killer1) then {
	killer2 setPos (getPos _location);
} else {
	killer1 setPos (getPos _location);
};


hint "A prisoner has been freed!";
_msg="A killer has been freed from the jail";
	
BDX_CopSend=_msg;
publicvariable "BDX_CopSend";
[West,"HQ"] sidechat _msg;
	
