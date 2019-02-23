if (!hasInterface) exitWith {};
 
_this setVariable ["siren",false];
_this addAction ["Turn On Siren",{(_this select 0) setVariable ["siren",true,true]},nil,0,false,false,"","!(_target getVariable 'siren') && _this == driver _target"];
_this addAction ["Turn Off Siren",{(_this select 0) setVariable ["siren",false,true]},nil,0,false,false,"","(_target getVariable 'siren') && _this == driver _target"];
 
while {true} do {
    if (_this getVariable "siren") then {
        _this say3d "CopSiren";
        sleep 2.08;
    } else {
        sleep 1.04;
    };
};