-- skilllineability: 7 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `skilllineability` WHERE `id` IN (
    @VulperaSkillLineAbility1, @VulperaSkillLineAbility2,
    @VulperaSkillLineAbility3, @VulperaSkillLineAbility4,
    @VulperaSkillLineAbility5, @VulperaSkillLineAbility6,
    @VulperaSkillLineAbility7
);
-- INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
-- (@VulperaSkillLineAbility1, @VulperaRacials, @VulperaRacial1, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@VulperaSkillLineAbility2, @VulperaRacials, @VulperaRacial2, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@VulperaSkillLineAbility3, @VulperaRacials, @VulperaRacial3, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@VulperaSkillLineAbility4, @VulperaRacials, @VulperaRacial4, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@VulperaSkillLineAbility5, @VulperaRacials, @VulperaRacial5, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
-- (@VulperaSkillLineAbility6, @VulperaRacials, @VulperaRacial6, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
-- (@VulperaSkillLineAbility7, @VulperaRacials, @VulperaRacial7, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Vulpera racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAVulperaSkillLineAbility1, @CoAVulperaSkillLineAbility2, @CoAVulperaSkillLineAbility3, @CoAVulperaSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAVulperaSkillLineAbility1, @VulperaRacials, @CoAVulperaRacial1, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bag of Tricks
(@CoAVulperaSkillLineAbility2, @VulperaRacials, @CoAVulperaRacial2, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Make Camp
(@CoAVulperaSkillLineAbility3, @VulperaRacials, @CoAVulperaRacial3, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Nose for Trouble
(@CoAVulperaSkillLineAbility4, @VulperaRacials, @CoAVulperaRacial4, @VulperaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Desert Hardened
-- <<< CoA Custom 1.9 racials <<<
