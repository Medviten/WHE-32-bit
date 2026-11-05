/* Ensures that race-restricted items include Haranir (as NightElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @AllianceHaranirMask WHERE `allowablerace` & @NightElfMask AND `allowablerace` != -1;
