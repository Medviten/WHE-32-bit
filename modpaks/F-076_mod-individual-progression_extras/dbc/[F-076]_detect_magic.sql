-- Detect Magic: gives Mages back the Vanilla/TBC spell (Arcane skill line).

DELETE FROM `skilllineability` WHERE `id` = 5046;
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
    (5046, @ArcaneSkill, 2855, 0, @MageMask, 0, 0, 1, 0, 0, 0, 0, 0, 0); -- Detect Magic
