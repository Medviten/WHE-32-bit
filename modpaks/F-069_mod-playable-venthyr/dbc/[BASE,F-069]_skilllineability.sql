-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Venthyr racials, learned with the racial skill line
-- Commented out: Aetheria's racials replace them. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoAVenthyrSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAVenthyrSkillLineAbility5, @VenthyrRacials, @CoAVenthyrRacial5, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Anima Frenzy
*/
-- <<< CoA Custom 1.9 racials <<<

-- >>> Aetheria racials (tools/races/aetheria_racials.py) >>>
-- The Venthyr racials of Aetheria's package, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@AetheriaVenthyrSkillLineAbility1, @AetheriaVenthyrSkillLineAbility2, @AetheriaVenthyrSkillLineAbility3, @AetheriaVenthyrSkillLineAbility4, @AetheriaVenthyrSkillLineAbility5, @AetheriaVenthyrSkillLineAbility6, @AetheriaVenthyrSkillLineAbility7);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@AetheriaVenthyrSkillLineAbility1, @VenthyrRacials, 111200, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Crimson Feast
(@AetheriaVenthyrSkillLineAbility2, @VenthyrRacials, 111201, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Blood Scent
(@AetheriaVenthyrSkillLineAbility3, @VenthyrRacials, 111202, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Children of Revendreth
(@AetheriaVenthyrSkillLineAbility4, @VenthyrRacials, 111203, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Anima Hunger
(@AetheriaVenthyrSkillLineAbility5, @VenthyrRacials, 111204, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Courtly Artifice
(@AetheriaVenthyrSkillLineAbility6, @VenthyrRacials, 111206, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Sanguine Hover
(@AetheriaVenthyrSkillLineAbility7, @VenthyrRacials, 111209, @VenthyrMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Vampire Bat Form
-- <<< Aetheria racials <<<
