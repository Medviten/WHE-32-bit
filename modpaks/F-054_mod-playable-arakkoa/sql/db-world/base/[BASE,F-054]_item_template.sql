/* Ensures that race-restricted items include Arakkoa (as Draenei) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @ArakkoaMask WHERE `allowablerace` & @DraeneiMask AND `allowablerace` != -1;
