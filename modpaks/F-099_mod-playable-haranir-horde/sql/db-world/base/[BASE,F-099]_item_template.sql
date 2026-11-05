/* Ensures that race-restricted items include Haranir (as Troll) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @HordeHaranirMask WHERE `allowablerace` & @TrollMask AND `allowablerace` != -1;
