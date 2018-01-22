--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_level = {

	[LEVEL_1] = { ID = LEVEL_1, Exp = 0, TotalExp = 0, Pow = 200, Bonus = {{"mutex_award",{{"res",2,1900,10000},{"res",1,1900,10000}}}},},
	[LEVEL_2] = { ID = LEVEL_2, Exp = 60, TotalExp = 60, Pow = 450, Bonus = {{"mutex_award",{{"res",2,3300,10000},{"res",1,3300,10000}}}},},
	[LEVEL_3] = { ID = LEVEL_3, Exp = 90, TotalExp = 150, Pow = 950, Bonus = {{"mutex_award",{{"res",2,3700,10000},{"res",1,3700,10000}}}},},
	[LEVEL_4] = { ID = LEVEL_4, Exp = 120, TotalExp = 270, Pow = 1500, Bonus = {{"mutex_award",{{"res",2,4200,10000},{"res",1,4200,10000}}}},},
	[LEVEL_5] = { ID = LEVEL_5, Exp = 140, TotalExp = 410, Pow = 2500, Bonus = {{"mutex_award",{{"res",2,4700,10000},{"res",1,4700,10000}}}},},
	[LEVEL_6] = { ID = LEVEL_6, Exp = 280, TotalExp = 690, Pow = 3500, Bonus = {{"mutex_award",{{"res",2,6100,10000},{"res",1,6100,10000}}}},},
	[LEVEL_7] = { ID = LEVEL_7, Exp = 380, TotalExp = 1070, Pow = 5000, Bonus = {{"mutex_award",{{"res",2,7700,10000},{"res",1,7700,10000}}}},},
	[LEVEL_8] = { ID = LEVEL_8, Exp = 570, TotalExp = 1640, Pow = 7000, Bonus = {{"mutex_award",{{"res",2,9800,10000},{"res",1,9800,10000}}}},},
	[LEVEL_9] = { ID = LEVEL_9, Exp = 1500, TotalExp = 3140, Pow = 9000, Bonus = {{"mutex_award",{{"res",2,13900,10000},{"res",1,13900,10000}}}},},
	[LEVEL_10] = { ID = LEVEL_10, Exp = 2800, TotalExp = 5940, Pow = 11000, Bonus = {{"mutex_award",{{"res",2,18900,10000},{"res",1,18900,10000}}}},},
	[LEVEL_11] = { ID = LEVEL_11, Exp = 6000, TotalExp = 11940, Pow = 13500, Bonus = {{"mutex_award",{{"res",2,28000,10000},{"res",1,28000,10000}}}},},
	[LEVEL_12] = { ID = LEVEL_12, Exp = 9700, TotalExp = 21640, Pow = 16500, Bonus = {{"mutex_award",{{"res",2,38200,10000},{"res",1,38200,10000}}}},},
	[LEVEL_13] = { ID = LEVEL_13, Exp = 12100, TotalExp = 33740, Pow = 19500, Bonus = {{"mutex_award",{{"res",2,50500,10000},{"res",1,50500,10000}}}},},
	[LEVEL_14] = { ID = LEVEL_14, Exp = 14500, TotalExp = 48240, Pow = 22500, Bonus = {{"mutex_award",{{"res",2,67900,10000},{"res",1,67900,10000}}}},},
	[LEVEL_15] = { ID = LEVEL_15, Exp = 15700, TotalExp = 63940, Pow = 26000, Bonus = {{"mutex_award",{{"res",2,87800,10000},{"res",1,87800,10000}}}},},
	[LEVEL_16] = { ID = LEVEL_16, Exp = 19800, TotalExp = 83740, Pow = 30000, Bonus = {{"mutex_award",{{"res",2,114900,10000},{"res",1,114900,10000}}}},},
	[LEVEL_17] = { ID = LEVEL_17, Exp = 21300, TotalExp = 105040, Pow = 34000, Bonus = {{"mutex_award",{{"res",2,125100,10000},{"res",1,125100,10000},{"res",3,25100,10000}}}},},
	[LEVEL_18] = { ID = LEVEL_18, Exp = 24300, TotalExp = 129340, Pow = 38000, Bonus = {{"mutex_award",{{"res",2,135500,10000},{"res",1,135500,10000},{"res",3,27100,10000}}}},},
	[LEVEL_19] = { ID = LEVEL_19, Exp = 28900, TotalExp = 158240, Pow = 42500, Bonus = {{"mutex_award",{{"res",2,136300,10000},{"res",1,136300,10000},{"res",3,27300,10000}}}},},
	[LEVEL_20] = { ID = LEVEL_20, Exp = 31200, TotalExp = 189440, Pow = 47500, Bonus = {{"mutex_award",{{"res",2,148000,10000},{"res",1,148000,10000},{"res",3,29600,10000}}}},},
	[LEVEL_21] = { ID = LEVEL_21, Exp = 68500, TotalExp = 257940, Pow = 52500, Bonus = {{"mutex_award",{{"res",2,161500,10000},{"res",1,161500,10000},{"res",3,32300,10000}}}},},
	[LEVEL_22] = { ID = LEVEL_22, Exp = 124000, TotalExp = 381940, Pow = 57500, Bonus = {{"mutex_award",{{"res",2,175700,10000},{"res",1,175700,10000},{"res",3,35200,10000}}}},},
	[LEVEL_23] = { ID = LEVEL_23, Exp = 187000, TotalExp = 568940, Pow = 63000, Bonus = {{"mutex_award",{{"res",2,191300,10000},{"res",1,191300,10000},{"res",3,38300,10000}}}},},
	[LEVEL_24] = { ID = LEVEL_24, Exp = 224000, TotalExp = 792940, Pow = 69000, Bonus = {{"mutex_award",{{"res",2,221300,10000},{"res",1,221300,10000},{"res",3,44300,10000}}}},},
	[LEVEL_25] = { ID = LEVEL_25, Exp = 232000, TotalExp = 1024940, Pow = 75000, Bonus = {{"mutex_award",{{"res",2,235900,10000},{"res",1,235900,10000},{"res",3,47200,10000},{"res",4,11800,10000}}}},},
	[LEVEL_26] = { ID = LEVEL_26, Exp = 237000, TotalExp = 1261940, Pow = 81000, Bonus = {{"mutex_award",{{"res",2,247800,10000},{"res",1,247800,10000},{"res",3,49600,10000},{"res",4,12400,10000}}}},},
	[LEVEL_27] = { ID = LEVEL_27, Exp = 245000, TotalExp = 1506940, Pow = 87500, Bonus = {{"mutex_award",{{"res",2,276200,10000},{"res",1,276200,10000},{"res",3,55300,10000},{"res",4,13900,10000}}}},},
	[LEVEL_28] = { ID = LEVEL_28, Exp = 261000, TotalExp = 1767940, Pow = 94500, Bonus = {{"mutex_award",{{"res",2,308100,10000},{"res",1,308100,10000},{"res",3,61700,10000},{"res",4,15500,10000}}}},},
	[LEVEL_29] = { ID = LEVEL_29, Exp = 267000, TotalExp = 2034940, Pow = 101500, Bonus = {{"mutex_award",{{"res",2,344300,10000},{"res",1,344300,10000},{"res",3,68900,10000},{"res",4,17300,10000}}}},},
	[LEVEL_30] = { ID = LEVEL_30, Exp = 286000, TotalExp = 2320940, Pow = 108500, Bonus = {{"mutex_award",{{"res",2,382500,10000},{"res",1,382500,10000},{"res",3,76500,10000},{"res",4,19200,10000}}}},},
	[LEVEL_31] = { ID = LEVEL_31, Exp = 327000, TotalExp = 2647940, Pow = 116000, Bonus = {{"mutex_award",{{"res",2,405500,10000},{"res",1,405500,10000},{"res",3,81100,10000},{"res",4,20300,10000}}}},},
	[LEVEL_32] = { ID = LEVEL_32, Exp = 381000, TotalExp = 3028940, Pow = 124000, Bonus = {{"mutex_award",{{"res",2,429300,10000},{"res",1,429300,10000},{"res",3,85900,10000},{"res",4,21500,10000}}}},},
	[LEVEL_33] = { ID = LEVEL_33, Exp = 448000, TotalExp = 3476940, Pow = 132000, Bonus = {{"mutex_award",{{"res",2,454700,10000},{"res",1,454700,10000},{"res",3,91000,10000},{"res",4,22800,10000}}}},},
	[LEVEL_34] = { ID = LEVEL_34, Exp = 534000, TotalExp = 4010940, Pow = 140000, Bonus = {{"mutex_award",{{"res",2,481800,10000},{"res",1,481800,10000},{"res",3,96400,10000},{"res",4,24100,10000}}}},},
	[LEVEL_35] = { ID = LEVEL_35, Exp = 578000, TotalExp = 4588940, Pow = 148500, Bonus = {{"mutex_award",{{"res",2,509700,10000},{"res",1,509700,10000},{"res",3,102000,10000},{"res",4,25500,10000}}}},},
	[LEVEL_36] = { ID = LEVEL_36, Exp = 745000, TotalExp = 5333940, Pow = 157500, Bonus = {{"mutex_award",{{"res",2,540300,10000},{"res",1,540300,10000},{"res",3,108100,10000},{"res",4,27100,10000}}}},},
	[LEVEL_37] = { ID = LEVEL_37, Exp = 816000, TotalExp = 6149940, Pow = 166500, Bonus = {{"mutex_award",{{"res",2,571900,10000},{"res",1,571900,10000},{"res",3,114400,10000},{"res",4,28600,10000}}}},},
	[LEVEL_38] = { ID = LEVEL_38, Exp = 959000, TotalExp = 7108940, Pow = 175500, Bonus = {{"mutex_award",{{"res",2,605700,10000},{"res",1,605700,10000},{"res",3,121200,10000},{"res",4,30300,10000}}}},},
	[LEVEL_39] = { ID = LEVEL_39, Exp = 1150000, TotalExp = 8258940, Pow = 185000, Bonus = {{"mutex_award",{{"res",2,641700,10000},{"res",1,641700,10000},{"res",3,128400,10000},{"res",4,32100,10000}}}},},
	[LEVEL_40] = { ID = LEVEL_40, Exp = 1240000, TotalExp = 9498940, Pow = 195000, Bonus = {{"mutex_award",{{"res",2,678800,10000},{"res",1,678800,10000},{"res",3,135800,10000},{"res",4,34000,10000}}}},},
	[LEVEL_41] = { ID = LEVEL_41, Exp = 1600000, TotalExp = 11098940, Pow = 205000, Bonus = {{"mutex_award",{{"res",2,719500,10000},{"res",1,719500,10000},{"res",3,143900,10000},{"res",4,36000,10000}}}},},
	[LEVEL_42] = { ID = LEVEL_42, Exp = 1750000, TotalExp = 12848940, Pow = 215000, Bonus = {{"mutex_award",{{"res",2,769100,10000},{"res",1,769100,10000},{"res",3,153900,10000},{"res",4,38500,10000}}}},},
	[LEVEL_43] = { ID = LEVEL_43, Exp = 2050000, TotalExp = 14898940, Pow = 225500, Bonus = {{"mutex_award",{{"res",2,836400,10000},{"res",1,836400,10000},{"res",3,167300,10000},{"res",4,41900,10000}}}},},
	[LEVEL_44] = { ID = LEVEL_44, Exp = 2450000, TotalExp = 17348940, Pow = 236500, Bonus = {{"mutex_award",{{"res",2,910400,10000},{"res",1,910400,10000},{"res",3,182100,10000},{"res",4,45600,10000}}}},},
	[LEVEL_45] = { ID = LEVEL_45, Exp = 2640000, TotalExp = 19988940, Pow = 247500, Bonus = {{"mutex_award",{{"res",2,987800,10000},{"res",1,987800,10000},{"res",3,197600,10000},{"res",4,49400,10000}}}},},
	[LEVEL_46] = { ID = LEVEL_46, Exp = 3400000, TotalExp = 23388940, Pow = 258500, Bonus = {{"mutex_award",{{"res",2,1076900,10000},{"res",1,1076900,10000},{"res",3,215400,10000},{"res",4,53900,10000}}}},},
	[LEVEL_47] = { ID = LEVEL_47, Exp = 3730000, TotalExp = 27118940, Pow = 270000, Bonus = {{"mutex_award",{{"res",2,1170400,10000},{"res",1,1170400,10000},{"res",3,234100,10000},{"res",4,58600,10000}}}},},
	[LEVEL_48] = { ID = LEVEL_48, Exp = 4380000, TotalExp = 31498940, Pow = 282000, Bonus = {{"mutex_award",{{"res",2,1272800,10000},{"res",1,1272800,10000},{"res",3,254600,10000},{"res",4,63700,10000}}}},},
	[LEVEL_49] = { ID = LEVEL_49, Exp = 4730000, TotalExp = 36228940, Pow = 294000, Bonus = {{"mutex_award",{{"res",2,1385400,10000},{"res",1,1385400,10000},{"res",3,277100,10000},{"res",4,69300,10000}}}},},
	[LEVEL_50] = { ID = LEVEL_50, Exp = 4910000, TotalExp = 41138940, Pow = 306000, Bonus = {{"mutex_award",{{"res",2,1503000,10000},{"res",1,1503000,10000},{"res",3,300600,10000},{"res",4,75200,10000}}}},},
}
