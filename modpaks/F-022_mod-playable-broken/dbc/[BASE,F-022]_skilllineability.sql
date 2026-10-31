-- All skill-line abilities available to normal Draenei are also valid for Broken.
UPDATE `skilllineability` SET `required_races` = `required_races` | @BrokenMask
WHERE (`required_races` & @DraeneiMask) <> 0;

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Broken racials, learned with the racial skill line
-- Commented out: the race already gets the Draenei racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoABrokenSkillLineAbility1, @CoABrokenSkillLineAbility2, @CoABrokenSkillLineAbility3, @CoABrokenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoABrokenSkillLineAbility1, @BrokenRacials, @CoABrokenRacial1, @BrokenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Shattered Light
(@CoABrokenSkillLineAbility2, @BrokenRacials, @CoABrokenRacial2, @BrokenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Exile's Will
(@CoABrokenSkillLineAbility3, @BrokenRacials, @CoABrokenRacial3, @BrokenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Exile's Resolve
(@CoABrokenSkillLineAbility4, @BrokenRacials, @CoABrokenRacial4, @BrokenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Shamanic Bond
*/
-- <<< CoA Custom 1.9 racials <<<
