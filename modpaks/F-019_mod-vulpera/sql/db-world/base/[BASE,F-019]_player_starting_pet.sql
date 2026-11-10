/* The starting pet of this race's hunters, in F-128 (tools/races/retail_pets.py) */
DELETE FROM `player_starting_pet` WHERE `race` = @Vulpera;
INSERT INTO `player_starting_pet` (`race`, `creature_entry`) VALUES
(@Vulpera, 69121); -- Serpent
