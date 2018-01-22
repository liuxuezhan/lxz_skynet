--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_hero_task_detail = {

	[HERO_TASK_130010101] = { ID = HERO_TASK_130010101, Title = LG_TASK_TITLE_130031301, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",1,1},{"Culture",1,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Atk",26,10000}}, EventBonus = {{"item",1603001,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",1001021,1,1000}}, HelpBonus = {{"item",1001003,2,10000}}, TargetUnit = 3010004, CityEvent = {31}, EventHero = 1,},
	[HERO_TASK_130010102] = { ID = HERO_TASK_130010102, Title = LG_TASK_TITLE_130031302, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",1,1},{"Culture",1,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Def",58,10000}}, EventBonus = {{"item",1603005,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",5001021,1,1000}}, HelpBonus = {{"item",1001003,2,10000}}, TargetUnit = 3008004, CityEvent = {32}, EventHero = 2,},
	[HERO_TASK_130010103] = { ID = HERO_TASK_130010103, Title = LG_TASK_TITLE_130031303, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",3,1},{"Culture",2,1}}, Bonus = {{"res",2,10,10000},{"hero_attr","Hp",514,10000}}, EventBonus = {{"item",1603009,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",9001021,1,1000}}, HelpBonus = {{"item",1002003,2,10000}}, TargetUnit = 17001002, CityEvent = {33}, EventHero = 16,},
	[HERO_TASK_130010104] = { ID = HERO_TASK_130010104, Title = LG_TASK_TITLE_130031304, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",4,1},{"Culture",2,1}}, Bonus = {{"res",2,10,10000},{"hero_attr","Atk",26,10000}}, EventBonus = {{"item",1603013,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",13001021,1,1000}}, HelpBonus = {{"item",1002003,2,10000}}, TargetUnit = 3038004, CityEvent = {34}, EventHero = 18,},
	[HERO_TASK_130010105] = { ID = HERO_TASK_130010105, Title = LG_TASK_TITLE_130031305, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",3,1},{"Culture",3,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Def",58,10000}}, EventBonus = {{"item",1603005,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",5001021,1,1000}}, HelpBonus = {{"item",1003003,2,10000}}, TargetUnit = 17001003, CityEvent = {35}, EventHero = 10,},
	[HERO_TASK_130010106] = { ID = HERO_TASK_130010106, Title = LG_TASK_TITLE_130031306, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",2,1},{"Culture",3,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","HP",514,10000}}, EventBonus = {{"item",1603009,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",9001021,1,1000}}, HelpBonus = {{"item",1003003,2,10000}}, TargetUnit = 3016003, CityEvent = {36}, EventHero = 13,},
	[HERO_TASK_130010107] = { ID = HERO_TASK_130010107, Title = LG_TASK_TITLE_130031307, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",2,1},{"Culture",4,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Atk",26,10000}}, EventBonus = {{"item",1603001,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",1001021,1,1000}}, HelpBonus = {{"item",1004003,2,10000}}, TargetUnit = 3021001, CityEvent = {37}, EventHero = 109,},
	[HERO_TASK_130010108] = { ID = HERO_TASK_130010108, Title = LG_TASK_TITLE_130031308, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",3,1},{"Culture",4,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Def",58,10000}}, EventBonus = {{"item",1603013,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",13001021,1,1000}}, HelpBonus = {{"item",1004003,2,10000}}, TargetUnit = 3026003, CityEvent = {38}, EventHero = 110,},
	[HERO_TASK_130010109] = { ID = HERO_TASK_130010109, Title = LG_TASK_TITLE_130031309, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",3,1},{"Culture",1,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","HP",514,10000}}, EventBonus = {{"item",1603009,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",9001021,1,1000}}, HelpBonus = {{"item",1001003,2,10000}}, TargetUnit = 3004003, CityEvent = {39}, EventHero = 3,},
	[HERO_TASK_130010110] = { ID = HERO_TASK_130010110, Title = LG_TASK_TITLE_130031310, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",1,1},{"Culture",2,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Atk",26,10000}}, EventBonus = {{"item",1603001,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",1001021,1,1000}}, HelpBonus = {{"item",1002003,2,10000}}, TargetUnit = 3040004, CityEvent = {40}, EventHero = 21,},
	[HERO_TASK_130010111] = { ID = HERO_TASK_130010111, Title = LG_TASK_TITLE_130031311, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",3,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Def",58,10000}}, EventBonus = {{"item",1603005,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",5001021,1,1000}}, HelpBonus = {{"item",1003003,2,10000}}, TargetUnit = 3017004, CityEvent = {41}, EventHero = 14,},
	[HERO_TASK_130010112] = { ID = HERO_TASK_130010112, Title = LG_TASK_TITLE_130031312, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 5400, HelpAccTime = 60, HeroNum = 1, HelpHeroNum = 0, CardType = 1, Character = 1, EventCondition = {{"personality",2,1},{"Culture",4,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","HP",514,10000}}, EventBonus = {{"item",1603013,1,4500},{"item",1601002,1,2250},{"item",1601002,2,2250},{"heroequip",13001021,1,1000}}, HelpBonus = {{"item",1004003,2,10000}}, TargetUnit = 3029004, CityEvent = {42}, EventHero = 109,},
	[HERO_TASK_130010113] = { ID = HERO_TASK_130010113, Title = LG_TASK_TITLE_130031313, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",3,1},{"Culture",1,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Hp",554,10000}}, EventBonus = {{"item",1603014,1,2400},{"item",1603014,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",13001021,1,2000}}, HelpBonus = {{"item",1001004,1,10000}}, TargetUnit = 17001001, CityEvent = {43}, EventHero = 4,},
	[HERO_TASK_130010114] = { ID = HERO_TASK_130010114, Title = LG_TASK_TITLE_130031314, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",1,1},{"Culture",1,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Atk",28,10000}}, EventBonus = {{"item",1603002,1,2400},{"item",1603002,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",1001021,1,2000}}, HelpBonus = {{"item",1001004,1,10000}}, TargetUnit = 3002002, CityEvent = {44}, EventHero = 1,},
	[HERO_TASK_130010115] = { ID = HERO_TASK_130010115, Title = LG_TASK_TITLE_130031315, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",4,1},{"Culture",1,1}}, Bonus = {{"res",2,10,10000},{"hero_attr","Def",63,10000}}, EventBonus = {{"item",1603006,1,2400},{"item",1603006,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",5001021,1,2000}}, HelpBonus = {{"item",1002004,1,10000}}, TargetUnit = 3001001, CityEvent = {45}, EventHero = 19,},
	[HERO_TASK_130010116] = { ID = HERO_TASK_130010116, Title = LG_TASK_TITLE_130031316, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",3,1},{"Culture",2,1}}, Bonus = {{"res",2,10,10000},{"hero_attr","HP",554,10000}}, EventBonus = {{"item",1603010,1,2400},{"item",1603010,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",9001021,1,2000}}, HelpBonus = {{"item",1002004,1,10000}}, TargetUnit = 3034003, CityEvent = {46}, EventHero = 16,},
	[HERO_TASK_130010117] = { ID = HERO_TASK_130010117, Title = LG_TASK_TITLE_130031317, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",1,1},{"Culture",2,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Atk",28,10000}}, EventBonus = {{"item",1603002,1,2400},{"item",1603002,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",1001021,1,2000}}, HelpBonus = {{"item",1003004,1,10000}}, TargetUnit = 3037004, CityEvent = {47}, EventHero = 18,},
	[HERO_TASK_130010118] = { ID = HERO_TASK_130010118, Title = LG_TASK_TITLE_130031318, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",2,1},{"Culture",3,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Def",63,10000}}, EventBonus = {{"item",1603006,1,2400},{"item",1603006,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",5001021,1,2000}}, HelpBonus = {{"item",1003004,1,10000}}, TargetUnit = 3013002, CityEvent = {48}, EventHero = 10,},
	[HERO_TASK_130010119] = { ID = HERO_TASK_130010119, Title = LG_TASK_TITLE_130031319, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",3,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Hp",554,10000}}, EventBonus = {{"item",1603010,1,2400},{"item",1603010,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",9001021,1,2000}}, HelpBonus = {{"item",1004004,1,10000}}, TargetUnit = 3015003, CityEvent = {49}, EventHero = 13,},
	[HERO_TASK_130010120] = { ID = HERO_TASK_130010120, Title = LG_TASK_TITLE_130031320, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",2,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Atk",28,10000}}, EventBonus = {{"item",1603014,1,2400},{"item",1603014,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",13001021,1,2000}}, HelpBonus = {{"item",1004004,1,10000}}, TargetUnit = 17001004, CityEvent = {50}, EventHero = 14,},
	[HERO_TASK_130010121] = { ID = HERO_TASK_130010121, Title = LG_TASK_TITLE_130031321, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",3,1},{"Culture",4,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Def",63,10000}}, EventBonus = {{"item",1603006,1,2400},{"item",1603006,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",5001021,1,2000}}, HelpBonus = {{"item",1001004,1,10000}}, TargetUnit = 3024003, CityEvent = {51}, EventHero = 110,},
	[HERO_TASK_130010122] = { ID = HERO_TASK_130010122, Title = LG_TASK_TITLE_130031322, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",4,1},{"Culture",1,1}}, Bonus = {{"res",2,10,10000},{"hero_attr","HP",554,10000}}, EventBonus = {{"item",1603010,1,2400},{"item",1603010,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",9001021,1,2000}}, HelpBonus = {{"item",1002004,1,10000}}, TargetUnit = 3007004, CityEvent = {52}, EventHero = 3,},
	[HERO_TASK_130010123] = { ID = HERO_TASK_130010123, Title = LG_TASK_TITLE_130031323, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",1,1},{"Culture",1,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Atk",28,10000}}, EventBonus = {{"item",1603002,1,2400},{"item",1603002,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",1001021,1,2000}}, HelpBonus = {{"item",1003004,1,10000}}, TargetUnit = 3006003, CityEvent = {53}, EventHero = 19,},
	[HERO_TASK_130010124] = { ID = HERO_TASK_130010124, Title = LG_TASK_TITLE_130031324, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",1,1},{"Culture",2,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Def",63,10000}}, EventBonus = {{"item",1603014,1,2400},{"item",1603014,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",13001021,1,2000}}, HelpBonus = {{"item",1004004,1,10000}}, TargetUnit = 3031001, CityEvent = {54}, EventHero = 21,},
	[HERO_TASK_130010125] = { ID = HERO_TASK_130010125, Title = LG_TASK_TITLE_130031325, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",2,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Hp",554,10000}}, EventBonus = {{"item",1603010,1,2400},{"item",1603010,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",9001021,1,2000}}, HelpBonus = {{"item",1001004,1,10000}}, TargetUnit = 3019004, CityEvent = {55}, EventHero = 10,},
	[HERO_TASK_130010126] = { ID = HERO_TASK_130010126, Title = LG_TASK_TITLE_130031326, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",3,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Atk",28,10000}}, EventBonus = {{"item",1603002,1,2400},{"item",1603002,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",1001021,1,2000}}, HelpBonus = {{"item",1002004,1,10000}}, TargetUnit = 3014003, CityEvent = {56}, EventHero = 14,},
	[HERO_TASK_130010127] = { ID = HERO_TASK_130010127, Title = LG_TASK_TITLE_130031327, TaskType = 1, TaskGroup = 1, Action = 1, Dure = 7200, HelpAccTime = 60, HeroNum = 2, HelpHeroNum = 0, CardType = 1, Character = 2, EventCondition = {{"personality",2,1},{"Culture",4,1}}, Bonus = {{"res",1,10,10000},{"hero_attr","Def",63,10000}}, EventBonus = {{"item",1603006,1,2400},{"item",1603006,2,1600},{"item",1601002,1,800},{"item",1601002,2,2000},{"item",1601002,3,1200},{"heroequip",5001021,1,2000}}, HelpBonus = {{"item",1003004,1,10000}}, TargetUnit = 3030004, CityEvent = {57}, EventHero = 109,},
	[HERO_TASK_130010128] = { ID = HERO_TASK_130010128, Title = LG_TASK_TITLE_130031328, TaskType = 2, TaskGroup = 1, Action = 1, Dure = 10800, HelpAccTime = 60, HeroNum = 3, HelpHeroNum = 2, CardType = 3, Character = 3, EventCondition = {{"personality",4,1},{"Culture",1,1}}, Bonus = {{"res",3,10,10000},{"hero_attr","Atk",32,10000}}, EventBonus = {{"item",1603003,1,1050},{"item",1603003,2,1400},{"item",1603003,3,1050},{"item",1601002,2,1050},{"item",1601002,3,1400},{"item",1601002,4,1050},{"heroequip",1001021,1,3000}}, HelpBonus = {{"item",1001003,2,10000},{"item",1001004,1,10000}}, TargetUnit = 3003002, CityEvent = nil, EventHero = nil,},
	[HERO_TASK_130010129] = { ID = HERO_TASK_130010129, Title = LG_TASK_TITLE_130031329, TaskType = 2, TaskGroup = 1, Action = 1, Dure = 10800, HelpAccTime = 60, HeroNum = 3, HelpHeroNum = 2, CardType = 2, Character = 3, EventCondition = {{"personality",4,1},{"Culture",2,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","Def",72,10000}}, EventBonus = {{"item",1603007,1,1050},{"item",1603007,2,1400},{"item",1603007,3,1050},{"item",1601002,2,1050},{"item",1601002,3,1400},{"item",1601002,4,1050},{"heroequip",5001021,1,3000}}, HelpBonus = {{"item",1002003,2,10000},{"item",1002004,1,10000}}, TargetUnit = 3035003, CityEvent = nil, EventHero = nil,},
	[HERO_TASK_130010130] = { ID = HERO_TASK_130010130, Title = LG_TASK_TITLE_130031330, TaskType = 2, TaskGroup = 1, Action = 1, Dure = 10800, HelpAccTime = 60, HeroNum = 3, HelpHeroNum = 2, CardType = 1, Character = 3, EventCondition = {{"personality",2,1},{"Culture",3,1}}, Bonus = {{"res",4,10,10000},{"hero_attr","HP",633,10000}}, EventBonus = {{"item",1603011,1,1050},{"item",1603011,2,1400},{"item",1603011,3,1050},{"item",1601002,2,1050},{"item",1601002,3,1400},{"item",1601002,4,1050},{"heroequip",9001021,1,3000}}, HelpBonus = {{"item",1003003,2,10000},{"item",1003004,1,10000}}, TargetUnit = 3011001, CityEvent = nil, EventHero = nil,},
}
