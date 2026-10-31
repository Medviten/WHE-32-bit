-- TBC PvP prices: the item costs (honor and battleground marks) the vendors of IP's
-- zz_optional_tbc_pvp_prices.sql (sql/db-world/base) use, at @ECID+N (IP: in patch-V/patch-S and itemextendedcost_dbc)

DELETE FROM `itemextendedcost` WHERE `id` IN (@ECID+125, @ECID+127, @ECID+129, @ECID+131, @ECID+165, @ECID+423, @ECID+427, @ECID+428, @ECID+444, @ECID+463, @ECID+464, @ECID+465, @ECID+491, @ECID+492, @ECID+541, @ECID+542, @ECID+565, @ECID+567, @ECID+652, @ECID+653, @ECID+774, @ECID+838, @ECID+930, @ECID+931, @ECID+986, @ECID+1006, @ECID+1007, @ECID+1050, @ECID+1564, @ECID+1648, @ECID+1649, @ECID+1652, @ECID+1653, @ECID+1911, @ECID+1923, @ECID+1935, @ECID+2237, @ECID+2238, @ECID+2239, @ECID+2240, @ECID+2242, @ECID+2257, @ECID+2259, @ECID+2261, @ECID+2263, @ECID+2265, @ECID+2267, @ECID+2291);
INSERT INTO `itemextendedcost` (`id`, `honor_points`, `req_item_1`, `req_item_2`, `req_item_3`, `req_item_cost_1`, `req_item_cost_2`, `req_item_cost_3`) VALUES
    (@ECID+125, 22950, @EotSMark, 0, 0, 10, 0, 0), -- 22950 honor + 10 Eye of the Storm marks
    (@ECID+127, 15300, @EotSMark, 0, 0, 10, 0, 0), -- 15300 honor + 10 Eye of the Storm marks
    (@ECID+129, 11934, @AVMark, 0, 0, 10, 0, 0), -- 11934 honor + 10 Alterac Valley marks
    (@ECID+131, 30600, @AVMark, 0, 0, 40, 0, 0), -- 30600 honor + 40 Alterac Valley marks
    (@ECID+165, 9435, @ABMark, 0, 0, 20, 0, 0), -- 9435 honor + 20 Arathi Basin marks
    (@ECID+423, 0, @AVMark, @ABMark, @WSGMark, 30, 30, 30), -- 30 Alterac Valley + 30 Arathi Basin + 30 Warsong Gulch marks
    (@ECID+427, 2805, @ABMark, 0, 0, 20, 0, 0), -- 2805 honor + 20 Arathi Basin marks
    (@ECID+428, 2805, @AVMark, 0, 0, 20, 0, 0), -- 2805 honor + 20 Alterac Valley marks
    (@ECID+444, 4335, @AVMark, 0, 0, 30, 0, 0), -- 4335 honor + 30 Alterac Valley marks
    (@ECID+463, 13770, @ABMark, 0, 0, 30, 0, 0), -- 13770 honor + 30 Arathi Basin marks
    (@ECID+464, 13005, @AVMark, 0, 0, 30, 0, 0), -- 13005 honor + 30 Alterac Valley marks
    (@ECID+465, 8415, @ABMark, 0, 0, 20, 0, 0), -- 8415 honor + 20 Arathi Basin marks
    (@ECID+491, 1530, @WSGMark, 0, 0, 20, 0, 0), -- 1530 honor + 20 Warsong Gulch marks
    (@ECID+492, 1530, @WSGMark, 0, 0, 10, 0, 0), -- 1530 honor + 10 Warsong Gulch marks
    (@ECID+541, 8415, @AVMark, 0, 0, 20, 0, 0), -- 8415 honor + 20 Alterac Valley marks
    (@ECID+542, 13005, @WSGMark, 0, 0, 30, 0, 0), -- 13005 honor + 30 Warsong Gulch marks
    (@ECID+565, 15300, @ABMark, 0, 0, 20, 0, 0), -- 15300 honor + 20 Arathi Basin marks
    (@ECID+567, 15300, @ABMark, 0, 0, 40, 0, 0), -- 15300 honor + 40 Arathi Basin marks
    (@ECID+652, 4590, @ABMark, 0, 0, 30, 0, 0), -- 4590 honor + 30 Arathi Basin marks
    (@ECID+653, 4335, @WSGMark, 0, 0, 30, 0, 0), -- 4335 honor + 30 Warsong Gulch marks
    (@ECID+774, 1530, @ABMark, 0, 0, 10, 0, 0), -- 1530 honor + 10 Arathi Basin marks
    (@ECID+838, 95, @WSGMark, 0, 0, 20, 0, 0), -- 95 honor + 20 Warsong Gulch marks
    (@ECID+930, 208, @WSGMark, 0, 0, 20, 0, 0), -- 208 honor + 20 Warsong Gulch marks
    (@ECID+931, 208, @WSGMark, 0, 0, 10, 0, 0), -- 208 honor + 10 Warsong Gulch marks
    (@ECID+986, 208, @ABMark, 0, 0, 10, 0, 0), -- 208 honor + 10 Arathi Basin marks
    (@ECID+1006, 0, @AVMark, @ABMark, @WSGMark, 20, 20, 20), -- 20 Alterac Valley + 20 Arathi Basin + 20 Warsong Gulch marks
    (@ECID+1007, 0, @ABMark, @WSGMark, 0, 3, 3, 0), -- 3 Arathi Basin + 3 Warsong Gulch marks
    (@ECID+1050, 95, @ABMark, 0, 0, 10, 0, 0), -- 95 honor + 10 Arathi Basin marks
    (@ECID+1564, 2, 0, 0, 0, 0, 0, 0), -- 2 honor
    (@ECID+1648, 0, @ABMark, 0, 0, 2, 0, 0), -- 2 Arathi Basin marks
    (@ECID+1649, 0, @AVMark, 0, 0, 2, 0, 0), -- 2 Alterac Valley marks
    (@ECID+1652, 0, @EotSMark, 0, 0, 2, 0, 0), -- 2 Eye of the Storm marks
    (@ECID+1653, 0, @WSGMark, 0, 0, 2, 0, 0), -- 2 Warsong Gulch marks
    (@ECID+1911, 17850, @EotSMark, 0, 0, 40, 0, 0), -- 17850 honor + 40 Eye of the Storm marks
    (@ECID+1923, 17850, @ABMark, 0, 0, 40, 0, 0), -- 17850 honor + 40 Arathi Basin marks
    (@ECID+1935, 11794, @WSGMark, 0, 0, 20, 0, 0), -- 11794 honor + 20 Warsong Gulch marks
    (@ECID+2237, 27000, @AVMark, 0, 0, 40, 0, 0), -- 27000 honor + 40 Alterac Valley marks
    (@ECID+2238, 25200, @EotSMark, 0, 0, 20, 0, 0), -- 25200 honor + 20 Eye of the Storm marks
    (@ECID+2239, 18000, @EotSMark, 0, 0, 20, 0, 0), -- 18000 honor + 20 Eye of the Storm marks
    (@ECID+2240, 9000, @EotSMark, 0, 0, 20, 0, 0), -- 9000 honor + 20 Eye of the Storm marks
    (@ECID+2242, 15000, @EotSMark, 0, 0, 20, 0, 0), -- 15000 honor + 20 Eye of the Storm marks
    (@ECID+2257, 24480, @AVMark, 0, 0, 40, 0, 0), -- 24480 honor + 40 Alterac Valley marks
    (@ECID+2259, 13219, @ABMark, 0, 0, 30, 0, 0), -- 13219 honor + 30 Arathi Basin marks
    (@ECID+2261, 8078, @AVMark, 0, 0, 20, 0, 0), -- 8078 honor + 20 Alterac Valley marks
    (@ECID+2263, 12852, @AVMark, 0, 0, 30, 0, 0), -- 12852 honor + 30 Alterac Valley marks
    (@ECID+2265, 12852, @WSGMark, 0, 0, 30, 0, 0), -- 12852 honor + 30 Warsong Gulch marks
    (@ECID+2267, 8078, @ABMark, 0, 0, 20, 0, 0), -- 8078 honor + 20 Arathi Basin marks
    (@ECID+2291, 12240, @ABMark, 0, 0, 20, 0, 0); -- 12240 honor + 20 Arathi Basin marks
