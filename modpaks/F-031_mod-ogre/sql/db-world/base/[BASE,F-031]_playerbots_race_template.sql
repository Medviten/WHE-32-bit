/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` = @Ogre;
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@Ogre, NULL, '18990 18989 64657 23249 23248 23247');
