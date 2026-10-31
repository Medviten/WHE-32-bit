-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Mantid racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAMantidSkillLineAbility1, @CoAMantidSkillLineAbility2, @CoAMantidSkillLineAbility3, @CoAMantidSkillLineAbility4, @CoAMantidSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAMantidSkillLineAbility1, @MantidRacials, @CoAMantidRacial1, @MantidMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Chitin Carapace
(@CoAMantidSkillLineAbility2, @MantidRacials, @CoAMantidRacial2, @MantidMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Mantis Strike
(@CoAMantidSkillLineAbility3, @MantidRacials, @CoAMantidRacial3, @MantidMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Skittering Reflexes
(@CoAMantidSkillLineAbility4, @MantidRacials, @CoAMantidRacial4, @MantidMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Swarm Stride
(@CoAMantidSkillLineAbility5, @MantidRacials, @CoAMantidRacial5, @MantidMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Chitin Hardening
-- <<< CoA Custom 1.9 racials <<<
