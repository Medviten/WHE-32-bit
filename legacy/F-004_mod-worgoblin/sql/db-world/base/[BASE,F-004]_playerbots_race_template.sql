/* What bots of this race do differently, see F-091_race-setup */
DELETE FROM `playerbots_race_template` WHERE `race` IN (@Goblin, @Worgen, @Gilnean);
INSERT INTO `playerbots_race_template` (`race`, `name_race`, `mounts`) VALUES
(@Goblin, @Gnome, '87090 87091'),
(@Worgen, NULL, '103195 103196'),
(@Gilnean, NULL, '103195 103196');
