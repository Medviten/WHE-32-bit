/* Ensures that race-restricted items include Forest Trolls (as Troll) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @ForestTrollMask WHERE `allowablerace` & @TrollMask AND `allowablerace` != -1;
