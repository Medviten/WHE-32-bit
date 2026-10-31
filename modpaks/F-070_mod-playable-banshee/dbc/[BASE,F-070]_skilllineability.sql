-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Banshee racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoABansheeSkillLineAbility1, @CoABansheeSkillLineAbility2, @CoABansheeSkillLineAbility3, @CoABansheeSkillLineAbility4, @CoABansheeSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoABansheeSkillLineAbility1, @BansheeRacials, @CoABansheeRacial1, @BansheeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Deathless Shroud
(@CoABansheeSkillLineAbility2, @BansheeRacials, @CoABansheeRacial2, @BansheeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Wailing Gale
(@CoABansheeSkillLineAbility3, @BansheeRacials, @CoABansheeRacial3, @BansheeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Spectral Sway
(@CoABansheeSkillLineAbility4, @BansheeRacials, @CoABansheeRacial4, @BansheeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Banshee Wail
(@CoABansheeSkillLineAbility5, @BansheeRacials, @CoABansheeRacial5, @BansheeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Spectral Glide
-- <<< CoA Custom 1.9 racials <<<
