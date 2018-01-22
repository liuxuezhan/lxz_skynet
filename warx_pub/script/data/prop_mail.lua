--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_mail = {

	[MAIL_10001] = { ID = MAIL_10001, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10001, Content = LG_MAIL_CONTENT_10001, AddBonus = nil,},
	[MAIL_10002] = { ID = MAIL_10002, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10002, Content = LG_MAIL_CONTENT_10002, AddBonus = {"mutex_award",{{"res",8,5000,10000}}},},
	[MAIL_20001] = { ID = MAIL_20001, Class = 2, Name = LG_NIL, Title = LG_MAIL_TITLE_20001, Content = LG_MAIL_CONTENT_20001, AddBonus = nil,},
	[MAIL_30001] = { ID = MAIL_30001, Class = 3, Name = LG_MAIL_NAME_10002, Title = LG_MAIL_TITLE_30001, Content = LG_MAIL_CONTENT_30001, AddBonus = nil,},
	[MAIL_10003] = { ID = MAIL_10003, Class = 1, Name = LG_HERO_BASIC_NAME_111100019, Title = LG_MAIL_TITLE_10003, Content = LG_MAIL_CONTENT_10003, AddBonus = nil,},
	[MAIL_10004] = { ID = MAIL_10004, Class = 1, Name = LG_HERO_BASIC_NAME_111100019, Title = LG_MAIL_TITLE_10003, Content = LG_MAIL_CONTENT_10004, AddBonus = nil,},
	[MAIL_10005] = { ID = MAIL_10005, Class = 1, Name = LG_HERO_BASIC_NAME_111100019, Title = LG_MAIL_TITLE_10004, Content = LG_MAIL_CONTENT_10005, AddBonus = nil,},
	[MAIL_10006] = { ID = MAIL_10006, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10005, Content = LG_MAIL_CONTENT_10006, AddBonus = nil,},
	[MAIL_10007] = { ID = MAIL_10007, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10006, Content = LG_MAIL_CONTENT_10007, AddBonus = nil,},
	[MAIL_10008] = { ID = MAIL_10008, Class = 1, Name = LG_HERO_BASIC_NAME_111100047, Title = LG_MAIL_TITLE_10007, Content = LG_MAIL_CONTENT_10008, AddBonus = nil,},
	[MAIL_10009] = { ID = MAIL_10009, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10008, Content = LG_MAIL_CONTENT_10009, AddBonus = nil,},
	[MAIL_10010] = { ID = MAIL_10010, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10009, Content = LG_MAIL_CONTENT_10010, AddBonus = nil,},
	[MAIL_10011] = { ID = MAIL_10011, Class = 1, Name = LG_HERO_BASIC_NAME_111100047, Title = LG_MAIL_TITLE_10010, Content = LG_MAIL_CONTENT_10011, AddBonus = nil,},
	[MAIL_10012] = { ID = MAIL_10012, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10011, Content = LG_MAIL_CONTENT_10012, AddBonus = nil,},
	[MAIL_10013] = { ID = MAIL_10013, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10012, Content = LG_MAIL_CONTENT_10013, AddBonus = nil,},
	[MAIL_10014] = { ID = MAIL_10014, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10013, Content = LG_MAIL_CONTENT_10014, AddBonus = nil,},
	[MAIL_10015] = { ID = MAIL_10015, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10014, Content = LG_MAIL_CONTENT_10015, AddBonus = nil,},
	[MAIL_10016] = { ID = MAIL_10016, Class = 1, Name = LG_HERO_BASIC_NAME_111100000, Title = LG_MAIL_TITLE_10015, Content = LG_MAIL_CONTENT_10016, AddBonus = nil,},
	[MAIL_10017] = { ID = MAIL_10017, Class = 1, Name = LG_HERO_BASIC_NAME_111100000, Title = LG_MAIL_TITLE_10016, Content = LG_MAIL_CONTENT_10017, AddBonus = nil,},
	[MAIL_10018] = { ID = MAIL_10018, Class = 1, Name = LG_HERO_BASIC_NAME_111100000, Title = LG_MAIL_TITLE_10017, Content = LG_MAIL_CONTENT_10018, AddBonus = nil,},
	[MAIL_10019] = { ID = MAIL_10019, Class = 1, Name = LG_MAIL_NAME_10001, Title = LG_MAIL_TITLE_10018, Content = LG_MAIL_CONTENT_10019, AddBonus = nil,},
	[MAIL_10020] = { ID = MAIL_10020, Class = 1, Name = LG_MAIL_NAME_10001, Title = LG_MAIL_TITLE_10019, Content = LG_MAIL_CONTENT_10020, AddBonus = nil,},
	[MAIL_10021] = { ID = MAIL_10021, Class = 1, Name = LG_MAIL_NAME_10001, Title = LG_MAIL_TITLE_10020, Content = LG_MAIL_CONTENT_10021, AddBonus = nil,},
	[MAIL_10022] = { ID = MAIL_10022, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10021, Content = LG_MAIL_CONTENT_10022, AddBonus = nil,},
	[MAIL_10023] = { ID = MAIL_10023, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10022, Content = LG_MAIL_CONTENT_10023, AddBonus = nil,},
	[MAIL_10024] = { ID = MAIL_10024, Class = 1, Name = LG_HERO_BASIC_NAME_111100000, Title = LG_MAIL_TITLE_10024, Content = LG_MAIL_CONTENT_10024, AddBonus = nil,},
	[MAIL_10025] = { ID = MAIL_10025, Class = 1, Name = LG_HERO_BASIC_NAME_111100000, Title = LG_MAIL_TITLE_10025, Content = LG_MAIL_CONTENT_10025, AddBonus = nil,},
	[MAIL_10026] = { ID = MAIL_10026, Class = 1, Name = LG_MAIL_NAME_10001, Title = LG_MAIL_TITLE_10026, Content = LG_MAIL_CONTENT_10026, AddBonus = nil,},
	[MAIL_10027] = { ID = MAIL_10027, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10027, Content = LG_MAIL_CONTENT_10027, AddBonus = nil,},
	[MAIL_10028] = { ID = MAIL_10028, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10028, Content = LG_MAIL_CONTENT_10028, AddBonus = nil,},
	[MAIL_10029] = { ID = MAIL_10029, Class = 1, Name = LG_MAIL_NAME_10001, Title = LG_MAIL_TITLE_10029, Content = LG_MAIL_CONTENT_10029, AddBonus = nil,},
	[MAIL_10030] = { ID = MAIL_10030, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10030, Content = LG_MAIL_CONTENT_10030, AddBonus = nil,},
	[MAIL_10031] = { ID = MAIL_10031, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10032, Content = LG_MAIL_CONTENT_10032, AddBonus = nil,},
	[MAIL_10032] = { ID = MAIL_10032, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10033, Content = LG_MAIL_CONTENT_10033, AddBonus = nil,},
	[MAIL_10033] = { ID = MAIL_10033, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10034, Content = LG_MAIL_CONTENT_10034, AddBonus = nil,},
	[MAIL_SUPPORT_RES_1] = { ID = MAIL_SUPPORT_RES_1, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10035, Content = LG_MAIL_CONTENT_10035, AddBonus = nil,},
	[MAIL_SUPPORT_RES_2] = { ID = MAIL_SUPPORT_RES_2, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10035, Content = LG_MAIL_CONTENT_10036, AddBonus = nil,},
	[MAIL_SUPPORT_RES_3] = { ID = MAIL_SUPPORT_RES_3, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10035, Content = LG_MAIL_CONTENT_10037, AddBonus = nil,},
	[MAIL_SUPPORT_RES_4] = { ID = MAIL_SUPPORT_RES_4, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10035, Content = LG_MAIL_CONTENT_10038, AddBonus = nil,},
	[MAIL_10038] = { ID = MAIL_10038, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10039, AddBonus = nil,},
	[MAIL_10039] = { ID = MAIL_10039, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10040, AddBonus = nil,},
	[MAIL_10040] = { ID = MAIL_10040, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10038, Content = LG_MAIL_CONTENT_10041, AddBonus = nil,},
	[MAIL_10041] = { ID = MAIL_10041, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10005, Content = LG_MAIL_CONTENT_10042, AddBonus = nil,},
	[MAIL_10042] = { ID = MAIL_10042, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10039, Content = LG_MAIL_CONTENT_10043, AddBonus = nil,},
	[MAIL_10043] = { ID = MAIL_10043, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10040, Content = LG_MAIL_CONTENT_10044, AddBonus = nil,},
	[MAIL_10044] = { ID = MAIL_10044, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10041, Content = LG_MAIL_CONTENT_10045, AddBonus = nil,},
	[MAIL_10045] = { ID = MAIL_10045, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10042, Content = LG_MAIL_CONTENT_10046, AddBonus = nil,},
	[MAIL_10046] = { ID = MAIL_10046, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10043, Content = LG_MAIL_CONTENT_10047, AddBonus = nil,},
	[MAIL_10047] = { ID = MAIL_10047, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10044, Content = LG_MAIL_CONTENT_10048, AddBonus = nil,},
	[MAIL_10048] = { ID = MAIL_10048, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10045, Content = LG_MAIL_CONTENT_10049, AddBonus = nil,},
	[MAIL_10049] = { ID = MAIL_10049, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10046, Content = LG_MAIL_CONTENT_10050, AddBonus = nil,},
	[MAIL_10050] = { ID = MAIL_10050, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10047, Content = LG_MAIL_CONTENT_10051, AddBonus = nil,},
	[MAIL_10051] = { ID = MAIL_10051, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10048, Content = LG_MAIL_CONTENT_10052, AddBonus = nil,},
	[MAIL_10052] = { ID = MAIL_10052, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10049, Content = LG_MAIL_CONTENT_10053, AddBonus = nil,},
	[MAIL_10053] = { ID = MAIL_10053, Class = 1, Name = LG_MAIL_NAME_10003, Title = LG_MAIL_TITLE_10050, Content = LG_MAIL_CONTENT_10054, AddBonus = nil,},
	[MAIL_10054] = { ID = MAIL_10054, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10051, Content = LG_MAIL_CONTENT_10055, AddBonus = nil,},
	[MAIL_10055] = { ID = MAIL_10055, Class = 1, Name = LG_MAIL_NAME_10003, Title = LG_MAIL_TITLE_10052, Content = LG_MAIL_CONTENT_10056, AddBonus = nil,},
	[MAIL_10056] = { ID = MAIL_10056, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10053, Content = LG_MAIL_CONTENT_10057, AddBonus = nil,},
	[MAIL_10057] = { ID = MAIL_10057, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10054, Content = LG_MAIL_CONTENT_10058, AddBonus = nil,},
	[MAIL_10058] = { ID = MAIL_10058, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10055, Content = LG_MAIL_CONTENT_10059, AddBonus = nil,},
	[MAIL_10059] = { ID = MAIL_10059, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10056, Content = LG_MAIL_CONTENT_10060, AddBonus = nil,},
	[MAIL_10060] = { ID = MAIL_10060, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10057, Content = LG_MAIL_CONTENT_10061, AddBonus = nil,},
	[MAIL_10061] = { ID = MAIL_10061, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10058, Content = LG_MAIL_CONTENT_10062, AddBonus = nil,},
	[MAIL_10062] = { ID = MAIL_10062, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10059, Content = LG_MAIL_CONTENT_10063, AddBonus = nil,},
	[MAIL_10063] = { ID = MAIL_10063, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10060, Content = LG_MAIL_CONTENT_10064, AddBonus = nil,},
	[MAIL_10064] = { ID = MAIL_10064, Class = 1, Name = LG_HERO_BASIC_NAME_111100004, Title = LG_MAIL_TITLE_10061, Content = LG_MAIL_CONTENT_10065, AddBonus = nil,},
	[MAIL_10065] = { ID = MAIL_10065, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10062, Content = LG_MAIL_CONTENT_10066, AddBonus = nil,},
	[MAIL_10066] = { ID = MAIL_10066, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10063, Content = LG_MAIL_CONTENT_10067, AddBonus = nil,},
	[MAIL_10067] = { ID = MAIL_10067, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10064, Content = LG_MAIL_CONTENT_10068, AddBonus = nil,},
	[MAIL_10068] = { ID = MAIL_10068, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10065, Content = LG_MAIL_CONTENT_10069, AddBonus = nil,},
	[MAIL_10069] = { ID = MAIL_10069, Class = 1, Name = LG_HERO_BASIC_NAME_111100018, Title = LG_MAIL_TITLE_10066, Content = LG_MAIL_CONTENT_10070, AddBonus = nil,},
	[MAIL_10070] = { ID = MAIL_10070, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10067, Content = LG_MAIL_CONTENT_10071, AddBonus = nil,},
	[MAIL_10071] = { ID = MAIL_10071, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10044, Content = LG_MAIL_CONTENT_10072, AddBonus = nil,},
	[MAIL_10072] = { ID = MAIL_10072, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10068, Content = LG_MAIL_CONTENT_10073, AddBonus = nil,},
	[MAIL_10073] = { ID = MAIL_10073, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10069, Content = LG_MAIL_CONTENT_10074, AddBonus = {"mutex_award",{{"res",1,500000,10000},{"res",2,500000,10000},{"item",10001001,1,10000}}},},
	[MAIL_10074] = { ID = MAIL_10074, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10070, Content = LG_MAIL_CONTENT_10075, AddBonus = nil,},
	[MAIL_10075] = { ID = MAIL_10075, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10071, Content = LG_MAIL_CONTENT_10076, AddBonus = nil,},
	[MAIL_10076] = { ID = MAIL_10076, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10072, Content = LG_MAIL_CONTENT_10077, AddBonus = nil,},
	[MAIL_10077] = { ID = MAIL_10077, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10073, Content = LG_MAIL_CONTENT_10078, AddBonus = {"mutex_award",{{"res",1,500000,10000},{"res",2,500000,10000},{"item",10001001,1,10000}}},},
	[MAIL_10078] = { ID = MAIL_10078, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10074, Content = LG_MAIL_CONTENT_10079, AddBonus = nil,},
	[MAIL_10079] = { ID = MAIL_10079, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10075, Content = LG_MAIL_CONTENT_10080, AddBonus = nil,},
	[MAIL_10080] = { ID = MAIL_10080, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10076, Content = LG_MAIL_CONTENT_10081, AddBonus = nil,},
	[MAIL_10081] = { ID = MAIL_10081, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10077, Content = LG_MAIL_CONTENT_10082, AddBonus = nil,},
	[MAIL_10082] = { ID = MAIL_10082, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10078, Content = LG_MAIL_CONTENT_10083, AddBonus = {"mutex_award",{{"res",6,200,10000},{"item",10004006,2,10000},{"item",2019031,1,10000}}},},
	[MAIL_10083] = { ID = MAIL_10083, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10084, AddBonus = nil,},
	[MAIL_10084] = { ID = MAIL_10084, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10085, AddBonus = nil,},
	[MAIL_10085] = { ID = MAIL_10085, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10086, AddBonus = nil,},
	[MAIL_10086] = { ID = MAIL_10086, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10087, AddBonus = nil,},
	[MAIL_10087] = { ID = MAIL_10087, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10088, AddBonus = nil,},
	[MAIL_10088] = { ID = MAIL_10088, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10089, AddBonus = nil,},
	[MAIL_10089] = { ID = MAIL_10089, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10036, Content = LG_MAIL_CONTENT_10090, AddBonus = nil,},
	[MAIL_10090] = { ID = MAIL_10090, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10091, AddBonus = nil,},
	[MAIL_10091] = { ID = MAIL_10091, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10092, AddBonus = nil,},
	[MAIL_10092] = { ID = MAIL_10092, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10093, AddBonus = nil,},
	[MAIL_10093] = { ID = MAIL_10093, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10094, AddBonus = nil,},
	[MAIL_10094] = { ID = MAIL_10094, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10095, AddBonus = nil,},
	[MAIL_10095] = { ID = MAIL_10095, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10096, AddBonus = nil,},
	[MAIL_10096] = { ID = MAIL_10096, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10037, Content = LG_MAIL_CONTENT_10097, AddBonus = nil,},
	[MAIL_10097] = { ID = MAIL_10097, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10079, Content = LG_MAIL_CONTENT_10098, AddBonus = nil,},
	[MAIL_10098] = { ID = MAIL_10098, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10080, Content = LG_MAIL_CONTENT_10099, AddBonus = nil,},
	[MAIL_10099] = { ID = MAIL_10099, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10081, Content = LG_MAIL_CONTENT_10100, AddBonus = nil,},
	[MAIL_10100] = { ID = MAIL_10100, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10082, Content = LG_MAIL_CONTENT_10101, AddBonus = nil,},
	[MAIL_10101] = { ID = MAIL_10101, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10083, Content = LG_MAIL_CONTENT_10102, AddBonus = nil,},
	[MAIL_10102] = { ID = MAIL_10102, Class = 1, Name = UNION_NEWUNION_MANAGER_1, Title = LG_MAIL_TITLE_10084, Content = LG_MAIL_CONTENT_10103, AddBonus = nil,},
}
