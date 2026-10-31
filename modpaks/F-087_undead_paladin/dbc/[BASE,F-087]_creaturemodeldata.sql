-- [F-087] undead_paladin: creaturemodeldata: 2 inserts (copies of the Thalassian Warhorse and Charger models)

DROP TEMPORARY TABLE IF EXISTS `f087_model`;
CREATE TEMPORARY TABLE `f087_model` LIKE `creaturemodeldata`;
INSERT INTO `f087_model` SELECT * FROM `creaturemodeldata`
WHERE `id` = (SELECT `model_id` FROM `creaturedisplayinfo` WHERE `id` = @ThalassianWarhorseDisplay);
UPDATE `f087_model` SET `id` = @ForsakenWarhorseModel, `model_path` = @ForsakenWarhorseModelPath;
INSERT INTO `f087_model` SELECT * FROM `creaturemodeldata`
WHERE `id` = (SELECT `model_id` FROM `creaturedisplayinfo` WHERE `id` = @ThalassianChargerDisplay);
UPDATE `f087_model` SET `id` = @ForsakenChargerModel, `model_path` = @ForsakenChargerModelPath
WHERE `id` <> @ForsakenWarhorseModel;

DELETE FROM `creaturemodeldata` WHERE `id` IN (@ForsakenWarhorseModel, @ForsakenChargerModel);
INSERT INTO `creaturemodeldata` SELECT * FROM `f087_model`;
DROP TEMPORARY TABLE `f087_model`;
