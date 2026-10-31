/* Ensures that race-restricted items include Kyrian (as NightElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @KyrianMask WHERE `allowablerace` & @NightElfMask AND `allowablerace` != -1;
