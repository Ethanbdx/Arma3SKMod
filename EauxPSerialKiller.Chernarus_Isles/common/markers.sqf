
if (side player==West) then {
for [{true},{true},{true}] do {
_Markers=[];
{
if (_x iskindof "Man") then {
_name = format["copmarker%1",(random 999)];
_marker = createMarkerlocal [_name, getpos _x];
_marker setmarkertypelocal "mil_dot";
_marker setmarkercolorlocal "ColorBlue";
_marker setmarkertextlocal name _x;
_Markers=_Markers+[[_marker,_x]];
};
}foreach BDX_Cops;
sleep 5;





{
deletemarker (_x select 0);
}foreach _Markers;

};
};

if (side player==East) then {
	for [{true},{true},{true}] do {
		_Markers=[];
		if (!isNil("killer1")) then {
			_name = "killer1marker";
			_marker = createMarkerlocal [_name, getpos killer1];
			_marker setmarkertypelocal "mil_dot";
			_marker setmarkercolorlocal "ColorRed";
			_marker setmarkertextlocal name killer1;
			_Markers=_Markers+[[_marker,killer1]];
			_wc=0;
			if (killer1 hasweapon "itemcompass") then {_wc=_wc+1;};
			if (killer1 hasweapon "itemradio") then {_wc=_wc+1;};
			if (killer1 hasweapon "itemmap") then {_wc=_wc+1;};
			if (killer1 hasweapon "itemgps") then {_wc=_wc+1;};
			if (killer1 hasweapon "itemwatch") then {_wc=_wc+1;};
			if((count(weapons killer1)<=_wc) AND alive killer1) then {
				_marker setmarkercolorlocal "ColorGreen";
			};
		};
		if (!isNil("killer2")) then {
			_name = "killer2marker";
			_marker = createMarkerlocal [_name, getpos killer2];
			_marker setmarkertypelocal "mil_dot";
			_marker setmarkercolorlocal "ColorRed";
			_marker setmarkertextlocal name killer2;
			_Markers=_Markers+[[_marker,killer2]];
			_wc=0;
			if (killer2 hasweapon "itemcompass") then {_wc=_wc+1;};
			if (killer2 hasweapon "itemradio") then {_wc=_wc+1;};
			if (killer2 hasweapon "itemmap") then {_wc=_wc+1;};
			if (killer2 hasweapon "itemgps") then {_wc=_wc+1;};
			if (killer2 hasweapon "itemwatch") then {_wc=_wc+1;};
			if((count(weapons killer2)<=_wc) AND alive killer2) then {
				_marker setmarkercolorlocal "ColorGreen";
			};
		};
		sleep 5;
		{
		deletemarker (_x select 0);
		}foreach _Markers;
		};
};

