-- All skill-line abilities available to normal trolls are also valid for Zandalari.
UPDATE `skilllineability` SET `required_races` = `required_races` | @ZandalariTrollMask
WHERE (`required_races` & @TrollMask) <> 0;

-- skilllineability: 5 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `skilllineability` WHERE `id` IN (
    @ZandalariTrollSkillLineAbility1, @ZandalariTrollSkillLineAbility2, @ZandalariTrollSkillLineAbility3, @ZandalariTrollSkillLineAbility4, @ZandalariTrollSkillLineAbility5
);
-- INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
-- (@ZandalariTrollSkillLineAbility1, @ZandalariTrollRacials, @ZandalariTrollRacial1, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@ZandalariTrollSkillLineAbility2, @ZandalariTrollRacials, @ZandalariTrollRacial2, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@ZandalariTrollSkillLineAbility3, @ZandalariTrollRacials, @ZandalariTrollRacial3, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@ZandalariTrollSkillLineAbility4, @ZandalariTrollRacials, @ZandalariTrollRacial4, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
-- (@ZandalariTrollSkillLineAbility5, @ZandalariTrollRacials, @ZandalariTrollRacial5, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Zandalari Troll racials, learned with the racial skill line
-- Commented out: the race already gets the Troll racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `skilllineability` WHERE `id` IN (@CoAZandalariTrollSkillLineAbility1, @CoAZandalariTrollSkillLineAbility2, @CoAZandalariTrollSkillLineAbility3, @CoAZandalariTrollSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAZandalariTrollSkillLineAbility1, @ZandalariTrollRacials, @CoAZandalariTrollRacial1, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Embrace of the Loa
(@CoAZandalariTrollSkillLineAbility2, @ZandalariTrollRacials, @CoAZandalariTrollRacial2, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Pterrordax Swoop
(@CoAZandalariTrollSkillLineAbility3, @ZandalariTrollRacials, @CoAZandalariTrollRacial3, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- City of Gold
(@CoAZandalariTrollSkillLineAbility4, @ZandalariTrollRacials, @CoAZandalariTrollRacial4, @ZandalariTrollMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Da Voodoo Shuffle
*/
-- <<< CoA Custom 1.9 racials <<<
