/* Ensures that race-restricted items include Manari (as BloodElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @ManariMask WHERE `allowablerace` & @BloodElfMask AND `allowablerace` != -1;
