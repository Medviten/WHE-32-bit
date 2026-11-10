/* The starting pet of this race's hunters, in F-128 (tools/races/retail_pets.py) */
DELETE FROM `player_starting_pet` WHERE `race` = @Worgen;
INSERT INTO `player_starting_pet` (`race`, `creature_entry`) VALUES
(@Worgen, 69111); -- Hound
