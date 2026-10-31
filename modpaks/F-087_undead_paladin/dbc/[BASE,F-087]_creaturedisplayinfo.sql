-- [F-087] undead_paladin: creaturedisplayinfo: 2 inserts (copies of the Thalassian Warhorse and Charger displays;
-- the models name their own textures)

DROP TEMPORARY TABLE IF EXISTS `f087_display`;
CREATE TEMPORARY TABLE `f087_display` LIKE `creaturedisplayinfo`;
INSERT INTO `f087_display` SELECT * FROM `creaturedisplayinfo` WHERE `id` = @ThalassianWarhorseDisplay;
UPDATE `f087_display` SET `id` = @ForsakenWarhorseDisplay, `model_id` = @ForsakenWarhorseModel;
INSERT INTO `f087_display` SELECT * FROM `creaturedisplayinfo` WHERE `id` = @ThalassianChargerDisplay;
UPDATE `f087_display` SET `id` = @ForsakenChargerDisplay, `model_id` = @ForsakenChargerModel
WHERE `id` <> @ForsakenWarhorseDisplay;
UPDATE `f087_display` SET `texture_variation_1` = '', `texture_variation_2` = '', `texture_variation_3` = '';

DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@ForsakenWarhorseDisplay, @ForsakenChargerDisplay);
INSERT INTO `creaturedisplayinfo` SELECT * FROM `f087_display`;
DROP TEMPORARY TABLE `f087_display`;
