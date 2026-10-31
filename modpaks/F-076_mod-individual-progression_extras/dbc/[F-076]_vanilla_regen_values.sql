-- Vanilla health and mana regeneration, from IP's zz_optional_vanilla_regen_values.sql ("There is some uncertainty
-- about these values being correct"). Only the values that differ from stock: levels 1-14 of every class, and
-- Death Knight health regen at every level.
--
-- The gt tables have one row per class and level (class 1 levels 1-100, class 2 levels 1-100, ...). DBCTool keeps
-- the file's row order in `auto_id`, starting at 1: the row of class C at level L is auto_id (C - 1) * 100 + L.
-- ELT() picks the value of the row's level.

-- Health regeneration out of combat (gtOCTRegenHP)
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 0, 0.131578997, 0.166666999, 0.185185, 0.217390999, 0.238095, 0.263157994, 0.277778, 0.294117987, 0.3125, 0.3125, 0.357143015, 0.384615004, 0.384615004, 0.416667014) WHERE `auto_id` BETWEEN 1 AND 14; -- Warrior, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 100, 0.092592999, 0.108695999, 0.128205001, 0.135134995, 0.142857, 0.15625, 0.161290005, 0.172414005, 0.172414005, 0.172414005, 0.185185, 0.192307994, 0.208333001, 0.208333001) WHERE `auto_id` BETWEEN 101 AND 114; -- Paladin, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 200, 0.089286, 0.104166999, 0.121950999, 0.131578997, 0.142857, 0.147058994, 0.161290005, 0.161290005, 0.166666999, 0.172414005, 0.172414005, 0.172414005, 0.178571001, 0.178571001) WHERE `auto_id` BETWEEN 201 AND 214; -- Hunter, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 300, 0.121950999, 0.151515007, 0.172414005, 0.192307994, 0.217390999, 0.227273002, 0.25, 0.263157994, 0.263157994, 0.277778, 0.294117987, 0.294117987, 0.3125, 0.3125) WHERE `auto_id` BETWEEN 301 AND 314; -- Rogue, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 400, 0.119047999, 0.128205001, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997) WHERE `auto_id` BETWEEN 401 AND 414; -- Priest, levels 1-14
UPDATE `gtoctregenhp` SET `data` = 1 WHERE `auto_id` BETWEEN 501 AND 600; -- Death Knight, levels 1-100
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 600, 0.086207002, 0.100000001, 0.111111, 0.121950999, 0.128205001, 0.135134995, 0.138889, 0.138889, 0.138889, 0.138889, 0.138889, 0.138889, 0.138889, 0.138889) WHERE `auto_id` BETWEEN 601 AND 614; -- Shaman, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 700, 0.079365, 0.090908997, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999, 0.102040999) WHERE `auto_id` BETWEEN 701 AND 714; -- Mage, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 800, 0.080645002, 0.092592999, 0.102040999, 0.111111, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002, 0.113636002) WHERE `auto_id` BETWEEN 801 AND 814; -- Warlock, levels 1-14
UPDATE `gtoctregenhp` SET `data` = ELT(`auto_id` - 1000, 0.081967004, 0.096153997, 0.108695999, 0.119047999, 0.125, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997, 0.131578997) WHERE `auto_id` BETWEEN 1001 AND 1014; -- Druid, levels 1-14

-- Health regeneration per Spirit (gtRegenHPPerSpt)
UPDATE `gtregenhpperspt` SET `data` = 0.5 WHERE `auto_id` BETWEEN 1 AND 14; -- Warrior, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.125 WHERE `auto_id` BETWEEN 101 AND 114; -- Paladin, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.125 WHERE `auto_id` BETWEEN 201 AND 214; -- Hunter, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.333332986 WHERE `auto_id` BETWEEN 301 AND 314; -- Rogue, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.041666999 WHERE `auto_id` BETWEEN 401 AND 414; -- Priest, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.5 WHERE `auto_id` BETWEEN 501 AND 514; -- Death Knight, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.071428999 WHERE `auto_id` BETWEEN 601 AND 614; -- Shaman, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.041666999 WHERE `auto_id` BETWEEN 701 AND 714; -- Mage, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.045455001 WHERE `auto_id` BETWEEN 801 AND 814; -- Warlock, levels 1-14
UPDATE `gtregenhpperspt` SET `data` = 0.0625 WHERE `auto_id` BETWEEN 1001 AND 1014; -- Druid, levels 1-14

-- Mana regeneration per Spirit (gtRegenMPPerSpt)
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 100, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 101 AND 114; -- Paladin, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 200, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 201 AND 214; -- Hunter, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 400, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 401 AND 414; -- Priest, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 600, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 601 AND 614; -- Shaman, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 700, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 701 AND 714; -- Mage, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 800, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 801 AND 814; -- Warlock, levels 1-14
UPDATE `gtregenmpperspt` SET `data` = ELT(`auto_id` - 1000, 0.020979, 0.020515, 0.020079, 0.019516, 0.018997, 0.018646, 0.018314, 0.017997, 0.017584, 0.017197, 0.016551, 0.015729, 0.015229, 0.01458) WHERE `auto_id` BETWEEN 1001 AND 1014; -- Druid, levels 1-14
