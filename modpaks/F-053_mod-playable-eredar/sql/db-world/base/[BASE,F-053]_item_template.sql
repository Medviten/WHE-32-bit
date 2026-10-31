/* Ensures that race-restricted items include Eredar (as Draenei) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @EredarMask WHERE `allowablerace` & @DraeneiMask AND `allowablerace` != -1;
