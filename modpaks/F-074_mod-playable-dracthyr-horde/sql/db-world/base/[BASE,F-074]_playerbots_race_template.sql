/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` = @HordeDracthyr;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@HordeDracthyr, NULL, '394216 394218 394220 394219 384963 385134 385115');
