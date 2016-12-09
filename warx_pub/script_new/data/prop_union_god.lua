--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_union_god = {

	[UNION_GOD_1000] = { ID = UNION_GOD_1000, Mode = 1, Lv = 0, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = nil, Effect = {}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1001] = { ID = UNION_GOD_1001, Mode = 1, Lv = 1, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = 1300, Effect = {CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1002] = { ID = UNION_GOD_1002, Mode = 1, Lv = 2, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014014,1,10000}}}}, Exp = 1700, Effect = {CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1003] = { ID = UNION_GOD_1003, Mode = 1, Lv = 3, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014015,1,10000}}}}, Exp = 3400, Effect = {CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1004] = { ID = UNION_GOD_1004, Mode = 1, Lv = 4, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014016,1,10000}}}}, Exp = 5100, Effect = {CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1005] = { ID = UNION_GOD_1005, Mode = 1, Lv = 5, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014017,1,10000}}}}, Exp = 6800, Effect = {CountMember_A=5,SpeedTech_R=50}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1006] = { ID = UNION_GOD_1006, Mode = 1, Lv = 6, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014018,1,10000}}}}, Exp = 8500, Effect = {CountMember_A=5,SpeedTech_R=50}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1007] = { ID = UNION_GOD_1007, Mode = 1, Lv = 7, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014019,1,10000}}}}, Exp = 10200, Effect = {CountMember_A=5,SpeedTech_R=50}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1008] = { ID = UNION_GOD_1008, Mode = 1, Lv = 8, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014020,1,10000}}}}, Exp = 11900, Effect = {CountMember_A=5,SpeedTech_R=50}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1009] = { ID = UNION_GOD_1009, Mode = 1, Lv = 9, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014021,1,10000}}}}, Exp = 13600, Effect = {CountMember_A=5,SpeedTech_R=50,CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_1010] = { ID = UNION_GOD_1010, Mode = 1, Lv = 10, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014022,1,10000}}}}, Exp = 14100, Effect = {CountMember_A=5,SpeedTech_R=50,CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100000, Miracal = LG_MIRACAL_NAME_162030001,},
	[UNION_GOD_2000] = { ID = UNION_GOD_2000, Mode = 2, Lv = 0, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = nil, Effect = {}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2001] = { ID = UNION_GOD_2001, Mode = 2, Lv = 1, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = 1300, Effect = {CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2002] = { ID = UNION_GOD_2002, Mode = 2, Lv = 2, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014014,1,10000}}}}, Exp = 1700, Effect = {CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2003] = { ID = UNION_GOD_2003, Mode = 2, Lv = 3, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014015,1,10000}}}}, Exp = 3400, Effect = {CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2004] = { ID = UNION_GOD_2004, Mode = 2, Lv = 4, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014016,1,10000}}}}, Exp = 5100, Effect = {CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2005] = { ID = UNION_GOD_2005, Mode = 2, Lv = 5, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014017,1,10000}}}}, Exp = 6800, Effect = {CountRelief_A=10000,CountUnionStore_A=20000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2006] = { ID = UNION_GOD_2006, Mode = 2, Lv = 6, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014018,1,10000}}}}, Exp = 8500, Effect = {CountRelief_A=10000,CountUnionStore_A=20000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2007] = { ID = UNION_GOD_2007, Mode = 2, Lv = 7, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014019,1,10000}}}}, Exp = 10200, Effect = {CountRelief_A=10000,CountUnionStore_A=20000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2008] = { ID = UNION_GOD_2008, Mode = 2, Lv = 8, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014020,1,10000}}}}, Exp = 11900, Effect = {CountRelief_A=10000,CountUnionStore_A=20000}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_2009] = { ID = UNION_GOD_2009, Mode = 2, Lv = 9, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014021,1,10000}}}}, Exp = 13600, Effect = {CountRelief_A=10000,CountUnionStore_A=20000,CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_3010] = { ID = UNION_GOD_3010, Mode = 2, Lv = 10, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014022,1,10000}}}}, Exp = 14100, Effect = {CountRelief_A=10000,CountUnionStore_A=20000,CountMember_A=5}, Name = LG_HERO_BASIC_NAME_111100017, Miracal = LG_MIRACAL_NAME_162030003,},
	[UNION_GOD_3000] = { ID = UNION_GOD_3000, Mode = 3, Lv = 0, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = nil, Effect = {}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3001] = { ID = UNION_GOD_3001, Mode = 3, Lv = 1, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = 1300, Effect = {CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3002] = { ID = UNION_GOD_3002, Mode = 3, Lv = 2, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014014,1,10000}}}}, Exp = 1700, Effect = {CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3003] = { ID = UNION_GOD_3003, Mode = 3, Lv = 3, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014015,1,10000}}}}, Exp = 3400, Effect = {CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3004] = { ID = UNION_GOD_3004, Mode = 3, Lv = 4, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014016,1,10000}}}}, Exp = 5100, Effect = {CountRallySoldier_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3005] = { ID = UNION_GOD_3005, Mode = 3, Lv = 5, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014017,1,10000}}}}, Exp = 6800, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3006] = { ID = UNION_GOD_3006, Mode = 3, Lv = 6, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014018,1,10000}}}}, Exp = 8500, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3007] = { ID = UNION_GOD_3007, Mode = 3, Lv = 7, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014019,1,10000}}}}, Exp = 10200, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3008] = { ID = UNION_GOD_3008, Mode = 3, Lv = 8, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014020,1,10000}}}}, Exp = 11900, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3009] = { ID = UNION_GOD_3009, Mode = 3, Lv = 9, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014021,1,10000}}}}, Exp = 13600, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50,CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_3010] = { ID = UNION_GOD_3010, Mode = 3, Lv = 10, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014022,1,10000}}}}, Exp = 14100, Effect = {CountRallySoldier_A=10000,SpeedBuild_R=50,CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100013, Miracal = LG_MIRACAL_NAME_162030002,},
	[UNION_GOD_4000] = { ID = UNION_GOD_4000, Mode = 4, Lv = 0, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = nil, Effect = {}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4001] = { ID = UNION_GOD_4001, Mode = 4, Lv = 1, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014013,1,10000}}}}, Exp = 1300, Effect = {CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4002] = { ID = UNION_GOD_4002, Mode = 4, Lv = 2, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014004,1,10000}}},{"mutex_award",{{"item",2014007,1,10000}}},{"mutex_award",{{"item",2014010,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014014,1,10000}}}}, Exp = 1700, Effect = {CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4003] = { ID = UNION_GOD_4003, Mode = 4, Lv = 3, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014015,1,10000}}}}, Exp = 3400, Effect = {CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4004] = { ID = UNION_GOD_4004, Mode = 4, Lv = 4, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014005,1,10000}}},{"mutex_award",{{"item",2014008,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014016,1,10000}}}}, Exp = 5100, Effect = {CountGarrison_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4005] = { ID = UNION_GOD_4005, Mode = 4, Lv = 5, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014011,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014017,1,10000}}}}, Exp = 6800, Effect = {CountGarrison_A=10000,TimeHelp_A=5}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4006] = { ID = UNION_GOD_4006, Mode = 4, Lv = 6, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014018,1,10000}}}}, Exp = 8500, Effect = {CountGarrison_A=10000,TimeHelp_A=5}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4007] = { ID = UNION_GOD_4007, Mode = 4, Lv = 7, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014019,1,10000}}}}, Exp = 10200, Effect = {CountGarrison_A=10000,TimeHelp_A=5}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4008] = { ID = UNION_GOD_4008, Mode = 4, Lv = 8, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014020,1,10000}}}}, Exp = 11900, Effect = {CountGarrison_A=10000,TimeHelp_A=5}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4009] = { ID = UNION_GOD_4009, Mode = 4, Lv = 9, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014021,1,10000}}}}, Exp = 13600, Effect = {CountGarrison_A=10000,TimeHelp_A=5,CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
	[UNION_GOD_4010] = { ID = UNION_GOD_4010, Mode = 4, Lv = 10, Cons = {{8,3000},{6,50},{6,200}}, WorshipItem = {{"mutex_award",{{"item",2014006,1,10000}}},{"mutex_award",{{"item",2014009,1,10000}}},{"mutex_award",{{"item",2014012,1,10000}}}}, UpgradeItem = {{"mutex_award",{{"item",2014022,1,10000}}}}, Exp = 14100, Effect = {CountGarrison_A=10000,TimeHelp_A=5,CountRelief_A=10000}, Name = LG_HERO_BASIC_NAME_111100019, Miracal = LG_MIRACAL_NAME_162030004,},
}
