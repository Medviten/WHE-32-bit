-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Kyrian racials, learned with the racial skill line
-- Commented out: Aetheria's racials replace them. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoAKyrianSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAKyrianSkillLineAbility5, @KyrianRacials, @CoAKyrianRacial5, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Steward's Resolve
*/
-- <<< CoA Custom 1.9 racials <<<

-- >>> Aetheria racials (tools/races/aetheria_racials.py) >>>
-- The Kyrian racials of Aetheria's package, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@AetheriaKyrianSkillLineAbility1, @AetheriaKyrianSkillLineAbility2, @AetheriaKyrianSkillLineAbility3, @AetheriaKyrianSkillLineAbility4, @AetheriaKyrianSkillLineAbility5, @AetheriaKyrianSkillLineAbility6, @AetheriaKyrianSkillLineAbility7);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@AetheriaKyrianSkillLineAbility1, @KyrianRacials, 111100, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Ascended Hover
(@AetheriaKyrianSkillLineAbility2, @KyrianRacials, 111104, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Ascended Wings
(@AetheriaKyrianSkillLineAbility3, @KyrianRacials, 111105, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Purity of Bastion
(@AetheriaKyrianSkillLineAbility4, @KyrianRacials, 111106, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Virtue of Courage
(@AetheriaKyrianSkillLineAbility5, @KyrianRacials, 111107, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Soul Guide
(@AetheriaKyrianSkillLineAbility6, @KyrianRacials, 111108, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Steward's Craft
(@AetheriaKyrianSkillLineAbility7, @KyrianRacials, 111110, @KyrianMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Ascendant Charge
-- <<< Aetheria racials <<<
