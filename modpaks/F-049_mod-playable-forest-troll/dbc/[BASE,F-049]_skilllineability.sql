-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Forest Troll racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAForestTrollSkillLineAbility1, @CoAForestTrollSkillLineAbility2, @CoAForestTrollSkillLineAbility3, @CoAForestTrollSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAForestTrollSkillLineAbility1, @ForestTrollRacials, @CoAForestTrollRacial1, @ForestTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Headhunter's Frenzy
(@CoAForestTrollSkillLineAbility2, @ForestTrollRacials, @CoAForestTrollRacial2, @ForestTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Jungle Stalker
(@CoAForestTrollSkillLineAbility3, @ForestTrollRacials, @CoAForestTrollRacial3, @ForestTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Troll Regeneration
(@CoAForestTrollSkillLineAbility4, @ForestTrollRacials, @CoAForestTrollRacial4, @ForestTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Headhunter
-- <<< CoA Custom 1.9 racials <<<
