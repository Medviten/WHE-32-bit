/* Ensures that race-restricted items include Hozen (as Human) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @HozenMask WHERE `allowablerace` & @HumanMask AND `allowablerace` != -1;
