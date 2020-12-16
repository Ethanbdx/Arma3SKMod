CivsAlive = 0;
CivsMurdered = 0;
CivsCopMurdered = 0;
CivAccidents = 0;
LoadingProgress = 0;
CivsReady = false;
InvestigatedBodies = [];
RevealedKiller = [nil, false];
NoAlertVehicles = [];
Civs = [];
Districts = [];
KillerStartLocations = [
	killerStart1,
	killerStart2,
	killerStart3,
	killerStart4,
	killerStart5,
	killerStart6,
	killerStart7,
	killerStart8,
	killerStart9,
	killerStart10,
	killerStart11,
	killerStart12
];
CarSpawns = [
	randomVehicleSpawn,
	randomVehicleSpawn_1,
	randomVehicleSpawn_2,
	randomVehicleSpawn_3,
	randomVehicleSpawn_4,
	randomVehicleSpawn_5,
	randomVehicleSpawn_6,
	randomVehicleSpawn_7,
	randomVehicleSpawn_8,
	randomVehicleSpawn_9,
	randomVehicleSpawn_10,
	randomVehicleSpawn_11,
	randomVehicleSpawn_12,
	randomVehicleSpawn_13,
	randomVehicleSpawn_14,
	randomVehicleSpawn_15,
	randomVehicleSpawn_16,
	randomVehicleSpawn_17,
	randomVehicleSpawn_18,
	randomVehicleSpawn_19,
	randomVehicleSpawn_20,
	randomVehicleSpawn_21,
	randomVehicleSpawn_22,
	randomVehicleSpawn_23,
	randomVehicleSpawn_24,
	randomVehicleSpawn_25,
	randomVehicleSpawn_26,
	randomVehicleSpawn_27,
	randomVehicleSpawn_28,
	randomVehicleSpawn_29,
	randomVehicleSpawn_30,
	randomVehicleSpawn_31,
	randomVehicleSpawn_32,
	randomVehicleSpawn_33,
	randomVehicleSpawn_34,
	randomVehicleSpawn_35,
	randomVehicleSpawn_36,
	randomVehicleSpawn_37,
	randomVehicleSpawn_38,
	randomVehicleSpawn_39,
	randomVehicleSpawn_40,
	randomVehicleSpawn_41,
	randomVehicleSpawn_42,
	randomVehicleSpawn_43,
	randomVehicleSpawn_44,
	randomVehicleSpawn_45,
	randomVehicleSpawn_46,
	randomVehicleSpawn_47,
	randomVehicleSpawn_48,
	randomVehicleSpawn_49,
	randomVehicleSpawn_50,
	randomVehicleSpawn_51,
	randomVehicleSpawn_52,
	randomVehicleSpawn_53,
	randomVehicleSpawn_54,
	randomVehicleSpawn_55,
	randomVehicleSpawn_56,
	randomVehicleSpawn_57,
	randomVehicleSpawn_58,
	randomVehicleSpawn_59,
	randomVehicleSpawn_60,
	randomVehicleSpawn_61,
	randomVehicleSpawn_62,
	randomVehicleSpawn_63,
	randomVehicleSpawn_64,
	randomVehicleSpawn_65,
	randomVehicleSpawn_66,
	randomVehicleSpawn_67,
	randomVehicleSpawn_68,
	randomVehicleSpawn_69,
	randomVehicleSpawn_70,
	randomVehicleSpawn_71,
	randomVehicleSpawn_72,
	randomVehicleSpawn_73,
	randomVehicleSpawn_74,
	randomVehicleSpawn_75,
	randomVehicleSpawn_76,
	randomVehicleSpawn_77,
	randomVehicleSpawn_78,
	randomVehicleSpawn_79,
	randomVehicleSpawn_80,
	randomVehicleSpawn_81,
	randomVehicleSpawn_82,
	randomVehicleSpawn_83,
	randomVehicleSpawn_84,
	randomVehicleSpawn_85,
	randomVehicleSpawn_86,
	randomVehicleSpawn_87,
	randomVehicleSpawn_88,
	randomVehicleSpawn_89,
	randomVehicleSpawn_90,
	randomVehicleSpawn_91,
	randomVehicleSpawn_92,
	randomVehicleSpawn_93,
	randomVehicleSpawn_94,
	randomVehicleSpawn_95,
	randomVehicleSpawn_96,
	randomVehicleSpawn_97,
	randomVehicleSpawn_98,
	randomVehicleSpawn_99,
	randomVehicleSpawn_100,
	randomVehicleSpawn_101,
	randomVehicleSpawn_102,
	randomVehicleSpawn_103,
	randomVehicleSpawn_104,
	randomVehicleSpawn_105,
	randomVehicleSpawn_106,
	randomVehicleSpawn_107,
	randomVehicleSpawn_108,
	randomVehicleSpawn_109,
	randomVehicleSpawn_110,
	randomVehicleSpawn_111,
	randomVehicleSpawn_112,
	randomVehicleSpawn_113,
	randomVehicleSpawn_114,
	randomVehicleSpawn_115,
	randomVehicleSpawn_116,
	randomVehicleSpawn_117,
	randomVehicleSpawn_118,
	randomVehicleSpawn_119,
	randomVehicleSpawn_120,
	randomVehicleSpawn_121,
	randomVehicleSpawn_122,
	randomVehicleSpawn_123,
	randomVehicleSpawn_124,
	randomVehicleSpawn_125,
	randomVehicleSpawn_126,
	randomVehicleSpawn_127,
	randomVehicleSpawn_128,
	randomVehicleSpawn_129,
	randomVehicleSpawn_130,
	randomVehicleSpawn_131,
	randomVehicleSpawn_132,
	randomVehicleSpawn_133,
	randomVehicleSpawn_134,
	randomVehicleSpawn_135,
	randomVehicleSpawn_136,
	randomVehicleSpawn_137,
	randomVehicleSpawn_138,
	randomVehicleSpawn_139,
	randomVehicleSpawn_140,
	randomVehicleSpawn_141,
	randomVehicleSpawn_142,
	randomVehicleSpawn_143,
	randomVehicleSpawn_144,
	randomVehicleSpawn_145,
	randomVehicleSpawn_146,
	randomVehicleSpawn_147,
	randomVehicleSpawn_148,
	randomVehicleSpawn_149,
	randomVehicleSpawn_150,
	randomVehicleSpawn_151,
	randomVehicleSpawn_152,
	randomVehicleSpawn_153,
	randomVehicleSpawn_154,
	randomVehicleSpawn_155,
	randomVehicleSpawn_156,
	randomVehicleSpawn_157,
	randomVehicleSpawn_158,
	randomVehicleSpawn_159,
	randomVehicleSpawn_160,
	randomVehicleSpawn_161,
	randomVehicleSpawn_162,
	randomVehicleSpawn_163,
	randomVehicleSpawn_164,
	randomVehicleSpawn_165,
	randomVehicleSpawn_166,
	randomVehicleSpawn_167,
	randomVehicleSpawn_168,
	randomVehicleSpawn_169,
	randomVehicleSpawn_170,
	randomVehicleSpawn_171,
	randomVehicleSpawn_172,
	randomVehicleSpawn_173,
	randomVehicleSpawn_174,
	randomVehicleSpawn_175,
	randomVehicleSpawn_176,
	randomVehicleSpawn_177,
	randomVehicleSpawn_178,
	randomVehicleSpawn_179,
	randomVehicleSpawn_180,
	randomVehicleSpawn_181,
	randomVehicleSpawn_182,
	randomVehicleSpawn_183,
	randomVehicleSpawn_184,
	randomVehicleSpawn_185,
	randomVehicleSpawn_186,
	randomVehicleSpawn_187,
	randomVehicleSpawn_188,
	randomVehicleSpawn_189,
	randomVehicleSpawn_190,
	randomVehicleSpawn_191,
	randomVehicleSpawn_192,
	randomVehicleSpawn_193,
	randomVehicleSpawn_194,
	randomVehicleSpawn_195,
	randomVehicleSpawn_196,
	randomVehicleSpawn_197,
	randomVehicleSpawn_198,
	randomVehicleSpawn_199,
	randomVehicleSpawn_200,
	randomVehicleSpawn_201,
	randomVehicleSpawn_202,
	randomVehicleSpawn_203,
	randomVehicleSpawn_204,
	randomVehicleSpawn_205,
	randomVehicleSpawn_206,
	randomVehicleSpawn_207,
	randomVehicleSpawn_208,
	randomVehicleSpawn_209,
	randomVehicleSpawn_210,
	randomVehicleSpawn_211,
	randomVehicleSpawn_212

];
CivTrafficSpawns = [
	civTrafficSpawn_1,
	civTrafficSpawn_2,
	civTrafficSpawn_3,
	civTrafficSpawn_4,
	civTrafficSpawn_5,
	civTrafficSpawn_6,
	civTrafficSpawn_7,
	civTrafficSpawn_8,
	civTrafficSpawn_9,
	civTrafficSpawn_10,
	civTrafficSpawn_11,
	civTrafficSpawn_12,
	civTrafficSpawn_13,
	civTrafficSpawn_14,
	civTrafficSpawn_15,
	civTrafficSpawn_16,
	civTrafficSpawn_17,
	civTrafficSpawn_18,
	civTrafficSpawn_19,
	civTrafficSpawn_20,
	civTrafficSpawn_21,
	civTrafficSpawn_22,
	civTrafficSpawn_23,
	civTrafficSpawn_24,
	civTrafficSpawn_25,
	civTrafficSpawn_26,
	civTrafficSpawn_27,
	civTrafficSpawn_28,
	civTrafficSpawn_29,
	civTrafficSpawn_30,
	civTrafficSpawn_31,
	civTrafficSpawn_32,
	civTrafficSpawn_33,
	civTrafficSpawn_34,
	civTrafficSpawn_35,
	civTrafficSpawn_36,
	civTrafficSpawn_37,
	civTrafficSpawn_38,
	civTrafficSpawn_39,
	civTrafficSpawn_40,
	civTrafficSpawn_41,
	civTrafficSpawn_42,
	civTrafficSpawn_43,
	civTrafficSpawn_44,
	civTrafficSpawn_45,
	civTrafficSpawn_46,
	civTrafficSpawn_47,
	civTrafficSpawn_48,
	civTrafficSpawn_49,
	civTrafficSpawn_50
];
CivVehicles = [
	"CUP_C_Octavia_CIV",
	"CUP_C_Golf4_random_Civ",
	"CUP_C_Datsun",
	"CUP_C_Datsun_4seat",
	"CUP_C_Golf4_Sport_random_CIV",
	"CUP_C_Skoda_CR_CIV",
	"CUP_C_S1203_CIV_CR",
	"CUP_C_S1203_Ambulance_CR",
	"CUP_C_Volha_CR_CIV",
	"CUP_C_Lada_CIV",
	"CUP_C_Ural_Civ_03",
	"CUP_C_SUV_CIV",
	"CUP_C_Ikarus_Chernarus",
	"CUP_O_Hilux_unarmed_CR_CIV",
	"CUP_C_Datsun_Covered",
	"CUP_C_Datsun_Tubeframe",
	"CUP_C_Datsun_Plain",
	"CUP_C_Bus_City_CRCIV",
	"CUP_C_LR_Transport_CTK",
	"CUP_C_V3S_Open_TKC",
	"CUP_C_V3S_Covered_TKC",
	"CUP_C_SUV_TK",
	"CUP_C_UAZ_Unarmed_TK_CIV",
	"CUP_C_Ural_Civ_01",
	"CUP_C_Ural_Civ_02",
	"CUP_C_TT650_CIV",
	"CUP_C_TT650_TK_CIV"
];
CivModels = [
	"CUP_C_C_Pilot_01",
	"CUP_C_C_Citizen_01",
	"CUP_C_C_Citizen_02",
	"CUP_C_C_Citizen_03",
	"CUP_C_C_Citizen_04",
	"CUP_C_C_Worker_01",
	"CUP_C_C_Worker_02",
	"CUP_C_C_Worker_03",
	"CUP_C_C_Worker_04",
	"CUP_C_C_Profiteer_01",
	"CUP_C_C_Profiteer_02",
	"CUP_C_C_Profiteer_03",
	"CUP_C_C_Profiteer_04",
	"CUP_C_C_Woodlander_01",
	"CUP_C_C_Woodlander_02",
	"CUP_C_C_Woodlander_03",
	"CUP_C_C_Woodlander_04",
	"CUP_C_C_Villager_01",
	"CCUP_C_C_Villager_02",
	"CUP_C_C_Villager_03",
	"CUP_C_C_Villager_04",
	"CUP_C_C_Functionary_01",
	"CUP_C_C_Functionary_02",
	"CUP_C_C_Doctor_01",
	"CUP_C_C_Schoolteacher_01",
	"CUP_C_C_Assistant_01",
	"CUP_C_C_Rocker_01",
	"CUP_C_C_Rocker_02",
	"CUP_C_C_Rocker_03",
	"CUP_C_C_Rocker_04",
	"CUP_C_C_Mechanic_01",
	"CUP_C_C_Mechanic_02",
	"CUP_C_C_Mechanic_03",
	"CUP_C_C_Worker_05",
	"CUP_C_C_Fireman_01",
	"CUP_C_C_Rescuer_01"
];