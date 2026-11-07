/* Ensures that race-restricted items include Skyborne (as Human) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @AllianceSkyborneMask WHERE `allowablerace` & @HumanMask AND `allowablerace` != -1;
