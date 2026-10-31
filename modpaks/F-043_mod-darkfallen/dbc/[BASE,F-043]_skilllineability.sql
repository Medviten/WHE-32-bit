-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Darkfallen (Horde) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoADarkfallenSkillLineAbility1, @CoADarkfallenSkillLineAbility2, @CoADarkfallenSkillLineAbility3, @CoADarkfallenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoADarkfallenSkillLineAbility1, @DarkfallenRacials, @CoADarkfallenRacial1, @DarkfallenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Blood Siphon
(@CoADarkfallenSkillLineAbility2, @DarkfallenRacials, @CoADarkfallenRacial2, @DarkfallenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Mist Form
(@CoADarkfallenSkillLineAbility3, @DarkfallenRacials, @CoADarkfallenRacial3, @DarkfallenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Undying Hunger
(@CoADarkfallenSkillLineAbility4, @DarkfallenRacials, @CoADarkfallenRacial4, @DarkfallenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Grave Chill
-- <<< CoA Custom 1.9 racials <<<
