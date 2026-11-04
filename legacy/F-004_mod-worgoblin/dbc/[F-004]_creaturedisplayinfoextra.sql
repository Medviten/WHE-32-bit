-- [F-030] mod-worgoblin: creaturedisplayinfoextra

-- Unspecified versions of each
DELETE FROM `creaturedisplayinfoextra` WHERE `id` IN (@WorgenMaleDisplayExtra, @WorgenFemaleDisplayExtra, @GilneanMaleDisplayExtra, @GilneanFemaleDisplayExtra);
INSERT INTO `creaturedisplayinfoextra` (`id`, `race`, `gender`, `skin_color`, `face_type`, `hair_style`, `hair_color`, `facial_hair`, `helm_id`, `shoulders_id`, `shirt_id`, `chest_id`, `belt_id`, `legs_id`, `boots_id`, `wrists_id`, `gloves_id`, `tabard_id`, `cape_id`, `can_equip`, `texture`) VALUES
(@WorgenMaleDisplayExtra, @Worgen, @Male, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(@WorgenFemaleDisplayExtra, @Worgen, @Female, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

/* Class trainers (sql/db-world/extra/[BASE,F-030]_class-trainers.sql): their baked skins are in patch-A */
DELETE FROM `creaturedisplayinfoextra` WHERE `id` BETWEEN 62100 AND 62105;
INSERT INTO `creaturedisplayinfoextra` (`id`, `race`, `gender`, `skin_color`, `face_type`, `hair_style`, `hair_color`, `facial_hair`, `helm_id`, `shoulders_id`, `shirt_id`, `chest_id`, `belt_id`, `legs_id`, `boots_id`, `wrists_id`, `gloves_id`, `tabard_id`, `cape_id`, `can_equip`, `texture`) VALUES
(62100, @Worgen, @Male, 3, 4, 3, 3, 0, 0, 0, 0, 12656, 0, 0, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62100.blp'),
(62101, @Worgen, @Male, 1, 3, 4, 2, 0, 0, 0, 0, 30868, 0, 0, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62101.blp'),
(62102, @Worgen, @Female, 4, 4, 16, 1, 0, 0, 0, 0, 12673, 0, 0, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62102.blp'),
(62103, @Worgen, @Female, 7, 5, 14, 0, 0, 0, 0, 0, 12646, 0, 0, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62103.blp'),
(62104, @Worgen, @Female, 8, 2, 8, 4, 0, 0, 0, 0, 12696, 11533, 0, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62104.blp'),
(62105, @Worgen, @Male, 2, 1, 0, 4, 0, 0, 0, 0, 0, 25225, 43193, 0, 0, 0, 0, 0, 0, 'CreatureDisplayExtra-62105.blp');
