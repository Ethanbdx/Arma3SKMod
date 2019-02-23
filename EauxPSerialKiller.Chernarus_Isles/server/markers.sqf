

BDX_Markers=[];
BDX_Killer1HideMarker="";
BDX_Killer2HideMarker="";

{

	_name = format["marker%1",(random 9999)];
	_marker = createMarker [_name, getpos _x];
	_marker setmarkertype "mil_dot";
	_marker setmarkercolor "ColorGreen";
	BDX_Markers=BDX_Markers+[[_marker,_x]];

}foreach BDX_Civis;


for [{true},{true},{true}] do {
	if(!isNil("killer1") AND (count(weapons killer1)==0) AND alive killer1) then {
		_name = format ["marker%1", random(9999)];
		_marker = createMarker [_name, getpos killer1];
		_marker setmarkertype "mil_dot";
		_marker setmarkercolor "ColorGreen";
		BDX_Killer1HideMarker=_marker;
};


	if(!isNil("killer2") AND (count(weapons killer2)==0) AND alive killer2) then {
		_name = format ["marker%1", random(9999)];
		_marker = createMarker [_name, getpos killer2];
		_marker setmarkertype "mil_dot";
		_marker setmarkercolor "ColorGreen";
		BDX_Killer2HideMarker=_marker;
	};
{
	if (alive (_x select 1)) then {
		(_x select 0) setmarkerpos getpos (_x select 1);
	} else {
		BDX_Markers=BDX_Markers-[_x];
		deletemarker (_x select 0);
	};
}foreach BDX_Markers;
sleep 2;

if (BDX_Killer1HideMarker!="") then {deletemarker BDX_Killer1HideMarker;};
if (BDX_Killer2HideMarker!="") then {deletemarker BDX_Killer2HideMarker;};
BDX_Killer1HideMarker="";
BDX_Killer2HideMarker="";
};

