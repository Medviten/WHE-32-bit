/* Ensures that race-restricted items include Shivan (as Draenei) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @ShivanMask WHERE `allowablerace` & @DraeneiMask AND `allowablerace` != -1;
