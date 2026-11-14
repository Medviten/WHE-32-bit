-- MoP's continent placement on the World map (5.4.8 WorldMapContinent), to match MoP's World map art in
-- WHE-common (Interface\WorldMap\World, which shows Pandaria too). Every continent's clickable rectangle on the
-- World map comes from these rows, so they have to agree with the art. Outland's (530) is the same in both.

-- Eastern Kingdoms
UPDATE `worldmapcontinent` SET `left_boundary` = 16, `right_boundary` = 44, `top_boundary` = 10, `bottom_boundary` = 60, `continent_offset_x` = 19.59698, `continent_offset_y` = -3.52696, `scale` = 0.563 WHERE `map_id` = 0;
-- Kalimdor
UPDATE `worldmapcontinent` SET `left_boundary` = 16, `right_boundary` = 48, `top_boundary` = 9, `bottom_boundary` = 54, `continent_offset_x` = -20.4678, `continent_offset_y` = -0.03125, `scale` = 0.5609 WHERE `map_id` = 1;
-- Northrend
UPDATE `worldmapcontinent` SET `left_boundary` = 17, `right_boundary` = 44, `top_boundary` = 12, `bottom_boundary` = 32, `continent_offset_x` = 1.87277, `continent_offset_y` = -8.09821, `scale` = 0.5949 WHERE `map_id` = 571;
