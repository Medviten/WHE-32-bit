-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Furbolg racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAFurbolgSkillLineAbility1, @CoAFurbolgSkillLineAbility2, @CoAFurbolgSkillLineAbility3, @CoAFurbolgSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAFurbolgSkillLineAbility1, @FurbolgRacials, @CoAFurbolgRacial1, @FurbolgMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Ursine Fury
(@CoAFurbolgSkillLineAbility2, @FurbolgRacials, @CoAFurbolgRacial2, @FurbolgMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Thick Fur
(@CoAFurbolgSkillLineAbility3, @FurbolgRacials, @CoAFurbolgRacial3, @FurbolgMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Furbolg Endurance
(@CoAFurbolgSkillLineAbility4, @FurbolgRacials, @CoAFurbolgRacial4, @FurbolgMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gift of the Grove
-- <<< CoA Custom 1.9 racials <<<
