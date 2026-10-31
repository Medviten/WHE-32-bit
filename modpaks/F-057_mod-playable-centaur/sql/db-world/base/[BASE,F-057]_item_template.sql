/* Ensures that race-restricted items include Centaur (as Tauren) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @CentaurMask WHERE `allowablerace` & @TaurenMask AND `allowablerace` != -1;
