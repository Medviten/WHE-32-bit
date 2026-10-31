/* Ensures that race-restricted items include Dracthyr (as Orc) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @HordeDracthyrMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
