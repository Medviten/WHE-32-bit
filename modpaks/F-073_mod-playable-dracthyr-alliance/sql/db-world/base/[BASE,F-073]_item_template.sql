/* Ensures that race-restricted items include Dracthyr (as Human) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @AllianceDracthyrMask WHERE `allowablerace` & @HumanMask AND `allowablerace` != -1;
