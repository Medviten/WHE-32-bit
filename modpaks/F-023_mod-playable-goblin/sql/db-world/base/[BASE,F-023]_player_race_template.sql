/* The stock races this race copies, see F-091_race-setup */
DELETE FROM `player_race_template` WHERE `race` = @Goblin;
INSERT INTO `player_race_template` (`race`, `home_race`, `kin_race`, `shapeshift_skin_color`) VALUES
(@Goblin, @Orc, @Goblin, 0);
