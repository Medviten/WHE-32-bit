-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Ice Troll racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAIceTrollSkillLineAbility1, @CoAIceTrollSkillLineAbility2, @CoAIceTrollSkillLineAbility3, @CoAIceTrollSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAIceTrollSkillLineAbility1, @IceTrollRacials, @CoAIceTrollRacial1, @IceTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Frostmane Frenzy
(@CoAIceTrollSkillLineAbility2, @IceTrollRacials, @CoAIceTrollRacial2, @IceTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Winter's Blood
(@CoAIceTrollSkillLineAbility3, @IceTrollRacials, @CoAIceTrollRacial3, @IceTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Troll Regeneration
(@CoAIceTrollSkillLineAbility4, @IceTrollRacials, @CoAIceTrollRacial4, @IceTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Ice Hunter
-- <<< CoA Custom 1.9 racials <<<
