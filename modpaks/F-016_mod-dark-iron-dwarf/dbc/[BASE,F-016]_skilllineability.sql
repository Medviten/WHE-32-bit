-- skilllineability: 5 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `skilllineability` WHERE `id` IN (
    @DarkIronDwarfSkillLineAbility1, @DarkIronDwarfSkillLineAbility2, @DarkIronDwarfSkillLineAbility3, @DarkIronDwarfSkillLineAbility4, @DarkIronDwarfSkillLineAbility5
);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
-- (@DarkIronDwarfSkillLineAbility1, @DarkIronDwarfRacials, @DarkIronDwarfRacial1, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@DarkIronDwarfSkillLineAbility2, @DarkIronDwarfRacials, @DarkIronDwarfRacial2, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@DarkIronDwarfSkillLineAbility3, @DarkIronDwarfRacials, @DarkIronDwarfRacial3, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@DarkIronDwarfSkillLineAbility4, @DarkIronDwarfRacials, @DarkIronDwarfRacial4, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@DarkIronDwarfSkillLineAbility5, @DarkIronDwarfRacials, @DarkIronDwarfRacial5, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Dark Iron Dwarf racials, learned with the racial skill line
-- Commented out: the race already has Dungeon Delver. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoADarkIronDwarfSkillLineAbility1, @CoADarkIronDwarfSkillLineAbility2, @CoADarkIronDwarfSkillLineAbility3, @CoADarkIronDwarfSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoADarkIronDwarfSkillLineAbility1, @DarkIronDwarfRacials, @CoADarkIronDwarfRacial1, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fireblood
(@CoADarkIronDwarfSkillLineAbility2, @DarkIronDwarfRacials, @CoADarkIronDwarfRacial2, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Forged in Flames
(@CoADarkIronDwarfSkillLineAbility3, @DarkIronDwarfRacials, @CoADarkIronDwarfRacial3, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Mole Machine
(@CoADarkIronDwarfSkillLineAbility4, @DarkIronDwarfRacials, @CoADarkIronDwarfRacial4, @DarkIronDwarfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Mace of the Forge
*/
-- <<< CoA Custom 1.9 racials <<<
