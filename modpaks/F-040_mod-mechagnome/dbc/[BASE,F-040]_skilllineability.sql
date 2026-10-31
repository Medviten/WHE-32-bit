-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Mechagnome racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAMechagnomeSkillLineAbility1, @CoAMechagnomeSkillLineAbility2, @CoAMechagnomeSkillLineAbility3, @CoAMechagnomeSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAMechagnomeSkillLineAbility1, @MechagnomeRacials, @CoAMechagnomeRacial1, @MechagnomeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Combat Analysis
(@CoAMechagnomeSkillLineAbility2, @MechagnomeRacials, @CoAMechagnomeRacial2, @MechagnomeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Emergency Failsafe
(@CoAMechagnomeSkillLineAbility3, @MechagnomeRacials, @CoAMechagnomeRacial3, @MechagnomeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Re-Origination
(@CoAMechagnomeSkillLineAbility4, @MechagnomeRacials, @CoAMechagnomeRacial4, @MechagnomeMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Mechanical Mastery
-- <<< CoA Custom 1.9 racials <<<
