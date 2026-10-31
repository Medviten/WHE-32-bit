-- Mount NPCs: copies of the Thalassian Warhorse (20029) and Charger (20030)
DROP TEMPORARY TABLE IF EXISTS `f087_creature`;
CREATE TEMPORARY TABLE `f087_creature` LIKE `creature_template`;
INSERT INTO `f087_creature` SELECT * FROM `creature_template`
WHERE `entry` IN (@ThalassianWarhorseCreatureID, @ThalassianChargerCreatureID);
UPDATE `f087_creature` SET `name` = IF(`entry` = @ThalassianWarhorseCreatureID, 'Forsaken Warhorse', 'Forsaken Charger'),
    `entry` = IF(`entry` = @ThalassianWarhorseCreatureID, @ForsakenWarhorseCreatureID, @ForsakenChargerCreatureID);
DELETE FROM `creature_template` WHERE `entry` IN (@ForsakenWarhorseCreatureID, @ForsakenChargerCreatureID);
INSERT INTO `creature_template` SELECT * FROM `f087_creature`;
DROP TEMPORARY TABLE `f087_creature`;
