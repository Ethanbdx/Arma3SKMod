player addMagazine BDX_Mag;
player addweapon BDX_Pistol;
player setAmmo [BDX_Pistol, BDX_Ammo];
_attach = BDX_Attach select 0;
player addHandgunItem _attach;
BDX_HidingPistol=false;