--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_weekly_activity_rank = {

	[WEEKLY_ACTIVITY_RANK_1001] = { ID = WEEKLY_ACTIVITY_RANK_1001, ActivityID = 1, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,30000,10000}}, Award2 = {{"res",6,3000,10000},{"res",1,300000,10000},{"res",2,300000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1002] = { ID = WEEKLY_ACTIVITY_RANK_1002, ActivityID = 1, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,18000,10000}}, Award2 = {{"res",6,1800,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1003] = { ID = WEEKLY_ACTIVITY_RANK_1003, ActivityID = 1, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,180000,10000},{"res",2,180000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1004] = { ID = WEEKLY_ACTIVITY_RANK_1004, ActivityID = 1, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,9000,10000}}, Award2 = {{"res",6,900,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1005] = { ID = WEEKLY_ACTIVITY_RANK_1005, ActivityID = 1, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,7200,10000}}, Award2 = {{"res",6,600,10000},{"res",1,90000,10000},{"res",2,90000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1006] = { ID = WEEKLY_ACTIVITY_RANK_1006, ActivityID = 1, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,6000,10000}}, Award2 = {{"res",6,480,10000},{"res",1,72000,10000},{"res",2,72000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1007] = { ID = WEEKLY_ACTIVITY_RANK_1007, ActivityID = 1, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,360,10000},{"res",1,60000,10000},{"res",2,60000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1008] = { ID = WEEKLY_ACTIVITY_RANK_1008, ActivityID = 1, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,4200,10000}}, Award2 = {{"res",6,300,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1009] = { ID = WEEKLY_ACTIVITY_RANK_1009, ActivityID = 1, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,3600,10000}}, Award2 = {{"res",6,240,10000},{"res",1,36000,10000},{"res",2,36000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1010] = { ID = WEEKLY_ACTIVITY_RANK_1010, ActivityID = 1, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,3000,10000}}, Award2 = {{"res",6,180,10000},{"res",1,30000,10000},{"res",2,30000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1011] = { ID = WEEKLY_ACTIVITY_RANK_1011, ActivityID = 1, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,150,10000},{"res",1,15000,10000},{"res",2,15000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1012] = { ID = WEEKLY_ACTIVITY_RANK_1012, ActivityID = 1, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,1800,10000}}, Award2 = {{"res",6,120,10000},{"res",1,6000,10000},{"res",2,6000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1013] = { ID = WEEKLY_ACTIVITY_RANK_1013, ActivityID = 1, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1200,10000}}, Award2 = {{"res",6,90,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1014] = { ID = WEEKLY_ACTIVITY_RANK_1014, ActivityID = 1, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,600,10000}}, Award2 = {{"res",6,60,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_1015] = { ID = WEEKLY_ACTIVITY_RANK_1015, ActivityID = 1, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,300,10000}}, Award2 = {{"res",6,30,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10039,},
	[WEEKLY_ACTIVITY_RANK_2001] = { ID = WEEKLY_ACTIVITY_RANK_2001, ActivityID = 2, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,40000,10000}}, Award2 = {{"res",6,4000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2002] = { ID = WEEKLY_ACTIVITY_RANK_2002, ActivityID = 2, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,24000,10000}}, Award2 = {{"res",6,2400,10000},{"res",1,320000,10000},{"res",2,320000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2003] = { ID = WEEKLY_ACTIVITY_RANK_2003, ActivityID = 2, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,16000,10000}}, Award2 = {{"res",6,1600,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2004] = { ID = WEEKLY_ACTIVITY_RANK_2004, ActivityID = 2, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,160000,10000},{"res",2,160000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2005] = { ID = WEEKLY_ACTIVITY_RANK_2005, ActivityID = 2, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,9600,10000}}, Award2 = {{"res",6,800,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2006] = { ID = WEEKLY_ACTIVITY_RANK_2006, ActivityID = 2, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,640,10000},{"res",1,96000,10000},{"res",2,96000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2007] = { ID = WEEKLY_ACTIVITY_RANK_2007, ActivityID = 2, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,6400,10000}}, Award2 = {{"res",6,480,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2008] = { ID = WEEKLY_ACTIVITY_RANK_2008, ActivityID = 2, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,5600,10000}}, Award2 = {{"res",6,400,10000},{"res",1,64000,10000},{"res",2,64000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2009] = { ID = WEEKLY_ACTIVITY_RANK_2009, ActivityID = 2, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,320,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2010] = { ID = WEEKLY_ACTIVITY_RANK_2010, ActivityID = 2, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,4000,10000}}, Award2 = {{"res",6,240,10000},{"res",1,40000,10000},{"res",2,40000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2011] = { ID = WEEKLY_ACTIVITY_RANK_2011, ActivityID = 2, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,3200,10000}}, Award2 = {{"res",6,200,10000},{"res",1,20000,10000},{"res",2,20000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2012] = { ID = WEEKLY_ACTIVITY_RANK_2012, ActivityID = 2, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,160,10000},{"res",1,8000,10000},{"res",2,8000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2013] = { ID = WEEKLY_ACTIVITY_RANK_2013, ActivityID = 2, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1600,10000}}, Award2 = {{"res",6,120,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2014] = { ID = WEEKLY_ACTIVITY_RANK_2014, ActivityID = 2, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,800,10000}}, Award2 = {{"res",6,80,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_2015] = { ID = WEEKLY_ACTIVITY_RANK_2015, ActivityID = 2, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,400,10000}}, Award2 = {{"res",6,40,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10090,},
	[WEEKLY_ACTIVITY_RANK_3001] = { ID = WEEKLY_ACTIVITY_RANK_3001, ActivityID = 3, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,30000,10000}}, Award2 = {{"res",6,3000,10000},{"res",1,300000,10000},{"res",2,300000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3002] = { ID = WEEKLY_ACTIVITY_RANK_3002, ActivityID = 3, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,18000,10000}}, Award2 = {{"res",6,1800,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3003] = { ID = WEEKLY_ACTIVITY_RANK_3003, ActivityID = 3, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,180000,10000},{"res",2,180000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3004] = { ID = WEEKLY_ACTIVITY_RANK_3004, ActivityID = 3, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,9000,10000}}, Award2 = {{"res",6,900,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3005] = { ID = WEEKLY_ACTIVITY_RANK_3005, ActivityID = 3, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,7200,10000}}, Award2 = {{"res",6,600,10000},{"res",1,90000,10000},{"res",2,90000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3006] = { ID = WEEKLY_ACTIVITY_RANK_3006, ActivityID = 3, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,6000,10000}}, Award2 = {{"res",6,480,10000},{"res",1,72000,10000},{"res",2,72000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3007] = { ID = WEEKLY_ACTIVITY_RANK_3007, ActivityID = 3, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,360,10000},{"res",1,60000,10000},{"res",2,60000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3008] = { ID = WEEKLY_ACTIVITY_RANK_3008, ActivityID = 3, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,4200,10000}}, Award2 = {{"res",6,300,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3009] = { ID = WEEKLY_ACTIVITY_RANK_3009, ActivityID = 3, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,3600,10000}}, Award2 = {{"res",6,240,10000},{"res",1,36000,10000},{"res",2,36000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3010] = { ID = WEEKLY_ACTIVITY_RANK_3010, ActivityID = 3, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,3000,10000}}, Award2 = {{"res",6,180,10000},{"res",1,30000,10000},{"res",2,30000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3011] = { ID = WEEKLY_ACTIVITY_RANK_3011, ActivityID = 3, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,150,10000},{"res",1,15000,10000},{"res",2,15000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3012] = { ID = WEEKLY_ACTIVITY_RANK_3012, ActivityID = 3, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,1800,10000}}, Award2 = {{"res",6,120,10000},{"res",1,6000,10000},{"res",2,6000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3013] = { ID = WEEKLY_ACTIVITY_RANK_3013, ActivityID = 3, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1200,10000}}, Award2 = {{"res",6,90,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3014] = { ID = WEEKLY_ACTIVITY_RANK_3014, ActivityID = 3, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,600,10000}}, Award2 = {{"res",6,60,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_3015] = { ID = WEEKLY_ACTIVITY_RANK_3015, ActivityID = 3, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,300,10000}}, Award2 = {{"res",6,30,10000},{"res",1,3000,10000},{"res",2,3000,10000}}, MailId = 10091,},
	[WEEKLY_ACTIVITY_RANK_4001] = { ID = WEEKLY_ACTIVITY_RANK_4001, ActivityID = 4, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,35000,10000}}, Award2 = {{"res",6,3500,10000},{"res",1,350000,10000},{"res",2,350000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4002] = { ID = WEEKLY_ACTIVITY_RANK_4002, ActivityID = 4, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,21000,10000}}, Award2 = {{"res",6,2100,10000},{"res",1,280000,10000},{"res",2,280000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4003] = { ID = WEEKLY_ACTIVITY_RANK_4003, ActivityID = 4, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,14000,10000}}, Award2 = {{"res",6,1400,10000},{"res",1,210000,10000},{"res",2,210000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4004] = { ID = WEEKLY_ACTIVITY_RANK_4004, ActivityID = 4, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,10500,10000}}, Award2 = {{"res",6,1050,10000},{"res",1,140000,10000},{"res",2,140000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4005] = { ID = WEEKLY_ACTIVITY_RANK_4005, ActivityID = 4, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,8400,10000}}, Award2 = {{"res",6,700,10000},{"res",1,105000,10000},{"res",2,105000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4006] = { ID = WEEKLY_ACTIVITY_RANK_4006, ActivityID = 4, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,7000,10000}}, Award2 = {{"res",6,560,10000},{"res",1,84000,10000},{"res",2,84000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4007] = { ID = WEEKLY_ACTIVITY_RANK_4007, ActivityID = 4, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,5600,10000}}, Award2 = {{"res",6,420,10000},{"res",1,70000,10000},{"res",2,70000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4008] = { ID = WEEKLY_ACTIVITY_RANK_4008, ActivityID = 4, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,4900,10000}}, Award2 = {{"res",6,350,10000},{"res",1,56000,10000},{"res",2,56000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4009] = { ID = WEEKLY_ACTIVITY_RANK_4009, ActivityID = 4, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,4200,10000}}, Award2 = {{"res",6,280,10000},{"res",1,42000,10000},{"res",2,42000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4010] = { ID = WEEKLY_ACTIVITY_RANK_4010, ActivityID = 4, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,3500,10000}}, Award2 = {{"res",6,210,10000},{"res",1,35000,10000},{"res",2,35000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4011] = { ID = WEEKLY_ACTIVITY_RANK_4011, ActivityID = 4, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,2800,10000}}, Award2 = {{"res",6,175,10000},{"res",1,17500,10000},{"res",2,17500,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4012] = { ID = WEEKLY_ACTIVITY_RANK_4012, ActivityID = 4, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2100,10000}}, Award2 = {{"res",6,140,10000},{"res",1,7000,10000},{"res",2,7000,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4013] = { ID = WEEKLY_ACTIVITY_RANK_4013, ActivityID = 4, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1400,10000}}, Award2 = {{"res",6,105,10000},{"res",1,3500,10000},{"res",2,3500,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4014] = { ID = WEEKLY_ACTIVITY_RANK_4014, ActivityID = 4, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,700,10000}}, Award2 = {{"res",6,70,10000},{"res",1,3500,10000},{"res",2,3500,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_4015] = { ID = WEEKLY_ACTIVITY_RANK_4015, ActivityID = 4, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,350,10000}}, Award2 = {{"res",6,35,10000},{"res",1,3500,10000},{"res",2,3500,10000}}, MailId = 10092,},
	[WEEKLY_ACTIVITY_RANK_5001] = { ID = WEEKLY_ACTIVITY_RANK_5001, ActivityID = 5, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,40000,10000}}, Award2 = {{"res",6,4000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5002] = { ID = WEEKLY_ACTIVITY_RANK_5002, ActivityID = 5, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,24000,10000}}, Award2 = {{"res",6,2400,10000},{"res",1,320000,10000},{"res",2,320000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5003] = { ID = WEEKLY_ACTIVITY_RANK_5003, ActivityID = 5, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,16000,10000}}, Award2 = {{"res",6,1600,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5004] = { ID = WEEKLY_ACTIVITY_RANK_5004, ActivityID = 5, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,160000,10000},{"res",2,160000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5005] = { ID = WEEKLY_ACTIVITY_RANK_5005, ActivityID = 5, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,9600,10000}}, Award2 = {{"res",6,800,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5006] = { ID = WEEKLY_ACTIVITY_RANK_5006, ActivityID = 5, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,640,10000},{"res",1,96000,10000},{"res",2,96000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5007] = { ID = WEEKLY_ACTIVITY_RANK_5007, ActivityID = 5, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,6400,10000}}, Award2 = {{"res",6,480,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5008] = { ID = WEEKLY_ACTIVITY_RANK_5008, ActivityID = 5, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,5600,10000}}, Award2 = {{"res",6,400,10000},{"res",1,64000,10000},{"res",2,64000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5009] = { ID = WEEKLY_ACTIVITY_RANK_5009, ActivityID = 5, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,320,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5010] = { ID = WEEKLY_ACTIVITY_RANK_5010, ActivityID = 5, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,4000,10000}}, Award2 = {{"res",6,240,10000},{"res",1,40000,10000},{"res",2,40000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5011] = { ID = WEEKLY_ACTIVITY_RANK_5011, ActivityID = 5, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,3200,10000}}, Award2 = {{"res",6,200,10000},{"res",1,20000,10000},{"res",2,20000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5012] = { ID = WEEKLY_ACTIVITY_RANK_5012, ActivityID = 5, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,160,10000},{"res",1,8000,10000},{"res",2,8000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5013] = { ID = WEEKLY_ACTIVITY_RANK_5013, ActivityID = 5, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1600,10000}}, Award2 = {{"res",6,120,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5014] = { ID = WEEKLY_ACTIVITY_RANK_5014, ActivityID = 5, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,800,10000}}, Award2 = {{"res",6,80,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_5015] = { ID = WEEKLY_ACTIVITY_RANK_5015, ActivityID = 5, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,400,10000}}, Award2 = {{"res",6,40,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10093,},
	[WEEKLY_ACTIVITY_RANK_6001] = { ID = WEEKLY_ACTIVITY_RANK_6001, ActivityID = 6, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,40000,10000}}, Award2 = {{"res",6,4000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6002] = { ID = WEEKLY_ACTIVITY_RANK_6002, ActivityID = 6, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,24000,10000}}, Award2 = {{"res",6,2400,10000},{"res",1,320000,10000},{"res",2,320000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6003] = { ID = WEEKLY_ACTIVITY_RANK_6003, ActivityID = 6, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,16000,10000}}, Award2 = {{"res",6,1600,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6004] = { ID = WEEKLY_ACTIVITY_RANK_6004, ActivityID = 6, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,160000,10000},{"res",2,160000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6005] = { ID = WEEKLY_ACTIVITY_RANK_6005, ActivityID = 6, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,9600,10000}}, Award2 = {{"res",6,800,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6006] = { ID = WEEKLY_ACTIVITY_RANK_6006, ActivityID = 6, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,640,10000},{"res",1,96000,10000},{"res",2,96000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6007] = { ID = WEEKLY_ACTIVITY_RANK_6007, ActivityID = 6, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,6400,10000}}, Award2 = {{"res",6,480,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6008] = { ID = WEEKLY_ACTIVITY_RANK_6008, ActivityID = 6, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,5600,10000}}, Award2 = {{"res",6,400,10000},{"res",1,64000,10000},{"res",2,64000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6009] = { ID = WEEKLY_ACTIVITY_RANK_6009, ActivityID = 6, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,320,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6010] = { ID = WEEKLY_ACTIVITY_RANK_6010, ActivityID = 6, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,4000,10000}}, Award2 = {{"res",6,240,10000},{"res",1,40000,10000},{"res",2,40000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6011] = { ID = WEEKLY_ACTIVITY_RANK_6011, ActivityID = 6, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,3200,10000}}, Award2 = {{"res",6,200,10000},{"res",1,20000,10000},{"res",2,20000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6012] = { ID = WEEKLY_ACTIVITY_RANK_6012, ActivityID = 6, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,160,10000},{"res",1,8000,10000},{"res",2,8000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6013] = { ID = WEEKLY_ACTIVITY_RANK_6013, ActivityID = 6, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1600,10000}}, Award2 = {{"res",6,120,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6014] = { ID = WEEKLY_ACTIVITY_RANK_6014, ActivityID = 6, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,800,10000}}, Award2 = {{"res",6,80,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_6015] = { ID = WEEKLY_ACTIVITY_RANK_6015, ActivityID = 6, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,400,10000}}, Award2 = {{"res",6,40,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10094,},
	[WEEKLY_ACTIVITY_RANK_7001] = { ID = WEEKLY_ACTIVITY_RANK_7001, ActivityID = 7, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,40000,10000}}, Award2 = {{"res",6,4000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7002] = { ID = WEEKLY_ACTIVITY_RANK_7002, ActivityID = 7, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,24000,10000}}, Award2 = {{"res",6,2400,10000},{"res",1,320000,10000},{"res",2,320000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7003] = { ID = WEEKLY_ACTIVITY_RANK_7003, ActivityID = 7, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,16000,10000}}, Award2 = {{"res",6,1600,10000},{"res",1,240000,10000},{"res",2,240000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7004] = { ID = WEEKLY_ACTIVITY_RANK_7004, ActivityID = 7, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,160000,10000},{"res",2,160000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7005] = { ID = WEEKLY_ACTIVITY_RANK_7005, ActivityID = 7, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,9600,10000}}, Award2 = {{"res",6,800,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7006] = { ID = WEEKLY_ACTIVITY_RANK_7006, ActivityID = 7, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,640,10000},{"res",1,96000,10000},{"res",2,96000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7007] = { ID = WEEKLY_ACTIVITY_RANK_7007, ActivityID = 7, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,6400,10000}}, Award2 = {{"res",6,480,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7008] = { ID = WEEKLY_ACTIVITY_RANK_7008, ActivityID = 7, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,5600,10000}}, Award2 = {{"res",6,400,10000},{"res",1,64000,10000},{"res",2,64000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7009] = { ID = WEEKLY_ACTIVITY_RANK_7009, ActivityID = 7, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,4800,10000}}, Award2 = {{"res",6,320,10000},{"res",1,48000,10000},{"res",2,48000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7010] = { ID = WEEKLY_ACTIVITY_RANK_7010, ActivityID = 7, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,4000,10000}}, Award2 = {{"res",6,240,10000},{"res",1,40000,10000},{"res",2,40000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7011] = { ID = WEEKLY_ACTIVITY_RANK_7011, ActivityID = 7, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,3200,10000}}, Award2 = {{"res",6,200,10000},{"res",1,20000,10000},{"res",2,20000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7012] = { ID = WEEKLY_ACTIVITY_RANK_7012, ActivityID = 7, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2400,10000}}, Award2 = {{"res",6,160,10000},{"res",1,8000,10000},{"res",2,8000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7013] = { ID = WEEKLY_ACTIVITY_RANK_7013, ActivityID = 7, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1600,10000}}, Award2 = {{"res",6,120,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7014] = { ID = WEEKLY_ACTIVITY_RANK_7014, ActivityID = 7, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,800,10000}}, Award2 = {{"res",6,80,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_7015] = { ID = WEEKLY_ACTIVITY_RANK_7015, ActivityID = 7, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,400,10000}}, Award2 = {{"res",6,40,10000},{"res",1,4000,10000},{"res",2,4000,10000}}, MailId = 10095,},
	[WEEKLY_ACTIVITY_RANK_100001] = { ID = WEEKLY_ACTIVITY_RANK_100001, ActivityID = 100, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,50000,10000}}, Award2 = {{"res",6,5000,10000},{"res",1,500000,10000},{"res",2,500000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100002] = { ID = WEEKLY_ACTIVITY_RANK_100002, ActivityID = 100, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,30000,10000}}, Award2 = {{"res",6,3000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100003] = { ID = WEEKLY_ACTIVITY_RANK_100003, ActivityID = 100, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,20000,10000}}, Award2 = {{"res",6,2000,10000},{"res",1,300000,10000},{"res",2,300000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100004] = { ID = WEEKLY_ACTIVITY_RANK_100004, ActivityID = 100, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,15000,10000}}, Award2 = {{"res",6,1500,10000},{"res",1,200000,10000},{"res",2,200000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100005] = { ID = WEEKLY_ACTIVITY_RANK_100005, ActivityID = 100, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,12000,10000}}, Award2 = {{"res",6,1000,10000},{"res",1,150000,10000},{"res",2,150000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100006] = { ID = WEEKLY_ACTIVITY_RANK_100006, ActivityID = 100, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,10000,10000}}, Award2 = {{"res",6,800,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100007] = { ID = WEEKLY_ACTIVITY_RANK_100007, ActivityID = 100, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,600,10000},{"res",1,100000,10000},{"res",2,100000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100008] = { ID = WEEKLY_ACTIVITY_RANK_100008, ActivityID = 100, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,7000,10000}}, Award2 = {{"res",6,500,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100009] = { ID = WEEKLY_ACTIVITY_RANK_100009, ActivityID = 100, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,6000,10000}}, Award2 = {{"res",6,400,10000},{"res",1,60000,10000},{"res",2,60000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100010] = { ID = WEEKLY_ACTIVITY_RANK_100010, ActivityID = 100, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,5000,10000}}, Award2 = {{"res",6,300,10000},{"res",1,50000,10000},{"res",2,50000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100011] = { ID = WEEKLY_ACTIVITY_RANK_100011, ActivityID = 100, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,4000,10000}}, Award2 = {{"res",6,250,10000},{"res",1,25000,10000},{"res",2,25000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100012] = { ID = WEEKLY_ACTIVITY_RANK_100012, ActivityID = 100, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,3000,10000}}, Award2 = {{"res",6,200,10000},{"res",1,10000,10000},{"res",2,10000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100013] = { ID = WEEKLY_ACTIVITY_RANK_100013, ActivityID = 100, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,2000,10000}}, Award2 = {{"res",6,150,10000},{"res",1,5000,10000},{"res",2,5000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100014] = { ID = WEEKLY_ACTIVITY_RANK_100014, ActivityID = 100, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,1000,10000}}, Award2 = {{"res",6,100,10000},{"res",1,5000,10000},{"res",2,5000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_100015] = { ID = WEEKLY_ACTIVITY_RANK_100015, ActivityID = 100, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,500,10000}}, Award2 = {{"res",6,50,10000},{"res",1,5000,10000},{"res",2,5000,10000}}, MailId = 10096,},
	[WEEKLY_ACTIVITY_RANK_1000001] = { ID = WEEKLY_ACTIVITY_RANK_1000001, ActivityID = 1000, RankZone = {1,1}, Cond = 0, Award1 = {{"res",9,100000,10000}}, Award2 = {{"res",6,10000,10000},{"res",1,1000000,10000},{"res",2,1000000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000002] = { ID = WEEKLY_ACTIVITY_RANK_1000002, ActivityID = 1000, RankZone = {2,2}, Cond = 0, Award1 = {{"res",9,80000,10000}}, Award2 = {{"res",6,6000,10000},{"res",1,800000,10000},{"res",2,800000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000003] = { ID = WEEKLY_ACTIVITY_RANK_1000003, ActivityID = 1000, RankZone = {3,3}, Cond = 0, Award1 = {{"res",9,60000,10000}}, Award2 = {{"res",6,4000,10000},{"res",1,600000,10000},{"res",2,600000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000004] = { ID = WEEKLY_ACTIVITY_RANK_1000004, ActivityID = 1000, RankZone = {4,4}, Cond = 0, Award1 = {{"res",9,50000,10000}}, Award2 = {{"res",6,3000,10000},{"res",1,400000,10000},{"res",2,400000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000005] = { ID = WEEKLY_ACTIVITY_RANK_1000005, ActivityID = 1000, RankZone = {5,5}, Cond = 0, Award1 = {{"res",9,40000,10000}}, Award2 = {{"res",6,2500,10000},{"res",1,300000,10000},{"res",2,300000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000006] = { ID = WEEKLY_ACTIVITY_RANK_1000006, ActivityID = 1000, RankZone = {6,6}, Cond = 0, Award1 = {{"res",9,30000,10000}}, Award2 = {{"res",6,2000,10000},{"res",1,250000,10000},{"res",2,250000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000007] = { ID = WEEKLY_ACTIVITY_RANK_1000007, ActivityID = 1000, RankZone = {7,7}, Cond = 0, Award1 = {{"res",9,20000,10000}}, Award2 = {{"res",6,1500,10000},{"res",1,200000,10000},{"res",2,200000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000008] = { ID = WEEKLY_ACTIVITY_RANK_1000008, ActivityID = 1000, RankZone = {8,8}, Cond = 0, Award1 = {{"res",9,15000,10000}}, Award2 = {{"res",6,1200,10000},{"res",1,150000,10000},{"res",2,150000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000009] = { ID = WEEKLY_ACTIVITY_RANK_1000009, ActivityID = 1000, RankZone = {9,9}, Cond = 0, Award1 = {{"res",9,10000,10000}}, Award2 = {{"res",6,1000,10000},{"res",1,120000,10000},{"res",2,120000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000010] = { ID = WEEKLY_ACTIVITY_RANK_1000010, ActivityID = 1000, RankZone = {10,10}, Cond = 0, Award1 = {{"res",9,8000,10000}}, Award2 = {{"res",6,800,10000},{"res",1,100000,10000},{"res",2,100000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000011] = { ID = WEEKLY_ACTIVITY_RANK_1000011, ActivityID = 1000, RankZone = {11,20}, Cond = 0, Award1 = {{"res",9,5000,10000}}, Award2 = {{"res",6,500,10000},{"res",1,90000,10000},{"res",2,90000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000012] = { ID = WEEKLY_ACTIVITY_RANK_1000012, ActivityID = 1000, RankZone = {21,40}, Cond = 0, Award1 = {{"res",9,2500,10000}}, Award2 = {{"res",6,400,10000},{"res",1,80000,10000},{"res",2,80000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000013] = { ID = WEEKLY_ACTIVITY_RANK_1000013, ActivityID = 1000, RankZone = {41,100}, Cond = 0, Award1 = {{"res",9,1000,10000}}, Award2 = {{"res",6,300,10000},{"res",1,70000,10000},{"res",2,70000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000014] = { ID = WEEKLY_ACTIVITY_RANK_1000014, ActivityID = 1000, RankZone = {101,200}, Cond = 0, Award1 = {{"res",9,1000,10000}}, Award2 = {{"res",6,200,10000},{"res",1,60000,10000},{"res",2,60000,10000}}, MailId = 10040,},
	[WEEKLY_ACTIVITY_RANK_1000015] = { ID = WEEKLY_ACTIVITY_RANK_1000015, ActivityID = 1000, RankZone = {201,500}, Cond = 0, Award1 = {{"res",9,500,10000}}, Award2 = {{"res",6,100,10000},{"res",1,50000,10000},{"res",2,50000,10000}}, MailId = 10040,},
}
