-- skilllineability: 4 inserts, 0 updates, 0 deletes

/*
-- New entries
DELETE FROM `skilllineability` WHERE `skill_line` = @KulTiranRacials;
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(21981, @KulTiranRacials, @KulTiranRacial1, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(21982, @KulTiranRacials, @KulTiranRacial2, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(21983, @KulTiranRacials, @KulTiranRacial3, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(21984, @KulTiranRacials, @KulTiranRacial4, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
(21984, @KulTiranRacials, @KulTiranRacial5, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Kul Tiran racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAKulTiranSkillLineAbility1, @CoAKulTiranSkillLineAbility2, @CoAKulTiranSkillLineAbility3, @CoAKulTiranSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAKulTiranSkillLineAbility1, @KulTiranRacials, @CoAKulTiranRacial1, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Haymaker
(@CoAKulTiranSkillLineAbility2, @KulTiranRacials, @CoAKulTiranRacial2, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Brush It Off
(@CoAKulTiranSkillLineAbility3, @KulTiranRacials, @CoAKulTiranRacial3, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Child of the Sea
(@CoAKulTiranSkillLineAbility4, @KulTiranRacials, @CoAKulTiranRacial4, @KulTiranMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Rime of the Ancient Mariner
-- <<< CoA Custom 1.9 racials <<<
