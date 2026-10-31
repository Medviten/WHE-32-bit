-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Illidari Blood Elf racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAFelElfSkillLineAbility1, @CoAFelElfSkillLineAbility2, @CoAFelElfSkillLineAbility3, @CoAFelElfSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAFelElfSkillLineAbility1, @FelElfRacials, @CoAFelElfRacial1, @FelElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Spectral Sight
(@CoAFelElfSkillLineAbility2, @FelElfRacials, @CoAFelElfRacial2, @FelElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fel Rush
(@CoAFelElfSkillLineAbility3, @FelElfRacials, @CoAFelElfRacial3, @FelElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Demon Hunter's Resolve
(@CoAFelElfSkillLineAbility4, @FelElfRacials, @CoAFelElfRacial4, @FelElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Felblood
-- <<< CoA Custom 1.9 racials <<<
