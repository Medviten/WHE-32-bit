-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Fel Orc racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAFelOrcSkillLineAbility1, @CoAFelOrcSkillLineAbility2, @CoAFelOrcSkillLineAbility3, @CoAFelOrcSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAFelOrcSkillLineAbility1, @FelOrcRacials, @CoAFelOrcRacial1, @FelOrcMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fel Rage
(@CoAFelOrcSkillLineAbility2, @FelOrcRacials, @CoAFelOrcRacial2, @FelOrcMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Demonic Endurance
(@CoAFelOrcSkillLineAbility3, @FelOrcRacials, @CoAFelOrcRacial3, @FelOrcMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fel-Hardened
(@CoAFelOrcSkillLineAbility4, @FelOrcRacials, @CoAFelOrcRacial4, @FelOrcMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Axe of the Horde
-- <<< CoA Custom 1.9 racials <<<
