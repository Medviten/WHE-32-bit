-- Naxxramas 40 and Onyxia 40 of mod-individual-progression's base SQL (4933d45): raid sizes and lockouts
-- (MapDifficulty), boss encounters (DungeonEncounter), LFG entries and the level 60 Kel'Thuzad achievement, which
-- it adds to the *_dbc tables. Deleted there again by sql/db-world/base/[F-075]_dbc_overrides.sql.

-- Naxxramas 40 (naxx40.sql)
DELETE FROM `mapdifficulty` WHERE `id` = 754;
INSERT INTO `mapdifficulty` (`id`, `map_id`, `difficulty`, `message_enus`, `message_flags`, `lockout_duration`, `max_players`, `difficulty_string`) VALUES (754, 533, 2, 'You must be level 60 and in a raid group to enter.', 16712190, 604800, 40, 'RAID_DIFFICULTY_40PLAYER'); -- map 533, 40 players
DELETE FROM `dungeonencounter` WHERE `id` = 1001;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `name_enus`, `name_flags`) VALUES (1001, 533, 2, 'Anub''Rekhan', 16712190); -- Anub'Rekhan
DELETE FROM `dungeonencounter` WHERE `id` = 1002;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1002, 533, 2, 1000, 1, 'Grand Widow Faerlina', 16712190); -- Grand Widow Faerlina
DELETE FROM `dungeonencounter` WHERE `id` = 1003;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1003, 533, 2, 2000, 2, 'Maexxna', 16712190); -- Maexxna
DELETE FROM `dungeonencounter` WHERE `id` = 1004;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1004, 533, 2, 3000, 3, 'Noth the Plaguebringer', 16712190); -- Noth the Plaguebringer
DELETE FROM `dungeonencounter` WHERE `id` = 1005;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1005, 533, 2, 4000, 4, 'Heigan the Unclean', 16712190); -- Heigan the Unclean
DELETE FROM `dungeonencounter` WHERE `id` = 1006;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1006, 533, 2, 5000, 5, 'Loatheb', 16712190); -- Loatheb
DELETE FROM `dungeonencounter` WHERE `id` = 1007;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1007, 533, 2, 6000, 6, 'Instructor Razuvious', 16712190); -- Instructor Razuvious
DELETE FROM `dungeonencounter` WHERE `id` = 1008;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1008, 533, 2, 7000, 7, 'Gothik the Harvester', 16712190); -- Gothik the Harvester
DELETE FROM `dungeonencounter` WHERE `id` = 1009;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1009, 533, 2, 8000, 8, 'The Four Horsemen', 16712190); -- The Four Horsemen
DELETE FROM `dungeonencounter` WHERE `id` = 1010;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1010, 533, 2, 9000, 9, 'Patchwerk', 16712190); -- Patchwerk
DELETE FROM `dungeonencounter` WHERE `id` = 1011;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1011, 533, 2, 10000, 10, 'Grobbulus', 16712190); -- Grobbulus
DELETE FROM `dungeonencounter` WHERE `id` = 1012;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1012, 533, 2, 11000, 11, 'Gluth', 16712190); -- Gluth
DELETE FROM `dungeonencounter` WHERE `id` = 1013;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1013, 533, 2, 12000, 12, 'Thaddius', 16712190); -- Thaddius
DELETE FROM `dungeonencounter` WHERE `id` = 1014;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1014, 533, 2, 13000, 13, 'Sapphiron', 16712190); -- Sapphiron
DELETE FROM `dungeonencounter` WHERE `id` = 1015;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `order_index`, `bit`, `name_enus`, `name_flags`) VALUES (1015, 533, 2, 14000, 14, 'Kel''Thuzad', 16712190); -- Kel'Thuzad
DELETE FROM `lfgdungeons` WHERE `id` = 1001;
INSERT INTO `lfgdungeons` (`id`, `name_enus`, `name_flags`, `min_level`, `max_level`, `target_level`, `target_level_min`, `target_level_max`, `map_id`, `difficulty`, `type_id`, `faction`, `expansion`, `group_id`, `tooltip_flags`) VALUES (1001, 'Naxxramas (Vanilla)', 16712190, 60, 83, 60, 60, 83, 533, 2, 2, -1, 2, 9, 16712188); -- Naxxramas (Vanilla)

-- Onyxia 40 (dungeon_onyxia.sql)
DELETE FROM `mapdifficulty` WHERE `id` = 755;
INSERT INTO `mapdifficulty` (`id`, `map_id`, `difficulty`, `lockout_duration`, `max_players`, `difficulty_string`) VALUES (755, 249, 2, 604800, 40, 'RAID_DIFFICULTY_40PLAYER'); -- map 249, 40 players
DELETE FROM `dungeonencounter` WHERE `id` = 895;
INSERT INTO `dungeonencounter` (`id`, `map_id`, `difficulty`, `name_enus`, `name_flags`) VALUES (895, 249, 2, 'Onyxia', 16712190); -- Onyxia
DELETE FROM `lfgdungeons` WHERE `id` = 1000;
INSERT INTO `lfgdungeons` (`id`, `name_enus`, `name_flags`, `min_level`, `max_level`, `target_level`, `target_level_min`, `target_level_max`, `map_id`, `difficulty`, `type_id`, `faction`, `expansion`, `group_id`, `tooltip_flags`) VALUES (1000, 'Onyxia''s Lair (Vanilla)', 16712190, 60, 83, 60, 60, 83, 249, 2, 2, -1, 2, 9, 16712188); -- Onyxia's Lair (Vanilla)

-- Achievement (player_progression.sql)
DELETE FROM `achievement` WHERE `id` = 533;
INSERT INTO `achievement` (`id`, `faction`, `map`, `name_enus`, `name_flags`, `desc_enus`, `desc_flags`, `category`, `order_in_category`, `spell_icon`, `reward_flags`, `min_criteria_demand`) VALUES (533, -1, 533, 'Naxxramas (Level 60)', 16712190, 'Defeat the classic, level 60 version of Kel''Thuzad.', 16712190, 81, 154, 1898, 16712172, 1); -- Naxxramas (Level 60)
