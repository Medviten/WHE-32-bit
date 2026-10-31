/* Ensures that race-restricted items include Sylvari (as NightElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @SylvariMask WHERE `allowablerace` & @NightElfMask AND `allowablerace` != -1;
