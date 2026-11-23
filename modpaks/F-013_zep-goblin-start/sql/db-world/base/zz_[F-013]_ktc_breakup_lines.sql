-- Candy Cane's and Chip Endale's "We're through, $N!" lines (SmartAI out-of-combat LOS, 3 yards) came over without
-- the conditions Neltharion's world DB has for them, so both said them to every player at KTC Headquarters from the
-- first visit on. Neltharion: only once 447 (14125) is rewarded and Life Savings (14126) isn't, and Candy only to one
-- gender. Its Candy row asks for female (1) and Chip's for none, but Candy's quests (14113, 26712) are male-only and
-- Chip's (14153, 26711) female-only, so here Candy breaks up with male players and Chip with female ones.
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 22 AND ((SourceGroup = 7 AND SourceEntry = 35053) OR (SourceGroup = 6 AND SourceEntry = 35054));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
  (22, 7, 35053, 0, 0, 20, 0, 0, 0, 0, 0, 'Candy Cane - break-up line only to male players'),
  (22, 7, 35053, 0, 0, 8, 0, 14125, 0, 0, 0, 'Candy Cane - break-up line once 447 is rewarded'),
  (22, 7, 35053, 0, 0, 8, 0, 14126, 0, 0, 1, 'Candy Cane - break-up line until Life Savings is rewarded'),
  (22, 6, 35054, 0, 0, 20, 0, 1, 0, 0, 0, 'Chip Endale - break-up line only to female players'),
  (22, 6, 35054, 0, 0, 8, 0, 14125, 0, 0, 0, 'Chip Endale - break-up line once 447 is rewarded'),
  (22, 6, 35054, 0, 0, 8, 0, 14126, 0, 0, 1, 'Chip Endale - break-up line until Life Savings is rewarded');
