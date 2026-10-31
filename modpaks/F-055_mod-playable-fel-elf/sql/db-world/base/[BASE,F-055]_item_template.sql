/* Ensures that race-restricted items include Fel Elves (as BloodElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @FelElfMask WHERE `allowablerace` & @BloodElfMask AND `allowablerace` != -1;
