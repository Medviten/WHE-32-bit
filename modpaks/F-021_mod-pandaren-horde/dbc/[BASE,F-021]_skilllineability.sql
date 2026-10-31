-- skilllineability: 10 inserts, 33 updates, 0 deletes

-- New entries
/*
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(1221981, @HordePandarenRacials, @HordePandarenRacial1, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(1221982, @HordePandarenRacials, @HordePandarenRacial2, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(1221983, @HordePandarenRacials, @HordePandarenRacial3, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(1221984, @HordePandarenRacials, @HordePandarenRacial4, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
Bouncy: You take half falling damage.
Epicurean: Your love of food allows you to receive double the stats from Well Fed effects.
Gourmand: Your Cooking skill is increased by 5.
Inner Peace: Your rested experience bonus lasts twice as long as normal.
Quaking Palm: Strikes the target with lightning speed, incapacitating them for 4 sec, and turns off your attack.
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Pandaren (Horde) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAHordePandarenSkillLineAbility1, @CoAHordePandarenSkillLineAbility2, @CoAHordePandarenSkillLineAbility3, @CoAHordePandarenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAHordePandarenSkillLineAbility1, @HordePandarenRacials, @CoAHordePandarenRacial1, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Quaking Palm
(@CoAHordePandarenSkillLineAbility2, @HordePandarenRacials, @CoAHordePandarenRacial2, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Inner Peace
(@CoAHordePandarenSkillLineAbility3, @HordePandarenRacials, @CoAHordePandarenRacial3, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bouncy
(@CoAHordePandarenSkillLineAbility4, @HordePandarenRacials, @CoAHordePandarenRacial4, @HordePandarenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gourmand
-- <<< CoA Custom 1.9 racials <<<
