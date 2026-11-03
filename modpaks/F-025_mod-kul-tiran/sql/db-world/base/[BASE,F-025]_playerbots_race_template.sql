/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` = @KulTiran;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@KulTiran, NULL, '282682');
