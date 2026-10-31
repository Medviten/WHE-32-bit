-- Crafting skill-ups: the Vanilla/TBC skill at which recipes turn yellow and grey (skill_yellow_level,
-- skill_grey_level), i.e. how long they keep giving skill points.

-- Mining
UPDATE `skilllineability` SET `skill_grey_level` = 125, `skill_yellow_level` = 100 WHERE `id` = 1599; -- Smelt Silver
UPDATE `skilllineability` SET `skill_grey_level` = 140 WHERE `id` = 1847; -- Smelt Iron
UPDATE `skilllineability` SET `skill_yellow_level` = 50 WHERE `id` = 1848; -- Smelt Tin
UPDATE `skilllineability` SET `skill_grey_level` = 230, `skill_yellow_level` = 230 WHERE `id` = 5386; -- Smelt Truesilver
UPDATE `skilllineability` SET `skill_grey_level` = 175 WHERE `id` = 5387; -- Smelt Mithril
UPDATE `skilllineability` SET `skill_grey_level` = 230, `skill_yellow_level` = 230 WHERE `id` = 8016; -- Smelt Dark Iron
UPDATE `skilllineability` SET `skill_grey_level` = 250 WHERE `id` = 8796; -- Smelt Thorium
UPDATE `skilllineability` SET `skill_grey_level` = 315 WHERE `id` = 14113; -- Smelt Fel Iron
UPDATE `skilllineability` SET `skill_grey_level` = 320, `skill_yellow_level` = 310 WHERE `id` = 20659; -- Smelt Elementium

-- Enchanting
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 13865; -- Enchant Bracer - Fortitude
UPDATE `skilllineability` SET `skill_grey_level` = 365, `skill_yellow_level` = 335 WHERE `id` = 13880; -- Enchant Chest - Exceptional Mana
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 13886; -- Enchant Weapon - Potency
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 13887; -- Enchant 2H Weapon - Savagery
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 13888; -- Enchant Weapon - Major Spellpower
UPDATE `skilllineability` SET `skill_yellow_level` = 385 WHERE `id` = 13893; -- Enchant Weapon - Sunfire
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 14905; -- Runed Adamantite Rod
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 15130; -- Enchant Gloves - Major Healing
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 15135; -- Enchant Cloak - Greater Arcane Resistance
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 15136; -- Enchant Cloak - Greater Shadow Resistance
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 15140; -- Enchant Weapon - Major Healing
UPDATE `skilllineability` SET `skill_yellow_level` = 360 WHERE `id` = 15156; -- Void Sphere

-- Leatherworking
UPDATE `skilllineability` SET `skill_grey_level` = 270, `skill_yellow_level` = 250 WHERE `id` = 10757; -- Rugged Armor Kit
