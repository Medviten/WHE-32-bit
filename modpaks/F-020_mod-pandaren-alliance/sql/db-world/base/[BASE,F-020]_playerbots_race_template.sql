/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` = @AlliancePandaren;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@AlliancePandaren, NULL, '127287 127289 120395 127286');
