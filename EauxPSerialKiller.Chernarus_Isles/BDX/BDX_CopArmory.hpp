class BDX_CopArmory
{
    idd = 997;
    movingEnabled = false;

    class controls
    {
        class BDX_copMenuBG : IGUIBack
        {
            idc = 2200;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.209 * safezoneH;
        };
        class BDX_btnSel : RscButton
        {
            idc = 1600;
            text = "Select Loadout"; //--- ToDo: Localize;
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.0670312 * safezoneW;
            h = 0.044 * safezoneH;
            action ="closeDialog 997;";
        };
        class BDX_comboLoad : RscCombo
        {
            idc = 2100;
            x = 0.4175 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.165 * safezoneW;
            h = 0.033 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};