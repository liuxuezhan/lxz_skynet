--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

prop_pt_mall_item = {

	[DEF_BLACK_MARKET_ITEM_1] = { ID = DEF_BLACK_MARKET_ITEM_1, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,141}}, Notice = 0, Point = 5, Group = 1,},
	[DEF_BLACK_MARKET_ITEM_2] = { ID = DEF_BLACK_MARKET_ITEM_2, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,200}}, Notice = 0, Point = 5, Group = 1,},
	[DEF_BLACK_MARKET_ITEM_3] = { ID = DEF_BLACK_MARKET_ITEM_3, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,250}}, Notice = 0, Point = 6, Group = 1,},
	[DEF_BLACK_MARKET_ITEM_4] = { ID = DEF_BLACK_MARKET_ITEM_4, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,280}}, Notice = 1, Point = 6, Group = 1,},
	[DEF_BLACK_MARKET_ITEM_5] = { ID = DEF_BLACK_MARKET_ITEM_5, Rate = 100, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,352}}, Notice = 0, Point = 10, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_6] = { ID = DEF_BLACK_MARKET_ITEM_6, Rate = 100, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,352}}, Notice = 0, Point = 10, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_7] = { ID = DEF_BLACK_MARKET_ITEM_7, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,400}}, Notice = 0, Point = 14, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_8] = { ID = DEF_BLACK_MARKET_ITEM_8, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,500}}, Notice = 0, Point = 18, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_9] = { ID = DEF_BLACK_MARKET_ITEM_9, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,600}}, Notice = 0, Point = 18, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_10] = { ID = DEF_BLACK_MARKET_ITEM_10, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,450}}, Notice = 0, Point = 25, Group = 2,},
	[DEF_BLACK_MARKET_ITEM_11] = { ID = DEF_BLACK_MARKET_ITEM_11, Rate = 100, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,600}}, Notice = 0, Point = 25, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_12] = { ID = DEF_BLACK_MARKET_ITEM_12, Rate = 100, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,950}}, Notice = 1, Point = 35, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_13] = { ID = DEF_BLACK_MARKET_ITEM_13, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,1000}}, Notice = 1, Point = 40, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_14] = { ID = DEF_BLACK_MARKET_ITEM_14, Rate = 318, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,1000}}, Notice = 1, Point = 40, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_15] = { ID = DEF_BLACK_MARKET_ITEM_15, Rate = 83, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,1000}}, Notice = 1, Point = 40, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_16] = { ID = DEF_BLACK_MARKET_ITEM_16, Rate = 83, Buy = {{"buff",4,5,10000}}, Pay = {{1,17,1000}}, Notice = 1, Point = 40, Group = 3,},
	[DEF_BLACK_MARKET_ITEM_17] = { ID = DEF_BLACK_MARKET_ITEM_17, Rate = 200, Buy = {{"item",7014001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 11,},
	[DEF_BLACK_MARKET_ITEM_18] = { ID = DEF_BLACK_MARKET_ITEM_18, Rate = 200, Buy = {{"item",7014002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 11,},
	[DEF_BLACK_MARKET_ITEM_19] = { ID = DEF_BLACK_MARKET_ITEM_19, Rate = 200, Buy = {{"item",7015001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 11,},
	[DEF_BLACK_MARKET_ITEM_20] = { ID = DEF_BLACK_MARKET_ITEM_20, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 11,},
	[DEF_BLACK_MARKET_ITEM_21] = { ID = DEF_BLACK_MARKET_ITEM_21, Rate = 200, Buy = {{"item",7018001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 11,},
	[DEF_BLACK_MARKET_ITEM_22] = { ID = DEF_BLACK_MARKET_ITEM_22, Rate = 200, Buy = {{"item",8005001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 12,},
	[DEF_BLACK_MARKET_ITEM_23] = { ID = DEF_BLACK_MARKET_ITEM_23, Rate = 200, Buy = {{"item",8007001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 12,},
	[DEF_BLACK_MARKET_ITEM_24] = { ID = DEF_BLACK_MARKET_ITEM_24, Rate = 200, Buy = {{"item",8007002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 12,},
	[DEF_BLACK_MARKET_ITEM_25] = { ID = DEF_BLACK_MARKET_ITEM_25, Rate = 200, Buy = {{"item",8009001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 12,},
	[DEF_BLACK_MARKET_ITEM_26] = { ID = DEF_BLACK_MARKET_ITEM_26, Rate = 200, Buy = {{"item",8009002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 12,},
	[DEF_BLACK_MARKET_ITEM_27] = { ID = DEF_BLACK_MARKET_ITEM_27, Rate = 200, Buy = {{"item",8009003,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 13,},
	[DEF_BLACK_MARKET_ITEM_28] = { ID = DEF_BLACK_MARKET_ITEM_28, Rate = 200, Buy = {{"item",8009004,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 13,},
	[DEF_BLACK_MARKET_ITEM_29] = { ID = DEF_BLACK_MARKET_ITEM_29, Rate = 200, Buy = {{"item",3001001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 13,},
	[DEF_BLACK_MARKET_ITEM_30] = { ID = DEF_BLACK_MARKET_ITEM_30, Rate = 200, Buy = {{"item",3001002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 13,},
	[DEF_BLACK_MARKET_ITEM_31] = { ID = DEF_BLACK_MARKET_ITEM_31, Rate = 200, Buy = {{"item",3001002,5,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 13,},
	[DEF_BLACK_MARKET_ITEM_32] = { ID = DEF_BLACK_MARKET_ITEM_32, Rate = 200, Buy = {{"item",3001003,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 14,},
	[DEF_BLACK_MARKET_ITEM_33] = { ID = DEF_BLACK_MARKET_ITEM_33, Rate = 200, Buy = {{"item",3002001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 14,},
	[DEF_BLACK_MARKET_ITEM_34] = { ID = DEF_BLACK_MARKET_ITEM_34, Rate = 200, Buy = {{"item",3002002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 14,},
	[DEF_BLACK_MARKET_ITEM_35] = { ID = DEF_BLACK_MARKET_ITEM_35, Rate = 200, Buy = {{"item",3003001,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 14,},
	[DEF_BLACK_MARKET_ITEM_36] = { ID = DEF_BLACK_MARKET_ITEM_36, Rate = 200, Buy = {{"item",3003002,1,10000}}, Pay = {{1,11,1000}}, Notice = 0, Point = 1, Group = 14,},
	[DEF_BLACK_MARKET_ITEM_37] = { ID = DEF_BLACK_MARKET_ITEM_37, Rate = 200, Buy = {{"item",7023002,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 21,},
	[DEF_BLACK_MARKET_ITEM_38] = { ID = DEF_BLACK_MARKET_ITEM_38, Rate = 200, Buy = {{"item",2011001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 21,},
	[DEF_BLACK_MARKET_ITEM_39] = { ID = DEF_BLACK_MARKET_ITEM_39, Rate = 200, Buy = {{"item",2011002,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 21,},
	[DEF_BLACK_MARKET_ITEM_40] = { ID = DEF_BLACK_MARKET_ITEM_40, Rate = 200, Buy = {{"item",2011003,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 21,},
	[DEF_BLACK_MARKET_ITEM_41] = { ID = DEF_BLACK_MARKET_ITEM_41, Rate = 200, Buy = {{"item",7023005,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 22,},
	[DEF_BLACK_MARKET_ITEM_42] = { ID = DEF_BLACK_MARKET_ITEM_42, Rate = 200, Buy = {{"item",7023006,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 22,},
	[DEF_BLACK_MARKET_ITEM_43] = { ID = DEF_BLACK_MARKET_ITEM_43, Rate = 200, Buy = {{"item",7023007,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 22,},
	[DEF_BLACK_MARKET_ITEM_44] = { ID = DEF_BLACK_MARKET_ITEM_44, Rate = 200, Buy = {{"item",7023008,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 22,},
	[DEF_BLACK_MARKET_ITEM_45] = { ID = DEF_BLACK_MARKET_ITEM_45, Rate = 200, Buy = {{"item",7024001,10,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 23,},
	[DEF_BLACK_MARKET_ITEM_46] = { ID = DEF_BLACK_MARKET_ITEM_46, Rate = 200, Buy = {{"item",7024002,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 23,},
	[DEF_BLACK_MARKET_ITEM_47] = { ID = DEF_BLACK_MARKET_ITEM_47, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 23,},
	[DEF_BLACK_MARKET_ITEM_48] = { ID = DEF_BLACK_MARKET_ITEM_48, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 23,},
	[DEF_BLACK_MARKET_ITEM_49] = { ID = DEF_BLACK_MARKET_ITEM_49, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 24,},
	[DEF_BLACK_MARKET_ITEM_50] = { ID = DEF_BLACK_MARKET_ITEM_50, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 24,},
	[DEF_BLACK_MARKET_ITEM_51] = { ID = DEF_BLACK_MARKET_ITEM_51, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 24,},
	[DEF_BLACK_MARKET_ITEM_52] = { ID = DEF_BLACK_MARKET_ITEM_52, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,18,1000}}, Notice = 0, Point = 1, Group = 24,},
	[DEF_BLACK_MARKET_ITEM_53] = { ID = DEF_BLACK_MARKET_ITEM_53, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 31,},
	[DEF_BLACK_MARKET_ITEM_54] = { ID = DEF_BLACK_MARKET_ITEM_54, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 31,},
	[DEF_BLACK_MARKET_ITEM_55] = { ID = DEF_BLACK_MARKET_ITEM_55, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 31,},
	[DEF_BLACK_MARKET_ITEM_56] = { ID = DEF_BLACK_MARKET_ITEM_56, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 31,},
	[DEF_BLACK_MARKET_ITEM_57] = { ID = DEF_BLACK_MARKET_ITEM_57, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 31,},
	[DEF_BLACK_MARKET_ITEM_58] = { ID = DEF_BLACK_MARKET_ITEM_58, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 32,},
	[DEF_BLACK_MARKET_ITEM_59] = { ID = DEF_BLACK_MARKET_ITEM_59, Rate = 200, Buy = {{"item",7014002,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 32,},
	[DEF_BLACK_MARKET_ITEM_60] = { ID = DEF_BLACK_MARKET_ITEM_60, Rate = 200, Buy = {{"item",7015001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 32,},
	[DEF_BLACK_MARKET_ITEM_61] = { ID = DEF_BLACK_MARKET_ITEM_61, Rate = 200, Buy = {{"item",7016001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 32,},
	[DEF_BLACK_MARKET_ITEM_62] = { ID = DEF_BLACK_MARKET_ITEM_62, Rate = 200, Buy = {{"item",7018001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 33,},
	[DEF_BLACK_MARKET_ITEM_63] = { ID = DEF_BLACK_MARKET_ITEM_63, Rate = 200, Buy = {{"item",8005001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 33,},
	[DEF_BLACK_MARKET_ITEM_64] = { ID = DEF_BLACK_MARKET_ITEM_64, Rate = 200, Buy = {{"item",8007001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 33,},
	[DEF_BLACK_MARKET_ITEM_65] = { ID = DEF_BLACK_MARKET_ITEM_65, Rate = 200, Buy = {{"item",8007002,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 33,},
	[DEF_BLACK_MARKET_ITEM_66] = { ID = DEF_BLACK_MARKET_ITEM_66, Rate = 200, Buy = {{"item",8009001,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 34,},
	[DEF_BLACK_MARKET_ITEM_67] = { ID = DEF_BLACK_MARKET_ITEM_67, Rate = 200, Buy = {{"item",8009002,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 34,},
	[DEF_BLACK_MARKET_ITEM_68] = { ID = DEF_BLACK_MARKET_ITEM_68, Rate = 200, Buy = {{"item",8009003,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 34,},
	[DEF_BLACK_MARKET_ITEM_69] = { ID = DEF_BLACK_MARKET_ITEM_69, Rate = 200, Buy = {{"item",8009004,1,10000}}, Pay = {{1,19,1000}}, Notice = 0, Point = 1, Group = 34,},
}
