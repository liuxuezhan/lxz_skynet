--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_fake_ply = {

	[NPC_PLY_1504001] = { ID = NPC_PLY_1504001, Lv = 8, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100036, Castle_lv = 5, Propid = 4005, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1026,0,0,0}, Arms = {{4001002,1483},{4002002,1483},{4003002,1483},{4004002,1483}}, Build = {}, Def_value = 5400, Res0 = {{1,26694},{2,26694}}, Res1 = {{1,6674},{2,6674}}, Rages = {{1,33368},{2,33368}},},
	[NPC_PLY_1502002] = { ID = NPC_PLY_1502002, Lv = 10, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100037, Castle_lv = 6, Propid = 2006, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {0,1027,0,0}, Arms = {{2001002,1935},{2002002,1935},{2003002,1935},{2004002,1935}}, Build = {}, Def_value = 5500, Res0 = {{1,31664},{2,31664}}, Res1 = {{1,7916},{2,7916}}, Rages = {{1,39580},{2,39580}},},
	[NPC_PLY_1501003] = { ID = NPC_PLY_1501003, Lv = 12, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100038, Castle_lv = 7, Propid = 1007, Photo = 5, Genius = nil, Tech = nil, Equip = nil, Hero = {0,0,1028,0}, Arms = {{1001003,1860},{1002003,1860},{1003003,1860},{1004003,1860}}, Build = {}, Def_value = 5600, Res0 = {{1,27900},{2,27900}}, Res1 = {{1,6975},{2,6975}}, Rages = {{1,34875},{2,34875}},},
	[NPC_PLY_1503004] = { ID = NPC_PLY_1503004, Lv = 13, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100039, Castle_lv = 8, Propid = 3008, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {0,0,0,1029}, Arms = {{3001003,2650},{3002003,2650},{3003003,2650},{3004003,2650}}, Build = {}, Def_value = 5700, Res0 = {{1,36692},{2,36692}}, Res1 = {{1,9173},{2,9173}}, Rages = {{1,45865},{2,45865}},},
	[NPC_PLY_1501005] = { ID = NPC_PLY_1501005, Lv = 15, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100030, Castle_lv = 9, Propid = 1009, Photo = 5, Genius = nil, Tech = nil, Equip = nil, Hero = {1030,0,1031,0}, Arms = {{1001003,3432},{1002003,3432},{1003003,3432},{1004003,3432}}, Build = {}, Def_value = 5800, Res0 = {{1,44126},{2,44126}}, Res1 = {{1,11031},{2,11031}}, Rages = {{1,55157},{2,55157}},},
	[NPC_PLY_1503006] = { ID = NPC_PLY_1503006, Lv = 17, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100033, Castle_lv = 10, Propid = 3010, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {0,1032,0,1033}, Arms = {{3001004,3554},{3002004,3554},{3003004,3554},{3004004,3554}}, Build = {}, Def_value = 5900, Res0 = {{1,30959},{2,30959},{3,6192}}, Res1 = {{1,7740},{2,7740},{3,1548}}, Rages = {{1,38699},{2,38699},{3,7740}},},
	[NPC_PLY_1502007] = { ID = NPC_PLY_1502007, Lv = 18, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100034, Castle_lv = 11, Propid = 2011, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {0,1034,1035,0}, Arms = {{2001004,4512},{2002004,4512},{2003004,4512},{2004004,4512}}, Build = {}, Def_value = 6050, Res0 = {{1,36848},{2,36848},{3,7370}}, Res1 = {{1,9212},{2,9212},{3,1842}}, Rages = {{1,46060},{2,46060},{3,9212}},},
	[NPC_PLY_1504008] = { ID = NPC_PLY_1504008, Lv = 20, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100035, Castle_lv = 12, Propid = 4012, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1036,0,0,1037}, Arms = {{4001004,5534},{4002004,5534},{4003004,5534},{4004004,5534}}, Build = {}, Def_value = 6200, Res0 = {{1,42536},{2,42536},{3,8507}}, Res1 = {{1,10634},{2,10634},{3,2127}}, Rages = {{1,53170},{2,53170},{3,10634}},},
	[NPC_PLY_1501009] = { ID = NPC_PLY_1501009, Lv = 22, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100020, Castle_lv = 13, Propid = 1013, Photo = 5, Genius = nil, Tech = nil, Equip = nil, Hero = {1038,1039,1040,0}, Arms = {{1001005,5610},{1002005,5610},{1003005,5610},{1004005,5610}}, Build = {}, Def_value = 6350, Res0 = {{1,40725},{2,40725},{3,8145}}, Res1 = {{1,10181},{2,10181},{3,2036}}, Rages = {{1,50906},{2,50906},{3,10181}},},
	[NPC_PLY_1503010] = { ID = NPC_PLY_1503010, Lv = 23, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100023, Castle_lv = 14, Propid = 3014, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1041,1042,0,1043}, Arms = {{3001005,7686},{3002005,7686},{3003005,7686},{3004005,7686}}, Build = {}, Def_value = 6500, Res0 = {{1,52858},{2,52858},{3,10572}}, Res1 = {{1,13215},{2,13215},{3,2643}}, Rages = {{1,66073},{2,66073},{3,13215}},},
	[NPC_PLY_1503011] = { ID = NPC_PLY_1503011, Lv = 25, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100024, Castle_lv = 15, Propid = 3015, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1044,0,1045,1046}, Arms = {{3001005,9450},{3002005,9450},{3003005,9450},{3004005,9450}}, Build = {}, Def_value = 6650, Res0 = {{1,46305},{2,46305},{3,9261},{4,2315}}, Res1 = {{1,11576},{2,11576},{3,2315},{4,579}}, Rages = {{1,57881},{2,57881},{3,11576},{4,2894}},},
	[NPC_PLY_1502012] = { ID = NPC_PLY_1502012, Lv = 27, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100027, Castle_lv = 16, Propid = 2016, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {0,1047,1048,1049}, Arms = {{2001006,8534},{2002006,8534},{2003006,8534},{2004006,8534}}, Build = {}, Def_value = 6800, Res0 = {{1,41817},{2,41817},{3,8363},{4,2091}}, Res1 = {{1,10454},{2,10454},{3,2091},{4,523}}, Rages = {{1,52271},{2,52271},{3,10454},{4,2614}},},
	[NPC_PLY_1504013] = { ID = NPC_PLY_1504013, Lv = 28, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100028, Castle_lv = 17, Propid = 4017, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1050,1051,1052,0}, Arms = {{4001006,9994},{4002006,9994},{4003006,9994},{4004006,9994}}, Build = {}, Def_value = 6950, Res0 = {{1,48970},{2,48970},{3,9794},{4,2449}}, Res1 = {{1,12243},{2,12243},{3,2449},{4,612}}, Rages = {{1,61213},{2,61213},{3,12243},{4,3061}},},
	[NPC_PLY_1504014] = { ID = NPC_PLY_1504014, Lv = 30, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100029, Castle_lv = 18, Propid = 4018, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1053,1054,0,1055}, Arms = {{4001006,11110},{4002006,11110},{4003006,11110},{4004006,11110}}, Build = {}, Def_value = 7100, Res0 = {{1,54439},{2,54439},{3,10888},{4,2722}}, Res1 = {{1,13610},{2,13610},{3,2722},{4,680}}, Rages = {{1,68049},{2,68049},{3,13610},{4,3402}},},
	[NPC_PLY_1501015] = { ID = NPC_PLY_1501015, Lv = 32, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100001, Castle_lv = 19, Propid = 1019, Photo = 5, Genius = nil, Tech = nil, Equip = nil, Hero = {1056,1057,1058,1059}, Arms = {{1001007,10032},{1002007,10032},{1003007,10032},{1004007,10032}}, Build = {}, Def_value = 7250, Res0 = {{1,53170},{2,53170},{3,10634},{4,2658}}, Res1 = {{1,13292},{2,13292},{3,2658},{4,665}}, Rages = {{1,66462},{2,66462},{3,13292},{4,3323}},},
	[NPC_PLY_1503016] = { ID = NPC_PLY_1503016, Lv = 33, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100009, Castle_lv = 20, Propid = 3020, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1060,1061,1062,1063}, Arms = {{3001007,11598},{3002007,11598},{3003007,11598},{3004007,11598}}, Build = {}, Def_value = 7400, Res0 = {{1,61470},{2,61470},{3,12294},{4,3074}}, Res1 = {{1,15367},{2,15367},{3,3073},{4,768}}, Rages = {{1,76837},{2,76837},{3,15367},{4,3842}},},
	[NPC_PLY_1503017] = { ID = NPC_PLY_1503017, Lv = 35, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100010, Castle_lv = 21, Propid = 3021, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1064,1065,1066,1067}, Arms = {{3001007,13222},{3002007,13222},{3003007,13222},{3004007,13222}}, Build = {}, Def_value = 7600, Res0 = {{1,70077},{2,70077},{3,14015},{4,3504}}, Res1 = {{1,17519},{2,17519},{3,3504},{4,876}}, Rages = {{1,87596},{2,87596},{3,17519},{4,4380}},},
	[NPC_PLY_1503018] = { ID = NPC_PLY_1503018, Lv = 37, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100012, Castle_lv = 22, Propid = 3022, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1068,1069,1070,1071}, Arms = {{3001008,12071},{3002008,12071},{3003008,12071},{3004008,12071}}, Build = {}, Def_value = 7800, Res0 = {{1,63976},{2,63976},{3,12795},{4,3199}}, Res1 = {{1,15994},{2,15994},{3,3199},{4,800}}, Rages = {{1,79970},{2,79970},{3,15994},{4,3999}},},
	[NPC_PLY_1503019] = { ID = NPC_PLY_1503019, Lv = 38, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100013, Castle_lv = 23, Propid = 3023, Photo = 7, Genius = nil, Tech = nil, Equip = nil, Hero = {1072,1073,1074,1075}, Arms = {{3001008,13912},{3002008,13912},{3003008,13912},{3004008,13912}}, Build = {}, Def_value = 8000, Res0 = {{1,73734},{2,73734},{3,14746},{4,3686}}, Res1 = {{1,18433},{2,18433},{3,3687},{4,922}}, Rages = {{1,92167},{2,92167},{3,18433},{4,4608}},},
	[NPC_PLY_1502020] = { ID = NPC_PLY_1502020, Lv = 40, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100015, Castle_lv = 24, Propid = 2024, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {1076,1077,1078,1079}, Arms = {{2001008,15913},{2002008,15913},{2003008,15913},{2004008,15913}}, Build = {}, Def_value = 8200, Res0 = {{1,84339},{2,84339},{3,16868},{4,4217}}, Res1 = {{1,21085},{2,21085},{3,4217},{4,1054}}, Rages = {{1,105424},{2,105424},{3,21085},{4,5271}},},
	[NPC_PLY_1502021] = { ID = NPC_PLY_1502021, Lv = 42, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100047, Castle_lv = 25, Propid = 2025, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {1080,1081,1082,1083}, Arms = {{2001008,16747},{2002008,16747},{2003008,16747},{2004008,16747}}, Build = {}, Def_value = 8400, Res0 = {{1,88759},{2,88759},{3,17752},{4,4438}}, Res1 = {{1,22190},{2,22190},{3,4438},{4,1109}}, Rages = {{1,110949},{2,110949},{3,22190},{4,5547}},},
	[NPC_PLY_1504022] = { ID = NPC_PLY_1504022, Lv = 43, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100019, Castle_lv = 26, Propid = 4026, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1084,1085,1086,1087}, Arms = {{4001009,14830},{4002009,14830},{4003009,14830},{4004009,14830}}, Build = {}, Def_value = 8600, Res0 = {{1,84531},{2,84531},{3,16906},{4,4226}}, Res1 = {{1,21133},{2,21133},{3,4227},{4,1057}}, Rages = {{1,105664},{2,105664},{3,21133},{4,5283}},},
	[NPC_PLY_1502023] = { ID = NPC_PLY_1502023, Lv = 45, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100017, Castle_lv = 27, Propid = 2027, Photo = 2, Genius = nil, Tech = nil, Equip = nil, Hero = {1088,1089,1090,1091}, Arms = {{2001009,18125},{2002009,18125},{2003009,18125},{2004009,18125}}, Build = {}, Def_value = 8800, Res0 = {{1,103313},{2,103313},{3,20662},{4,5166}}, Res1 = {{1,25828},{2,25828},{3,5166},{4,1291}}, Rages = {{1,129141},{2,129141},{3,25828},{4,6457}},},
	[NPC_PLY_1504024] = { ID = NPC_PLY_1504024, Lv = 47, Ualias = nil, Name = LG_HERO_BASIC_NAME_111100018, Castle_lv = 28, Propid = 4028, Photo = 8, Genius = nil, Tech = nil, Equip = nil, Hero = {1092,1093,1094,1095}, Arms = {{4001009,19138},{4002009,19138},{4003009,19138},{4004009,19138}}, Build = {}, Def_value = 9000, Res0 = {{1,109086},{2,109086},{3,21818},{4,5454}}, Res1 = {{1,27272},{2,27272},{3,5454},{4,1364}}, Rages = {{1,136358},{2,136358},{3,27272},{4,6818}},},
}
