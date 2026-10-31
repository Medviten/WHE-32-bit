/*
-- All skill-line abilities available to Tauren are also valid for Highmountain Tauren.
UPDATE `skilllineability` SET `required_races` = `required_races` | @HighmountainTaurenMask
WHERE (`required_races` & @TaurenMask) <> 0;
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Highmountain Tauren racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAHighmountainTaurenSkillLineAbility1, @CoAHighmountainTaurenSkillLineAbility2, @CoAHighmountainTaurenSkillLineAbility3, @CoAHighmountainTaurenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAHighmountainTaurenSkillLineAbility1, @HighmountainTaurenRacials, @CoAHighmountainTaurenRacial1, @HighmountainTaurenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bull Rush
(@CoAHighmountainTaurenSkillLineAbility2, @HighmountainTaurenRacials, @CoAHighmountainTaurenRacial2, @HighmountainTaurenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Mountaineer
(@CoAHighmountainTaurenSkillLineAbility3, @HighmountainTaurenRacials, @CoAHighmountainTaurenRacial3, @HighmountainTaurenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Pride of Ironhorn
(@CoAHighmountainTaurenSkillLineAbility4, @HighmountainTaurenRacials, @CoAHighmountainTaurenRacial4, @HighmountainTaurenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Rugged Tenacity
-- <<< CoA Custom 1.9 racials <<<
