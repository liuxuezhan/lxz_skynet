--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_hero_lv_exp = {

	[HERO_LV_1] = { ID = HERO_LV_1, NeedExp = nil,},
	[HERO_LV_2] = { ID = HERO_LV_2, NeedExp = {5,6,8,10,12,14},},
	[HERO_LV_3] = { ID = HERO_LV_3, NeedExp = {8,10,13,16,19,22},},
	[HERO_LV_4] = { ID = HERO_LV_4, NeedExp = {13,15,20,25,30,35},},
	[HERO_LV_5] = { ID = HERO_LV_5, NeedExp = {16,19,25,31,37,43},},
	[HERO_LV_6] = { ID = HERO_LV_6, NeedExp = {25,29,39,49,59,69},},
	[HERO_LV_7] = { ID = HERO_LV_7, NeedExp = {40,47,63,79,95,111},},
	[HERO_LV_8] = { ID = HERO_LV_8, NeedExp = {63,76,101,126,151,176},},
	[HERO_LV_9] = { ID = HERO_LV_9, NeedExp = {101,121,162,202,242,283},},
	[HERO_LV_10] = { ID = HERO_LV_10, NeedExp = {162,194,258,323,388,452},},
	[HERO_LV_11] = { ID = HERO_LV_11, NeedExp = {259,310,414,517,620,724},},
	[HERO_LV_12] = { ID = HERO_LV_12, NeedExp = {221,265,353,441,529,617},},
	[HERO_LV_13] = { ID = HERO_LV_13, NeedExp = {291,349,466,582,698,815},},
	[HERO_LV_14] = { ID = HERO_LV_14, NeedExp = {384,461,614,768,922,1075},},
	[HERO_LV_15] = { ID = HERO_LV_15, NeedExp = {507,608,811,1014,1217,1420},},
	[HERO_LV_16] = { ID = HERO_LV_16, NeedExp = {670,803,1071,1339,1607,1875},},
	[HERO_LV_17] = { ID = HERO_LV_17, NeedExp = {884,1060,1414,1767,2120,2474},},
	[HERO_LV_18] = { ID = HERO_LV_18, NeedExp = {1166,1399,1866,2332,2798,3265},},
	[HERO_LV_19] = { ID = HERO_LV_19, NeedExp = {1540,1847,2463,3079,3695,4311},},
	[HERO_LV_20] = { ID = HERO_LV_20, NeedExp = {2032,2438,3251,4064,4877,5690},},
	[HERO_LV_21] = { ID = HERO_LV_21, NeedExp = {2682,3218,4291,5364,6437,7510},},
	[HERO_LV_22] = { ID = HERO_LV_22, NeedExp = {3541,4249,5665,7081,8497,9913},},
	[HERO_LV_23] = { ID = HERO_LV_23, NeedExp = {4674,5608,7478,9347,11216,13086},},
	[HERO_LV_24] = { ID = HERO_LV_24, NeedExp = {6169,7403,9870,12338,14806,17273},},
	[HERO_LV_25] = { ID = HERO_LV_25, NeedExp = {8143,9772,13029,16286,19543,22800},},
	[HERO_LV_26] = { ID = HERO_LV_26, NeedExp = {13436,16123,21498,26872,32246,37621},},
	[HERO_LV_27] = { ID = HERO_LV_27, NeedExp = {18811,22573,30097,37621,45145,52669},},
	[HERO_LV_28] = { ID = HERO_LV_28, NeedExp = {26335,31601,42135,52669,63203,73737},},
	[HERO_LV_29] = { ID = HERO_LV_29, NeedExp = {36869,44242,58990,73737,88484,103232},},
	[HERO_LV_30] = { ID = HERO_LV_30, NeedExp = {51616,61939,82586,103232,123878,144525},},
	[HERO_LV_31] = { ID = HERO_LV_31, NeedExp = {72262,86714,115619,144524,173429,202334},},
	[HERO_LV_32] = { ID = HERO_LV_32, NeedExp = {88521,106225,141634,177042,212450,247859},},
	[HERO_LV_33] = { ID = HERO_LV_33, NeedExp = {119504,143404,191206,239007,286808,334610},},
	[HERO_LV_34] = { ID = HERO_LV_34, NeedExp = {156721,188065,250753,313441,376129,438817},},
	[HERO_LV_35] = { ID = HERO_LV_35, NeedExp = {216182,259418,345891,432364,518837,605310},},
	[HERO_LV_36] = { ID = HERO_LV_36, NeedExp = {275169,330202,440270,550337,660404,770472},},
	[HERO_LV_37] = { ID = HERO_LV_37, NeedExp = {388155,465785,621047,776309,931571,1086833},},
	[HERO_LV_38] = { ID = HERO_LV_38, NeedExp = {524009,628810,838414,1048017,1257620,1467224},},
	[HERO_LV_39] = { ID = HERO_LV_39, NeedExp = {707412,848894,1131858,1414823,1697788,1980752},},
	[HERO_LV_40] = { ID = HERO_LV_40, NeedExp = {955006,1146007,1528009,1910011,2292013,2674015},},
	[HERO_LV_41] = { ID = HERO_LV_41, NeedExp = {1289258,1547109,2062812,2578515,3094218,3609921},},
	[HERO_LV_42] = { ID = HERO_LV_42, NeedExp = {1392398,1670878,2227837,2784796,3341755,3898714},},
	[HERO_LV_43] = { ID = HERO_LV_43, NeedExp = {1503790,1804548,2406064,3007580,3609096,4210612},},
	[HERO_LV_44] = { ID = HERO_LV_44, NeedExp = {1624093,1948912,2598549,3248186,3897823,4547460},},
	[HERO_LV_45] = { ID = HERO_LV_45, NeedExp = {1754021,2104825,2806433,3508041,4209649,4911257},},
	[HERO_LV_46] = { ID = HERO_LV_46, NeedExp = {1894342,2273210,3030947,3788684,4546421,5304158},},
	[HERO_LV_47] = { ID = HERO_LV_47, NeedExp = {2045890,2455067,3273423,4091779,4910135,5728491},},
	[HERO_LV_48] = { ID = HERO_LV_48, NeedExp = {2209561,2651473,3535297,4419121,5302945,6186769},},
	[HERO_LV_49] = { ID = HERO_LV_49, NeedExp = {2386326,2863591,3818121,4772651,5727181,6681711},},
	[HERO_LV_50] = { ID = HERO_LV_50, NeedExp = {2577232,3092678,4123570,5154463,6185356,7216248},},
}
