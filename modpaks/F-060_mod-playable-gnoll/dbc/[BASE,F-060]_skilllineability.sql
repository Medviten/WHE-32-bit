-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Gnoll racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAGnollSkillLineAbility1, @CoAGnollSkillLineAbility2, @CoAGnollSkillLineAbility3, @CoAGnollSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAGnollSkillLineAbility1, @GnollRacials, @CoAGnollRacial1, @GnollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Pack Howl
(@CoAGnollSkillLineAbility2, @GnollRacials, @CoAGnollRacial2, @GnollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bone Gnaw
(@CoAGnollSkillLineAbility3, @GnollRacials, @CoAGnollRacial3, @GnollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Scavenger
(@CoAGnollSkillLineAbility4, @GnollRacials, @CoAGnollRacial4, @GnollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Thick Hide
-- <<< CoA Custom 1.9 racials <<<
