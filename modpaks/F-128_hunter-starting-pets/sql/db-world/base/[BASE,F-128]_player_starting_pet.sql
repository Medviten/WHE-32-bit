/* The stock races' starting pets (tools/races/retail_pets.py). Entries are in [BASE,F-128]_pet_templates.sql */
DELETE FROM `player_starting_pet` WHERE `race` IN (@Human, @Orc, @Dwarf, @NightElf, @Undead, @Tauren, @Gnome, @Troll, @BloodElf, @Draenei);
INSERT INTO `player_starting_pet` (`race`, `creature_entry`) VALUES
(@Human, 69100), -- Wolf
(@Orc, 69101), -- Boar
(@Dwarf, 69102), -- Bear
(@NightElf, 69103), -- Cat
(@Undead, 69104), -- Spider
(@Tauren, 69105), -- Tallstrider
(@Gnome, 69106), -- Mechanical
(@Troll, 69107), -- Raptor
(@BloodElf, 69108), -- Dragonhawk
(@Draenei, 69109); -- Moth
