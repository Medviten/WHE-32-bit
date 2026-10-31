-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Dracthyr (Horde) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAHordeDracthyrSkillLineAbility1, @CoAHordeDracthyrSkillLineAbility2, @CoAHordeDracthyrSkillLineAbility3, @CoAHordeDracthyrSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAHordeDracthyrSkillLineAbility1, @HordeDracthyrRacials, @CoAHordeDracthyrRacial1, @HordeDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Wing Buffet
(@CoAHordeDracthyrSkillLineAbility2, @HordeDracthyrRacials, @CoAHordeDracthyrRacial2, @HordeDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Soar
(@CoAHordeDracthyrSkillLineAbility3, @HordeDracthyrRacials, @CoAHordeDracthyrRacial3, @HordeDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Draconic Mind
(@CoAHordeDracthyrSkillLineAbility4, @HordeDracthyrRacials, @CoAHordeDracthyrRacial4, @HordeDracthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Scales of the Aspects
-- <<< CoA Custom 1.9 racials <<<
