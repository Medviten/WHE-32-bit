/* Ensures that race-restricted items include Satyrs (as NightElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @SatyrMask WHERE `allowablerace` & @NightElfMask AND `allowablerace` != -1;
