/* Ensures that race-restricted items include Hozen (as Orc) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @HozenMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
