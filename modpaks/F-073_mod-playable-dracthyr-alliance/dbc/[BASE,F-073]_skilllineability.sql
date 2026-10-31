-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Dracthyr (Alliance) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAAllianceDracthyrSkillLineAbility1, @CoAAllianceDracthyrSkillLineAbility2, @CoAAllianceDracthyrSkillLineAbility3, @CoAAllianceDracthyrSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAAllianceDracthyrSkillLineAbility1, @AllianceDracthyrRacials, @CoAAllianceDracthyrRacial1, @AllianceDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Wing Buffet
(@CoAAllianceDracthyrSkillLineAbility2, @AllianceDracthyrRacials, @CoAAllianceDracthyrRacial2, @AllianceDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Soar
(@CoAAllianceDracthyrSkillLineAbility3, @AllianceDracthyrRacials, @CoAAllianceDracthyrRacial3, @AllianceDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Draconic Mind
(@CoAAllianceDracthyrSkillLineAbility4, @AllianceDracthyrRacials, @CoAAllianceDracthyrRacial4, @AllianceDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Scales of the Aspects
-- <<< CoA Custom 1.9 racials <<<
