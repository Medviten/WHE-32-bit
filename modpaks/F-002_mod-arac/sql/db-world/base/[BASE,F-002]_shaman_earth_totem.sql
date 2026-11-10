/* Earth Totem and Stoneskin Totem for shamans of races without a stock Call of Earth chain nearby: a simple level 4 quest
   from the shaman trainers, which F-029 also places in the starting areas. Idea from mod-uac.
   This file has to sort after [BASE,F-002]_quest_template.sql, whose update would open these quests to every race. */
SET @QuestEarthAlliance := 92801;
SET @QuestEarthHorde    := 92802;
SET @EarthTrainerAlliance := 17089; -- Firmanvaar
SET @EarthTrainerHorde    := 3062;  -- Meela Dawnstrider
SET @EarthTotemItem       := 5175;

DELETE FROM `creature_queststarter` WHERE `quest` IN (@QuestEarthAlliance, @QuestEarthHorde);
DELETE FROM `creature_questender` WHERE `quest` IN (@QuestEarthAlliance, @QuestEarthHorde);
DELETE FROM `quest_offer_reward` WHERE `ID` IN (@QuestEarthAlliance, @QuestEarthHorde);
DELETE FROM `quest_template_addon` WHERE `ID` IN (@QuestEarthAlliance, @QuestEarthHorde);
DELETE FROM `quest_template` WHERE `ID` IN (@QuestEarthAlliance, @QuestEarthHorde);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (@QuestEarthAlliance, @QuestEarthHorde);

/* Fields follow stock 1518, the end of the Orc and Troll chain */
INSERT INTO `quest_template` SET
  `ID` = @QuestEarthAlliance,
  `QuestType` = 2,
  `QuestLevel` = 4,
  `MinLevel` = 4,
  `QuestSortID` = -82,
  `RewardXPDifficulty` = 6,
  `RewardDisplaySpell` = 8071,
  `RewardSpell` = 8073,
  `RewardItem1` = @EarthTotemItem,
  `RewardAmount1` = 1,
  `AllowableRaces` = @AllianceMask & ~@DraeneiMask,
  `LogTitle` = 'Call of Earth',
  `LogDescription` = 'Speak with Firmanvaar to take up the earth totem.',
  `QuestDescription` = 'The elements answer those who ask them properly, $N, wherever they were born. My people learned that far from home.$B$BThe earth here is no stranger to you. You have walked on it all your life. Stand with me a moment and let it know you, and I will give you the totem that lets you call upon it.',
  `QuestCompletionLog` = 'Speak with Firmanvaar.';

INSERT INTO `quest_template` SET
  `ID` = @QuestEarthHorde,
  `QuestType` = 2,
  `QuestLevel` = 4,
  `MinLevel` = 4,
  `QuestSortID` = -82,
  `RewardXPDifficulty` = 6,
  `RewardDisplaySpell` = 8071,
  `RewardSpell` = 8073,
  `RewardItem1` = @EarthTotemItem,
  `RewardAmount1` = 1,
  `AllowableRaces` = @HordeMask & ~(@OrcMask | @TrollMask | @TaurenMask),
  `LogTitle` = 'Call of Earth',
  `LogDescription` = 'Speak with Meela Dawnstrider to take up the earth totem.',
  `QuestDescription` = 'I have heard it said that the spirits favor only those raised in their ways. The spirits have never said so themselves, $N.$B$BThe earth carries all of us alike. Be still with me a moment and let it know you, and I will give you the totem that lets you call upon it.',
  `QuestCompletionLog` = 'Speak with Meela Dawnstrider.';

INSERT INTO `quest_template_addon` (`ID`, `AllowableClasses`) VALUES
(@QuestEarthAlliance, @ShamanMask),
(@QuestEarthHorde,    @ShamanMask);

INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES
(@QuestEarthAlliance, 'There. It knows you now, and it will come when you call.$B$BCarry this totem with you. The earth needs somewhere to stand.'),
(@QuestEarthHorde,    'There. It knows you now, and it will come when you call.$B$BCarry this totem with you. The earth needs somewhere to stand.');

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(@EarthTrainerAlliance, @QuestEarthAlliance),
(@EarthTrainerHorde,    @QuestEarthHorde);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(@EarthTrainerAlliance, @QuestEarthAlliance),
(@EarthTrainerHorde,    @QuestEarthHorde);

/* Not offered to anyone who already has the totem, in their bags or bank */
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, @QuestEarthAlliance, 0, 0, 2, 0, @EarthTotemItem, 1, 1, 1, 0, 0, '', 'Call of Earth: only without an Earth Totem'),
(19, 0, @QuestEarthHorde,    0, 0, 2, 0, @EarthTotemItem, 1, 1, 1, 0, 0, '', 'Call of Earth: only without an Earth Totem');

/* The stock chains stay with their own stock races. Custom races keep whatever F-026 gave them */
UPDATE `quest_template` SET `AllowableRaces` = (`AllowableRaces` & ~(@BaseAllianceMask | @BaseHordeMask)) | @OrcMask | @TrollMask WHERE `ID` IN (1516, 1517, 1518);
UPDATE `quest_template` SET `AllowableRaces` = (`AllowableRaces` & ~(@BaseAllianceMask | @BaseHordeMask)) | @TaurenMask          WHERE `ID` IN (1519, 1520, 1521);
UPDATE `quest_template` SET `AllowableRaces` = (`AllowableRaces` & ~(@BaseAllianceMask | @BaseHordeMask)) | @DraeneiMask         WHERE `ID` IN (9449, 9450, 9451);
