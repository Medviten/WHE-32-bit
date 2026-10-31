-- skilllineability: 5 inserts, 0 updates, 0 deletes
/*
-- New entries
DELETE FROM `skilllineability` WHERE `id` IN (
    @VoidElfSkillLineAbility1, @VoidElfSkillLineAbility2, @VoidElfSkillLineAbility3, @VoidElfSkillLineAbility4, @VoidElfSkillLineAbility5
);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@VoidElfSkillLineAbility1, @VoidElfRacials, @VoidElfRacial1, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@VoidElfSkillLineAbility2, @VoidElfRacials, @VoidElfRacial2, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@VoidElfSkillLineAbility3, @VoidElfRacials, @VoidElfRacial3, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@VoidElfSkillLineAbility4, @VoidElfRacials, @VoidElfRacial4, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@VoidElfSkillLineAbility5, @VoidElfRacials, @VoidElfRacial5, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Void Elf racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAVoidElfSkillLineAbility1, @CoAVoidElfSkillLineAbility2, @CoAVoidElfSkillLineAbility3, @CoAVoidElfSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAVoidElfSkillLineAbility1, @VoidElfRacials, @CoAVoidElfRacial1, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Spatial Rift
(@CoAVoidElfSkillLineAbility2, @VoidElfRacials, @CoAVoidElfRacial2, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Void Torrent
(@CoAVoidElfSkillLineAbility3, @VoidElfRacials, @CoAVoidElfRacial3, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Entropic Embrace
(@CoAVoidElfSkillLineAbility4, @VoidElfRacials, @CoAVoidElfRacial4, @VoidElfMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Ethereal Connection
-- <<< CoA Custom 1.9 racials <<<
