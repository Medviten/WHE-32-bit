/* Ensures that race-restricted items include Ice Trolls (as Troll) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @IceTrollMask WHERE `allowablerace` & @TrollMask AND `allowablerace` != -1;
