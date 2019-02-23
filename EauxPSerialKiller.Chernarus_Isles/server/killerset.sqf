if (!isserver) exitwith {};

_start = BDX_Killerstarts select(floor(random(count(BDX_Killerstarts))));


if(!isNil ("killer1")) then {

killer1 setpos getmarkerpos _start;
};

if(!isNil ("killer2")) then {

killer2 setpos getmarkerpos _start;
};