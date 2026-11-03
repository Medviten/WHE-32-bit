/* "The First Pact", the imp quest for Worgen warlocks, from Amelia Fearhart (see [BASE,F-024]_class-trainers.sql, which it needs).
   Individual Progression takes Summon Imp off the warlock trainers, so warlocks need a quest for it. The Grell Finger
   item and its display are in dbc/[BASE,F-024]_item.sql and _itemdisplayinfo.sql */

/*Add imp quest*/
DELETE FROM `quest_template` WHERE (`ID` = @TheFirstPactQuest);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(@TheFirstPactQuest, 2, -1, 1, -61, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 688, 7763, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 5, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @WorgenMask, 'The First Pact', 'Bring 3 Grell Fingers to Amelia Fearhart in Aldrassil.', 'These elves spurn our kind, $N. Their own hubris doomed their false tree, yet they would blame us for its rot. Given the choice between introspection and ignorance, they choose the latter. $B$BI am not so incurious. If they will not learn from their failures, I will. To the west, you will find grell roaming abandoned furbolg camps. Their origins are uncertain, but they seem to be uniquely susceptible to the corruption that seeps through this land.$B$BI wish to study them further. Bring me three of their fingers, and in return I will teach you how to subjugate your first demon: the humble imp.', '', 'Return to Amelia Fearhart in Aldrassil.', 0, 0, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, '', '', '', '', 0);

/*Imp quest addon*/
DELETE FROM `quest_template_addon` WHERE (`ID` = @TheFirstPactQuest);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`)
VALUES (@TheFirstPactQuest, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*Imp quest progress text*/
DELETE FROM `quest_request_items` WHERE (`ID` = @TheFirstPactQuest);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(@TheFirstPactQuest, 0, 0, 'If you can dispatch a few grell, I\'m sure an imp will give you no trouble.', 0);

/*Add imp quest reward*/
DELETE FROM `quest_offer_reward` WHERE `ID`=@TheFirstPactQuest;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(@TheFirstPactQuest, 0, 0, 0, 0, 0, 0, 0, 0, 'These will do nicely. Would that I could acquire a subject that is alive and intact, but more discreet methods are needed with these prying elves around.$B$BNow, listen closely to what I say; this imp may well be your only companion in these lands, so it behooves you to master its summoning.', 12340);

/*Associate Amelia Fearhart with quest start*/
DELETE FROM `creature_queststarter` WHERE (`ID` = 62103) AND (`quest` = @TheFirstPactQuest);
INSERT INTO `creature_queststarter` VALUES
(62103, @TheFirstPactQuest);

/*Associate Amelia Fearhart with quest end*/
DELETE FROM `creature_questender` WHERE (`ID` = 62103) AND (`quest` = @TheFirstPactQuest);
INSERT INTO `creature_questender` VALUES
(62103, @TheFirstPactQuest);

/*Add quest item*/
DELETE FROM `item_template` WHERE (`entry` = 90000);

INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(90000, 12, 0, -1, 'Grell Finger', 75787, 1, 2048, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 'It\'s still twitching.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);

/*Add quest item to mob: grell already have other quest items at Idx 0 (Fel Moss) and 1*/
DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (1988, 1989) AND `ItemId` = 90000;
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(1988, 2, 90000, 0),
(1989, 2, 90000, 0);

/*Add quest item to loot table*/
DELETE FROM `creature_loot_template` WHERE `Entry` IN (1988, 1989) AND `Item` IN (90000) AND `Reference` IN (0) AND `GroupId` IN (0);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1988, 90000, 0, 90, 1, 1, 0, 1, 1, 'Grell - Grell Finger'),
(1989, 90000, 0, 90, 1, 1, 0, 1, 1, 'Grellkin - Grell Finger');
