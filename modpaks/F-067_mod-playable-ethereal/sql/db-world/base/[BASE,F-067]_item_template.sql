/* Ensures that race-restricted items include Ethereals (as NightElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @EtherealMask WHERE `allowablerace` & @NightElfMask AND `allowablerace` != -1;
