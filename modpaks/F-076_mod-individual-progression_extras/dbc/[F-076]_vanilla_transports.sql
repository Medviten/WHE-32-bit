-- Vanilla transports: the Northspear's path from Stormwind Harbor to Valgarde (TaxiPath 1981, taxi nodes 300 to 196),
-- which IP's zz_optional_vanilla_transports.sql (sql/db-world/base) gives the Northspear instead of Menethil Harbor's
-- (IP: in patch-V/patch-S and taxipath_dbc/taxipathnode_dbc).
-- Nodes 0-10 are those of the Stormwind - Auberdine path (967), 11-48 those of Menethil Harbor - Valgarde (964).

DELETE FROM `taxipath` WHERE `id` = @NorthspearPath;
INSERT INTO `taxipath` (`id`, `from_taxi_node`, `to_taxi_node`, `cost`) VALUES
    (@NorthspearPath, 300, 196, 0);

DELETE FROM `taxipathnode` WHERE `path_id` = @NorthspearPath;
-- New ids after the highest one already there (as F-006 does), so they never land on another modpak's points:
-- they used to be 50000-50048, which are Open Azeroth's (F-010) Hyjal - Talrendis Point points
SET @TaxiPathNodeID = (SELECT COALESCE(MAX(id), 0) FROM `taxipathnode`);
INSERT INTO `taxipathnode` (`id`, `path_id`, `node_index`, `map`, `x`, `y`, `z`, `flags`, `delay`, `arrival_event_id`, `departure_event_id`) VALUES
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 0, 0, -9064.902, 1516.2056, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 1, 0, -9020.901, 1430.217, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 2, 0, -8961.511, 1355.442, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 3, 0, -8864.228, 1311.78687, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 4, 0, -8746.162, 1310.55237, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 5, 0, -8650.719, 1346.05127, 0, 2, 60, 19030, 0), -- Stormwind Harbor, departure
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 6, 0, -8588.92, 1379.80371, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 7, 0, -8547.475, 1420.05884, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 8, 0, -8520.636, 1496.645, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 9, 0, -8544.172, 1636.45056, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 10, 0, -8663.575, 1853.96814, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 11, 571, -961.4925, -5707.88135, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 12, 571, -403.671143, -5502.03564, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 13, 571, -155.525177, -5409.379, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 14, 571, -7.784831, -5328.58057, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 15, 571, 61.4432526, -5204.762, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 16, 571, 125.446716, -5139.68359, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 17, 571, 191.763885, -5084.757, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 18, 571, 262.733948, -5086.47754, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 19, 571, 351.297638, -5152.98242, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 20, 571, 446.2677, -5151.3623, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 21, 571, 520.494934, -5171.032, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 22, 571, 585.5191, -5206.27148, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 23, 571, 639.3492, -5246.682, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 24, 571, 692.096, -5291.55273, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 25, 571, 716.334656, -5338.55371, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 26, 571, 748.588745, -5422.865, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 27, 571, 799.4392, -5462.138, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 28, 571, 889.717957, -5470.501, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 29, 571, 955.5159, -5400.40039, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 30, 571, 983.0024, -5321.90332, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 31, 571, 993.5777, -5252.186, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 32, 571, 978.387939, -5179.028, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 33, 571, 907.8108, -5136.40527, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 34, 571, 807.639832, -5144.284, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 35, 571, 694.530151, -5148.08545, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 36, 571, 584.0138, -5118.85547, 0, 2, 60, 19123, 0), -- Valgarde, arrival
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 37, 571, 507.206268, -5107.522, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 38, 571, 433.1082, -5142.845, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 39, 571, 357.554474, -5150.58154, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 40, 571, 294.414276, -5111.416, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 41, 571, 236.737518, -5080.412, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 42, 571, 179.596024, -5097.815, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 43, 571, 132.027451, -5135.98828, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 44, 571, 71.95768, -5198.6, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 45, 571, -3.877062, -5315.229, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 46, 571, -150.968689, -5416.606, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 47, 571, -400.795319, -5508.57666, 0, 0, 0, 0, 0),
    (@TaxiPathNodeID := @TaxiPathNodeID + 1, @NorthspearPath, 48, 571, -1009.90808, -5783.04834, 0, 0, 0, 0, 0);
