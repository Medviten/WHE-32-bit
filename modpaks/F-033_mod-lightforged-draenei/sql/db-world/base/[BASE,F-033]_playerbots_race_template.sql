/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` = @LightforgedDraenei;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@LightforgedDraenei, NULL, '258022 254258 254259 254069');
