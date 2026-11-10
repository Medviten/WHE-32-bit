/* The starting pet of this race's hunters, in F-128 (tools/races/retail_pets.py) */
DELETE FROM `player_starting_pet` WHERE `race` = @VoidElf;
INSERT INTO `player_starting_pet` (`race`, `creature_entry`) VALUES
(@VoidElf, 69120); -- Warp Stalker
