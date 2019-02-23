BDX_Pistol = handgunWeapon player;
if (BDX_Pistol != "") then {
	if(player ammo BDX_Pistol > 0) then {
		BDX_Mag = currentMagazine player;
		BDX_Attach = handgunitems player;
		BDX_Ammo = player ammo BDX_Pistol;
		BDX_HidingPistol = true;
		player removeMagazine BDX_Pistol;
		player removeweapon BDX_Pistol;
	};
};
