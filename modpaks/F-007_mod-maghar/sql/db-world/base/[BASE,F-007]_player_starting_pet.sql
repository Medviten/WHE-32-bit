/* The starting pet of this race's hunters, in F-128 (tools/races/retail_pets.py) */
DELETE FROM `player_starting_pet` WHERE `race` = @MagharOrc;
INSERT INTO `player_starting_pet` (`race`, `creature_entry`) VALUES
(@MagharOrc, 69116); -- Wolf
