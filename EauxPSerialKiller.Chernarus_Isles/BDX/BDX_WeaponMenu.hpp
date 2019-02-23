

class BDX_WeaponMenu
{
    idd = 998;
    movingEnable = false;

    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Ethanbdx, v1.063, #Lexoge)
    ////////////////////////////////////////////////////////
    class controls
    {
        class BDX_killerMenuBG : IGUIBack
        {
            idc = 2200;
            x = 0.340156 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.299062 * safezoneW;
            h = 0.286 * safezoneH;
        };
        class BDX_comboLoad : RscCombo
        {
            idc = 2100;
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class BDX_btnSel : RscButton
        {
            idc = 1600;
            text = "Select"; //--- ToDo: Localize;
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.118594 * safezoneW;
            h = 0.044 * safezoneH;
            action = "closeDialog 998;";
        };
        class BDX_comboSkin : RscCombo
        {
            idc = 2101;
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class BDX_lblSelLoad : RscText
        {
            idc = 1000;
            text = "Select Loadout"; //--- ToDo: Localize;
            x = 0.360781 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class BDX_lblSelSkin : RscText
        {
            idc = 1001;
            text = "Select Skin"; //--- ToDo: Localize;
            x = 0.360781 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.033 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};