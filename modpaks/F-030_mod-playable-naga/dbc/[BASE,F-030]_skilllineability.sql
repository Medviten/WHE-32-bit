/*
-- All skill-line abilities available to trolls are also valid for Vulpera.
UPDATE `skilllineability` SET `required_races` = `required_races` | @VulperaMask
WHERE (`required_races` & @TrollMask) <> 0;
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Naga racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoANagaSkillLineAbility1, @CoANagaSkillLineAbility2, @CoANagaSkillLineAbility3, @CoANagaSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoANagaSkillLineAbility1, @NagaRacials, @CoANagaRacial1, @NagaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Tidal Surge
(@CoANagaSkillLineAbility2, @NagaRacials, @CoANagaRacial2, @NagaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Siren Song
(@CoANagaSkillLineAbility3, @NagaRacials, @CoANagaRacial3, @NagaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Serpent Scales
(@CoANagaSkillLineAbility4, @NagaRacials, @CoANagaRacial4, @NagaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gills
-- <<< CoA Custom 1.9 racials <<<
