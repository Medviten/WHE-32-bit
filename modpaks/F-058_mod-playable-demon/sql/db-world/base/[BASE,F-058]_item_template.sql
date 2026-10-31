/* Ensures that race-restricted items include Demons (as BloodElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @DemonMask WHERE `allowablerace` & @BloodElfMask AND `allowablerace` != -1;
