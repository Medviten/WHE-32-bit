-- All skill-line abilities available to Tauren are also valid for Taunka.
UPDATE `skilllineability` SET `required_races` = `required_races` | @TaunkaMask
WHERE (`required_races` & @TaurenMask) <> 0;

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Taunka racials, learned with the racial skill line
-- Commented out: the race already gets the Tauren racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoATaunkaSkillLineAbility1, @CoATaunkaSkillLineAbility2, @CoATaunkaSkillLineAbility3, @CoATaunkaSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoATaunkaSkillLineAbility1, @TaunkaRacials, @CoATaunkaRacial1, @TaunkaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Thunderhoof
(@CoATaunkaSkillLineAbility2, @TaunkaRacials, @CoATaunkaRacial2, @TaunkaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Hardened by Northrend
(@CoATaunkaSkillLineAbility3, @TaunkaRacials, @CoATaunkaRacial3, @TaunkaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Taunka Endurance
(@CoATaunkaSkillLineAbility4, @TaunkaRacials, @CoATaunkaRacial4, @TaunkaMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Hunter of the Tundra
*/
-- <<< CoA Custom 1.9 racials <<<
