--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_union_buildlv = {

	[UNION_BUILD_CASTLE_LEVEL_0] = { ID = UNION_BUILD_CASTLE_LEVEL_0, Mode = 1, Lv = 0, Mul = 1, UpExp = 0, DonateExp = 0, BonusID = nil, East = nil, West = nil, South = nil, North = nil,},
	[UNION_BUILD_CASTLE_LEVEL_1] = { ID = UNION_BUILD_CASTLE_LEVEL_1, Mode = 1, Lv = 1, Mul = 1, UpExp = 500, DonateExp = 10, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020001,1,10000}}}}, East = {{"item",7001001,10,10000}}, West = {{"item",7004001,10,10000}}, South = {{"item",7003001,10,10000}}, North = {{"item",7002001,10,10000}},},
	[UNION_BUILD_CASTLE_LEVEL_2] = { ID = UNION_BUILD_CASTLE_LEVEL_2, Mode = 1, Lv = 2, Mul = 1, UpExp = 1000, DonateExp = 15, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020002,1,10000}}}}, East = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, West = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, South = {{"item",7001001,10,5000},{"item",7003001,10,5000}}, North = {{"item",7002001,10,5000},{"item",7004001,10,5000}},},
	[UNION_BUILD_CASTLE_LEVEL_3] = { ID = UNION_BUILD_CASTLE_LEVEL_3, Mode = 1, Lv = 3, Mul = 1, UpExp = 6000, DonateExp = 20, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020003,1,10000}}}}, East = {{"item",7001002,3,2500},{"item",7001001,10,2500},{"item",7002002,3,2500},{"item",7002001,10,2500}}, West = {{"item",7003002,3,2500},{"item",7003001,10,2500},{"item",7004002,3,2500},{"item",7004001,10,2500}}, South = {{"item",7001002,3,2500},{"item",7001001,10,2500},{"item",7003002,3,2500},{"item",7003001,10,2500}}, North = {{"item",7002002,3,2500},{"item",7002001,10,2500},{"item",7004002,3,2500},{"item",7004001,10,2500}},},
	[UNION_BUILD_CASTLE_LEVEL_4] = { ID = UNION_BUILD_CASTLE_LEVEL_4, Mode = 1, Lv = 4, Mul = 1, UpExp = 16000, DonateExp = 25, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020004,1,10000}}}}, East = {{"item",7001003,1,1667},{"item",7001002,4,1667},{"item",7001001,15,1666},{"item",7002003,1,1667},{"item",7002002,4,1667},{"item",7002001,15,1666}}, West = {{"item",7003003,1,1667},{"item",7003002,4,1667},{"item",7003001,15,1666},{"item",7004003,1,1667},{"item",7004002,4,1667},{"item",7004001,15,1666}}, South = {{"item",7001003,1,1667},{"item",7001002,4,1667},{"item",7001001,15,1666},{"item",7003003,1,1667},{"item",7003002,4,1667},{"item",7003001,15,1666}}, North = {{"item",7002003,1,1667},{"item",7002002,4,1667},{"item",7002001,15,1666},{"item",7004003,1,1667},{"item",7004002,4,1667},{"item",7004001,15,1666}},},
	[UNION_BUILD_CASTLE_LEVEL_5] = { ID = UNION_BUILD_CASTLE_LEVEL_5, Mode = 1, Lv = 5, Mul = 1, UpExp = 40000, DonateExp = 30, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020005,1,10000}}}}, East = {{"item",7001003,2,1500},{"item",7001002,5,1500},{"item",7001001,20,1500},{"item",7002003,2,1500},{"item",7002002,5,1500},{"item",7002001,20,1500},{"item",7003001,20,1000}}, West = {{"item",7002001,20,1000},{"item",7003003,2,1500},{"item",7003002,5,1500},{"item",7003001,20,1500},{"item",7004003,2,1500},{"item",7004002,5,1500},{"item",7004001,20,1500}}, South = {{"item",7001003,2,1500},{"item",7001002,5,1500},{"item",7001001,20,1500},{"item",7003003,2,1500},{"item",7003002,5,1500},{"item",7003001,20,1500},{"item",7004001,20,1000}}, North = {{"item",7001001,20,1000},{"item",7002003,2,1500},{"item",7002002,5,1500},{"item",7002001,20,1500},{"item",7004003,2,1500},{"item",7004002,5,1500},{"item",7004001,20,1500}},},
	[UNION_BUILD_CASTLE_LEVEL_6] = { ID = UNION_BUILD_CASTLE_LEVEL_6, Mode = 1, Lv = 6, Mul = 1, UpExp = 96000, DonateExp = 35, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020006,1,10000}}}}, East = {{"item",7001003,4,1250},{"item",7001002,10,1250},{"item",7001001,40,1250},{"item",7002003,4,1250},{"item",7002002,10,1250},{"item",7002001,40,1250},{"item",7003002,10,1250},{"item",7003001,40,1250}}, West = {{"item",7002002,10,1250},{"item",7002001,40,1250},{"item",7003003,4,1250},{"item",7003002,10,1250},{"item",7003001,40,1250},{"item",7004003,4,1250},{"item",7004002,10,1250},{"item",7004001,40,1250}}, South = {{"item",7001003,4,1250},{"item",7001002,10,1250},{"item",7001001,40,1250},{"item",7003003,4,1250},{"item",7003002,10,1250},{"item",7003001,40,1250},{"item",7004002,10,1250},{"item",7004001,40,1250}}, North = {{"item",7001002,10,1250},{"item",7001001,40,1250},{"item",7002003,4,1250},{"item",7002002,10,1250},{"item",7002001,40,1250},{"item",7004003,4,1250},{"item",7004002,10,1250},{"item",7004001,40,1250}},},
	[UNION_BUILD_CASTLE_LEVEL_7] = { ID = UNION_BUILD_CASTLE_LEVEL_7, Mode = 1, Lv = 7, Mul = 1, UpExp = 224000, DonateExp = 40, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020007,1,10000}}}}, East = {{"item",7001003,6,1111},{"item",7001002,20,1111},{"item",7001001,60,1112},{"item",7002003,6,1111},{"item",7002002,20,1111},{"item",7002001,60,1111},{"item",7003003,6,1111},{"item",7003002,20,1111},{"item",7003001,60,1111}}, West = {{"item",7002003,6,1111},{"item",7002002,20,1111},{"item",7002001,60,1111},{"item",7003003,6,1111},{"item",7003002,20,1111},{"item",7003001,60,1111},{"item",7004003,6,1111},{"item",7004002,20,1111},{"item",7004001,60,1112}}, South = {{"item",7001003,6,1111},{"item",7001002,20,1111},{"item",7001001,60,1111},{"item",7003003,6,1111},{"item",7003002,20,1111},{"item",7003001,60,1112},{"item",7004003,6,1111},{"item",7004002,20,1111},{"item",7004001,60,1111}}, North = {{"item",7001003,6,1111},{"item",7001002,20,1111},{"item",7001001,60,1111},{"item",7002003,6,1111},{"item",7002002,20,1111},{"item",7002001,60,1112},{"item",7004003,6,1111},{"item",7004002,20,1111},{"item",7004001,60,1111}},},
	[UNION_BUILD_CASTLE_LEVEL_8] = { ID = UNION_BUILD_CASTLE_LEVEL_8, Mode = 1, Lv = 8, Mul = 1, UpExp = 512000, DonateExp = 45, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020008,1,10000}}}}, East = {{"item",7001003,10,1000},{"item",7001002,30,1000},{"item",7001001,80,1000},{"item",7002003,10,1000},{"item",7002002,30,1000},{"item",7002001,80,1000},{"item",7003003,10,1000},{"item",7003002,30,1000},{"item",7003001,80,1000},{"item",7004001,80,1000}}, West = {{"item",7001003,10,1000},{"item",7001002,30,1000},{"item",7001001,80,1000},{"item",7002003,10,1000},{"item",7002002,30,1000},{"item",7002001,80,1000},{"item",7003001,80,1000},{"item",7004003,10,1000},{"item",7004002,30,1000},{"item",7004001,80,1000}}, South = {{"item",7001003,10,1000},{"item",7001002,30,1000},{"item",7001001,80,1000},{"item",7002001,80,1000},{"item",7003003,10,1000},{"item",7003002,30,1000},{"item",7003001,80,1000},{"item",7004003,10,1000},{"item",7004002,30,1000},{"item",7004001,80,1000}}, North = {{"item",7001003,10,1000},{"item",7001002,30,1000},{"item",7001001,80,1000},{"item",7002003,10,1000},{"item",7002002,30,1000},{"item",7002001,80,1000},{"item",7003001,80,1000},{"item",7004003,10,1000},{"item",7004002,30,1000},{"item",7004001,80,1000}},},
	[UNION_BUILD_CASTLE_LEVEL_9] = { ID = UNION_BUILD_CASTLE_LEVEL_9, Mode = 1, Lv = 9, Mul = 1, UpExp = 1152000, DonateExp = 50, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020009,1,10000}}}}, East = {{"item",7001003,15,910},{"item",7001002,40,910},{"item",7001001,100,910},{"item",7002003,15,910},{"item",7002002,40,910},{"item",7002001,100,910},{"item",7003003,15,910},{"item",7003002,40,910},{"item",7003001,100,910},{"item",7004002,40,900},{"item",7004001,100,910}}, West = {{"item",7001003,15,910},{"item",7001002,40,910},{"item",7001001,100,910},{"item",7002003,15,910},{"item",7002002,40,910},{"item",7002001,100,910},{"item",7003002,40,900},{"item",7003001,100,910},{"item",7004003,15,910},{"item",7004002,40,910},{"item",7004001,100,910}}, South = {{"item",7001003,15,910},{"item",7001002,40,910},{"item",7001001,100,910},{"item",7002002,40,900},{"item",7002001,100,910},{"item",7003003,15,910},{"item",7003002,40,910},{"item",7003001,100,910},{"item",7004003,15,910},{"item",7004002,40,910},{"item",7004001,100,910}}, North = {{"item",7001003,15,910},{"item",7001002,40,910},{"item",7001001,100,910},{"item",7002003,15,910},{"item",7002002,40,910},{"item",7002001,100,910},{"item",7003002,40,900},{"item",7003001,100,910},{"item",7004003,15,910},{"item",7004002,40,910},{"item",7004001,100,910}},},
	[UNION_BUILD_CASTLE_LEVEL_10] = { ID = UNION_BUILD_CASTLE_LEVEL_10, Mode = 1, Lv = 10, Mul = 1, UpExp = 2560000, DonateExp = 55, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020010,1,10000}}}}, East = {{"item",7001003,20,833},{"item",7001002,50,833},{"item",7001001,150,834},{"item",7002003,20,833},{"item",7002002,50,833},{"item",7002001,150,834},{"item",7003003,20,833},{"item",7003002,50,833},{"item",7003001,150,834},{"item",7004003,20,833},{"item",7004002,50,833},{"item",7004001,150,834}}, West = {{"item",7001003,20,833},{"item",7001002,50,833},{"item",7001001,150,834},{"item",7002003,20,833},{"item",7002002,50,833},{"item",7002001,150,834},{"item",7003003,20,833},{"item",7003002,50,833},{"item",7003001,150,834},{"item",7004003,20,833},{"item",7004002,50,833},{"item",7004001,150,834}}, South = {{"item",7001003,20,833},{"item",7001002,50,833},{"item",7001001,150,834},{"item",7002003,20,833},{"item",7002002,50,833},{"item",7002001,150,834},{"item",7003003,20,833},{"item",7003002,50,833},{"item",7003001,150,834},{"item",7004003,20,833},{"item",7004002,50,833},{"item",7004001,150,834}}, North = {{"item",7001003,20,833},{"item",7001002,50,833},{"item",7001001,150,834},{"item",7002003,20,833},{"item",7002002,50,833},{"item",7002001,150,834},{"item",7003003,20,833},{"item",7003002,50,833},{"item",7003001,150,834},{"item",7004003,20,833},{"item",7004002,50,833},{"item",7004001,150,834}},},
	[UNION_BUILD_STORE_LEVEL_0] = { ID = UNION_BUILD_STORE_LEVEL_0, Mode = 2, Lv = 0, Mul = 1, UpExp = 0, DonateExp = 0, BonusID = nil, East = nil, West = nil, South = nil, North = nil,},
	[UNION_BUILD_STORE_LEVEL_1] = { ID = UNION_BUILD_STORE_LEVEL_1, Mode = 2, Lv = 1, Mul = 1, UpExp = 500, DonateExp = 10, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020001,1,10000}}}}, East = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, West = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, South = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, North = {{"item",7001001,10,5000},{"item",7002001,10,5000}},},
	[UNION_BUILD_STORE_LEVEL_2] = { ID = UNION_BUILD_STORE_LEVEL_2, Mode = 2, Lv = 2, Mul = 1, UpExp = 1000, DonateExp = 15, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020002,1,10000}}}}, East = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, West = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, South = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, North = {{"item",7001001,10,5000},{"item",7002001,10,5000}},},
	[UNION_BUILD_STORE_LEVEL_3] = { ID = UNION_BUILD_STORE_LEVEL_3, Mode = 2, Lv = 3, Mul = 1, UpExp = 6000, DonateExp = 20, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020003,1,10000}}}}, East = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, West = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, South = {{"item",7001001,10,5000},{"item",7002001,10,5000}}, North = {{"item",7001001,10,5000},{"item",7002001,10,5000}},},
	[UNION_BUILD_STORE_LEVEL_4] = { ID = UNION_BUILD_STORE_LEVEL_4, Mode = 2, Lv = 4, Mul = 1, UpExp = 16000, DonateExp = 25, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020004,1,10000}}}}, East = {{"item",7001002,4,2500},{"item",7001001,15,2500},{"item",7002002,4,2500},{"item",7002001,15,2500}}, West = {{"item",7001002,4,2500},{"item",7001001,15,2500},{"item",7002002,4,2500},{"item",7002001,15,2500}}, South = {{"item",7001002,4,2500},{"item",7001001,15,2500},{"item",7002002,4,2500},{"item",7002001,15,2500}}, North = {{"item",7001002,4,2500},{"item",7001001,15,2500},{"item",7002002,4,2500},{"item",7002001,15,2500}},},
	[UNION_BUILD_STORE_LEVEL_5] = { ID = UNION_BUILD_STORE_LEVEL_5, Mode = 2, Lv = 5, Mul = 1, UpExp = 40000, DonateExp = 30, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020005,1,10000}}}}, East = {{"item",7001002,5,2500},{"item",7001001,20,2500},{"item",7002002,5,2500},{"item",7002001,20,2500}}, West = {{"item",7001002,5,2500},{"item",7001001,20,2500},{"item",7002002,5,2500},{"item",7002001,20,2500}}, South = {{"item",7001002,5,2500},{"item",7001001,20,2500},{"item",7002002,5,2500},{"item",7002001,20,2500}}, North = {{"item",7001002,5,2500},{"item",7001001,20,2500},{"item",7002002,5,2500},{"item",7002001,20,2500}},},
	[UNION_BUILD_STORE_LEVEL_6] = { ID = UNION_BUILD_STORE_LEVEL_6, Mode = 2, Lv = 6, Mul = 1, UpExp = 96000, DonateExp = 35, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020006,1,10000}}}}, East = {{"item",7001003,4,1666},{"item",7001002,10,1667},{"item",7001001,40,1667},{"item",7002003,4,1666},{"item",7002002,10,1667},{"item",7002001,40,1667}}, West = {{"item",7001003,4,1666},{"item",7001002,10,1667},{"item",7001001,40,1667},{"item",7002003,4,1666},{"item",7002002,10,1667},{"item",7002001,40,1667}}, South = {{"item",7001003,4,1666},{"item",7001002,10,1667},{"item",7001001,40,1667},{"item",7002003,4,1666},{"item",7002002,10,1667},{"item",7002001,40,1667}}, North = {{"item",7001003,4,1666},{"item",7001002,10,1667},{"item",7001001,40,1667},{"item",7002003,4,1666},{"item",7002002,10,1667},{"item",7002001,40,1667}},},
	[UNION_BUILD_STORE_LEVEL_7] = { ID = UNION_BUILD_STORE_LEVEL_7, Mode = 2, Lv = 7, Mul = 1, UpExp = 224000, DonateExp = 40, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020007,1,10000}}}}, East = {{"item",7001003,6,1666},{"item",7001002,20,1667},{"item",7001001,60,1667},{"item",7002003,6,1666},{"item",7002002,20,1667},{"item",7002001,60,1667}}, West = {{"item",7001003,6,1666},{"item",7001002,20,1667},{"item",7001001,60,1667},{"item",7002003,6,1666},{"item",7002002,20,1667},{"item",7002001,60,1667}}, South = {{"item",7001003,6,1666},{"item",7001002,20,1667},{"item",7001001,60,1667},{"item",7002003,6,1666},{"item",7002002,20,1667},{"item",7002001,60,1667}}, North = {{"item",7001003,6,1666},{"item",7001002,20,1667},{"item",7001001,60,1667},{"item",7002003,6,1666},{"item",7002002,20,1667},{"item",7002001,60,1667}},},
	[UNION_BUILD_STORE_LEVEL_8] = { ID = UNION_BUILD_STORE_LEVEL_8, Mode = 2, Lv = 8, Mul = 1, UpExp = 512000, DonateExp = 45, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020008,1,10000}}}}, East = {{"item",7001003,10,2500},{"item",7001002,30,2500},{"item",7002003,10,2500},{"item",7002002,30,2500}}, West = {{"item",7001003,10,2500},{"item",7001002,30,2500},{"item",7002003,10,2500},{"item",7002002,30,2500}}, South = {{"item",7001003,10,2500},{"item",7001002,30,2500},{"item",7002003,10,2500},{"item",7002002,30,2500}}, North = {{"item",7001003,10,2500},{"item",7001002,30,2500},{"item",7002003,10,2500},{"item",7002002,30,2500}},},
	[UNION_BUILD_STORE_LEVEL_9] = { ID = UNION_BUILD_STORE_LEVEL_9, Mode = 2, Lv = 9, Mul = 1, UpExp = 1152000, DonateExp = 50, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020009,1,10000}}}}, East = {{"item",7001003,15,2500},{"item",7001002,40,2500},{"item",7002003,15,2500},{"item",7002002,40,2500}}, West = {{"item",7001003,15,2500},{"item",7001002,40,2500},{"item",7002003,15,2500},{"item",7002002,40,2500}}, South = {{"item",7001003,15,2500},{"item",7001002,40,2500},{"item",7002003,15,2500},{"item",7002002,40,2500}}, North = {{"item",7001003,15,2500},{"item",7001002,40,2500},{"item",7002003,15,2500},{"item",7002002,40,2500}},},
	[UNION_BUILD_STORE_LEVEL_10] = { ID = UNION_BUILD_STORE_LEVEL_10, Mode = 2, Lv = 10, Mul = 1, UpExp = 2560000, DonateExp = 55, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020010,1,10000}}}}, East = {{"item",7001003,20,5000},{"item",7002003,20,5000}}, West = {{"item",7001003,20,5000},{"item",7002003,20,5000}}, South = {{"item",7001003,20,5000},{"item",7002003,20,5000}}, North = {{"item",7001003,20,5000},{"item",7002003,20,5000}},},
	[UNION_BUILD_SUPERRES_LEVEL_0] = { ID = UNION_BUILD_SUPERRES_LEVEL_0, Mode = 3, Lv = 0, Mul = 1, UpExp = 0, DonateExp = 0, BonusID = nil, East = nil, West = nil, South = nil, North = nil,},
	[UNION_BUILD_SUPERRES_LEVEL_1] = { ID = UNION_BUILD_SUPERRES_LEVEL_1, Mode = 3, Lv = 1, Mul = 1, UpExp = 500, DonateExp = 10, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020001,1,10000}}}}, East = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, West = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, South = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, North = {{"item",7003001,10,5000},{"item",7004001,10,5000}},},
	[UNION_BUILD_SUPERRES_LEVEL_2] = { ID = UNION_BUILD_SUPERRES_LEVEL_2, Mode = 3, Lv = 2, Mul = 1, UpExp = 1000, DonateExp = 15, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020002,1,10000}}}}, East = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, West = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, South = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, North = {{"item",7003001,10,5000},{"item",7004001,10,5000}},},
	[UNION_BUILD_SUPERRES_LEVEL_3] = { ID = UNION_BUILD_SUPERRES_LEVEL_3, Mode = 3, Lv = 3, Mul = 1, UpExp = 6000, DonateExp = 20, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020003,1,10000}}}}, East = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, West = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, South = {{"item",7003001,10,5000},{"item",7004001,10,5000}}, North = {{"item",7003001,10,5000},{"item",7004001,10,5000}},},
	[UNION_BUILD_SUPERRES_LEVEL_4] = { ID = UNION_BUILD_SUPERRES_LEVEL_4, Mode = 3, Lv = 4, Mul = 1, UpExp = 16000, DonateExp = 25, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020004,1,10000}}}}, East = {{"item",7003002,4,2500},{"item",7003001,15,2500},{"item",7004002,4,2500},{"item",7004001,15,2500}}, West = {{"item",7003002,4,2500},{"item",7003001,15,2500},{"item",7004002,4,2500},{"item",7004001,15,2500}}, South = {{"item",7003002,4,2500},{"item",7003001,15,2500},{"item",7004002,4,2500},{"item",7004001,15,2500}}, North = {{"item",7003002,4,2500},{"item",7003001,15,2500},{"item",7004002,4,2500},{"item",7004001,15,2500}},},
	[UNION_BUILD_SUPERRES_LEVEL_5] = { ID = UNION_BUILD_SUPERRES_LEVEL_5, Mode = 3, Lv = 5, Mul = 1, UpExp = 40000, DonateExp = 30, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020005,1,10000}}}}, East = {{"item",7003002,5,2500},{"item",7003001,20,2500},{"item",7004002,5,2500},{"item",7004001,20,2500}}, West = {{"item",7003002,5,2500},{"item",7003001,20,2500},{"item",7004002,5,2500},{"item",7004001,20,2500}}, South = {{"item",7003002,5,2500},{"item",7003001,20,2500},{"item",7004002,5,2500},{"item",7004001,20,2500}}, North = {{"item",7003002,5,2500},{"item",7003001,20,2500},{"item",7004002,5,2500},{"item",7004001,20,2500}},},
	[UNION_BUILD_SUPERRES_LEVEL_6] = { ID = UNION_BUILD_SUPERRES_LEVEL_6, Mode = 3, Lv = 6, Mul = 1, UpExp = 96000, DonateExp = 35, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020006,1,10000}}}}, East = {{"item",7003003,4,1666},{"item",7003002,10,1667},{"item",7003001,40,1667},{"item",7004003,4,1666},{"item",7004002,10,1667},{"item",7004001,40,1667}}, West = {{"item",7003003,4,1666},{"item",7003002,10,1667},{"item",7003001,40,1667},{"item",7004003,4,1666},{"item",7004002,10,1667},{"item",7004001,40,1667}}, South = {{"item",7003003,4,1666},{"item",7003002,10,1667},{"item",7003001,40,1667},{"item",7004003,4,1666},{"item",7004002,10,1667},{"item",7004001,40,1667}}, North = {{"item",7003003,4,1666},{"item",7003002,10,1667},{"item",7003001,40,1667},{"item",7004003,4,1666},{"item",7004002,10,1667},{"item",7004001,40,1667}},},
	[UNION_BUILD_SUPERRES_LEVEL_7] = { ID = UNION_BUILD_SUPERRES_LEVEL_7, Mode = 3, Lv = 7, Mul = 1, UpExp = 224000, DonateExp = 40, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020007,1,10000}}}}, East = {{"item",7003003,6,1666},{"item",7003002,20,1667},{"item",7003001,60,1667},{"item",7004003,6,1666},{"item",7004002,20,1667},{"item",7004001,60,1667}}, West = {{"item",7003003,6,1666},{"item",7003002,20,1667},{"item",7003001,60,1667},{"item",7004003,6,1666},{"item",7004002,20,1667},{"item",7004001,60,1667}}, South = {{"item",7003003,6,1666},{"item",7003002,20,1667},{"item",7003001,60,1667},{"item",7004003,6,1666},{"item",7004002,20,1667},{"item",7004001,60,1667}}, North = {{"item",7003003,6,1666},{"item",7003002,20,1667},{"item",7003001,60,1667},{"item",7004003,6,1666},{"item",7004002,20,1667},{"item",7004001,60,1667}},},
	[UNION_BUILD_SUPERRES_LEVEL_8] = { ID = UNION_BUILD_SUPERRES_LEVEL_8, Mode = 3, Lv = 8, Mul = 1, UpExp = 512000, DonateExp = 45, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020008,1,10000}}}}, East = {{"item",7003003,10,2500},{"item",7003002,30,2500},{"item",7004003,10,2500},{"item",7004002,30,2500}}, West = {{"item",7003003,10,2500},{"item",7003002,30,2500},{"item",7004003,10,2500},{"item",7004002,30,2500}}, South = {{"item",7003003,10,2500},{"item",7003002,30,2500},{"item",7004003,10,2500},{"item",7004002,30,2500}}, North = {{"item",7003003,10,2500},{"item",7003002,30,2500},{"item",7004003,10,2500},{"item",7004002,30,2500}},},
	[UNION_BUILD_SUPERRES_LEVEL_9] = { ID = UNION_BUILD_SUPERRES_LEVEL_9, Mode = 3, Lv = 9, Mul = 1, UpExp = 1152000, DonateExp = 50, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020009,1,10000}}}}, East = {{"item",7003003,15,2500},{"item",7003002,40,2500},{"item",7004003,15,2500},{"item",7004002,40,2500}}, West = {{"item",7003003,15,2500},{"item",7003002,40,2500},{"item",7004003,15,2500},{"item",7004002,40,2500}}, South = {{"item",7003003,15,2500},{"item",7003002,40,2500},{"item",7004003,15,2500},{"item",7004002,40,2500}}, North = {{"item",7003003,15,2500},{"item",7003002,40,2500},{"item",7004003,15,2500},{"item",7004002,40,2500}},},
	[UNION_BUILD_SUPERRES_LEVEL_10] = { ID = UNION_BUILD_SUPERRES_LEVEL_10, Mode = 3, Lv = 10, Mul = 1, UpExp = 2560000, DonateExp = 55, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020010,1,10000}}}}, East = {{"item",7003003,20,5000},{"item",7004003,20,5000}}, West = {{"item",7003003,20,5000},{"item",7004003,20,5000}}, South = {{"item",7003003,20,5000},{"item",7004003,20,5000}}, North = {{"item",7003003,20,5000},{"item",7004003,20,5000}},},
	[UNION_BUILD_MARCKET_LEVEL_0] = { ID = UNION_BUILD_MARCKET_LEVEL_0, Mode = 5, Lv = 0, Mul = 1, UpExp = 0, DonateExp = 0, BonusID = nil, East = nil, West = nil, South = nil, North = nil,},
	[UNION_BUILD_MARCKET_LEVEL_1] = { ID = UNION_BUILD_MARCKET_LEVEL_1, Mode = 5, Lv = 1, Mul = 1, UpExp = 500, DonateExp = 10, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020001,1,10000}}}}, East = {{"item",7003001,5,7000},{"item",7004002,2,3000}}, West = {{"item",7003001,5,7000},{"item",7004002,2,3000}}, South = {{"item",7003001,5,7000},{"item",7004002,2,3000}}, North = {{"item",7003001,5,7000},{"item",7004002,2,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_2] = { ID = UNION_BUILD_MARCKET_LEVEL_2, Mode = 5, Lv = 2, Mul = 1, UpExp = 1000, DonateExp = 15, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020002,1,10000}}}}, East = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, West = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, South = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, North = {{"item",7003001,10,7000},{"item",7004002,3,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_3] = { ID = UNION_BUILD_MARCKET_LEVEL_3, Mode = 5, Lv = 3, Mul = 1, UpExp = 6000, DonateExp = 20, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020003,1,10000}}}}, East = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, West = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, South = {{"item",7003001,10,7000},{"item",7004002,3,3000}}, North = {{"item",7003001,10,7000},{"item",7004002,3,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_4] = { ID = UNION_BUILD_MARCKET_LEVEL_4, Mode = 5, Lv = 4, Mul = 1, UpExp = 16000, DonateExp = 25, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020004,1,10000}}}}, East = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, West = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, South = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, North = {{"item",7003001,15,7000},{"item",7004002,4,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_5] = { ID = UNION_BUILD_MARCKET_LEVEL_5, Mode = 5, Lv = 5, Mul = 1, UpExp = 40000, DonateExp = 30, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020005,1,10000}}}}, East = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, West = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, South = {{"item",7003001,15,7000},{"item",7004002,4,3000}}, North = {{"item",7003001,15,7000},{"item",7004002,4,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_6] = { ID = UNION_BUILD_MARCKET_LEVEL_6, Mode = 5, Lv = 6, Mul = 1, UpExp = 96000, DonateExp = 35, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020006,1,10000}}}}, East = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, West = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, South = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, North = {{"item",7003001,20,7000},{"item",7004002,5,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_7] = { ID = UNION_BUILD_MARCKET_LEVEL_7, Mode = 5, Lv = 7, Mul = 1, UpExp = 224000, DonateExp = 40, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020007,1,10000}}}}, East = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, West = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, South = {{"item",7003001,20,7000},{"item",7004002,5,3000}}, North = {{"item",7003001,20,7000},{"item",7004002,5,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_8] = { ID = UNION_BUILD_MARCKET_LEVEL_8, Mode = 5, Lv = 8, Mul = 1, UpExp = 512000, DonateExp = 45, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020008,1,10000}}}}, East = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, West = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, South = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, North = {{"item",7003001,25,7000},{"item",7004002,6,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_9] = { ID = UNION_BUILD_MARCKET_LEVEL_9, Mode = 5, Lv = 9, Mul = 1, UpExp = 1152000, DonateExp = 50, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020009,1,10000}}}}, East = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, West = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, South = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, North = {{"item",7003001,25,7000},{"item",7004002,6,3000}},},
	[UNION_BUILD_MARCKET_LEVEL_10] = { ID = UNION_BUILD_MARCKET_LEVEL_10, Mode = 5, Lv = 10, Mul = 1, UpExp = 2560000, DonateExp = 55, BonusID = {{"mutex_award",{{"res",8,5000,10000},{"item",2020010,1,10000}}}}, East = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, West = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, South = {{"item",7003001,25,7000},{"item",7004002,6,3000}}, North = {{"item",7003001,25,7000},{"item",7004002,6,3000}},},
}
