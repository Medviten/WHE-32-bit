-- ============================================================================
-- I-377 Kezan shaman class quests - Call of Earth (F-011)
-- ============================================================================
-- 3.3.5a grants Stoneskin Totem (8073 -> 8071) and the Earth Totem tool (5175)
-- only through the stock Call of Earth chain 1516-1518 in the Valley of Trials.
-- Goblins leave Kezan at ~6, so goblin shamans now get their own level-4 chain
-- in Kezan, Draenei-style (angry element, no sapta):
--
--   91216 Call of Earth          Maxx Avalanche (34695, KTC HQ) -> Minor
--                                Manifestation of Earth on the Kaja'mite mine rim
--   91217 Kezan's Dirty Secret   collect 8 Kezan Refuse from the rubbish and the
--                                leaking oil drums dumped in the mine
--   91218 Call of Earth          the spirit's Rough Quartz (6656) back to Maxx
--                                -> Stoneskin Totem + Earth Totem (as stock 1518)
--
-- Spirit spot from the user's .gps (2026-10-04). Rubbish: 23 nodes over the
-- mine pit, sampled from the tile heightmap (KALIMDOR_53_48: z 25-58, <= 2.5 yd
-- rise over 2 yd, >= 4 yd from doodads, >= 5 yd from every spawn, >= 36 yd
-- apart; 6950324 moved off -8910,-11640 where it sat under a scale-5.5 Kezan pipe
-- behind a fern - unreachable in the F-219 test; 6950310 lowered 0.8 yd in game with the
-- F-208 spawn editor, it floated). Kezan phases 1/2/4/1024/2048/4096 = 7175 (as the KTC HQ trainers).
-- ============================================================================

SET @MAXX      := 34695;   -- Maxx Avalanche, Kezan (npcflag 51: QUESTGIVER already)
SET @SPIRIT    := 900919;  -- Minor Manifestation of Earth (copy of 5891)
SET @SPIRIT_G  := 3110928;
SET @Q_CALL    := 91216;
SET @Q_REFUSE  := 91217;
SET @Q_QUARTZ  := 91218;
SET @REFUSE    := 84519;   -- Kezan Refuse (quest item)
SET @QUARTZ    := 6656;    -- Rough Quartz (stock, from 1518)
SET @CAN       := 900911;  -- Discarded Rubbish
SET @DRUM      := 900912;  -- Leaking Oil Drum

-- ---------------------------------------------------------------------------
-- The spirit: stock 5891 (level 15), brought to level 5, without its invisibility
-- ---------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE entry = @SPIRIT;
INSERT INTO `creature_template` SET
  entry = @SPIRIT,
  name = 'Minor Manifestation of Earth',
  minlevel = 5,
  maxlevel = 5,
  faction = 35,
  npcflag = 2,
  speed_walk = 1.55556,
  speed_run = 1.14286,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 0.8,
  BaseAttackTime = 2000,
  RangeAttackTime = 2046,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 768,
  unit_flags2 = 2048,
  type = 4,
  type_flags = 512,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1,
  CreatureImmunitiesId = -68,
  flags_extra = 2;

DELETE FROM `creature_template_model` WHERE CreatureID = @SPIRIT;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@SPIRIT, 0, 12110, 0.5, 1, 0);  -- half size (user)

-- No auras: stock 5891 carries 8203 Elemental Spirit Invisibility (invisibility
-- type 1), seen only through Sapta Sight 8202 from the Earth Sapta. This chain
-- has no sapta, so the spirit must be plainly visible (user couldn't see it).
DELETE FROM `creature_template_addon` WHERE entry = @SPIRIT;
INSERT INTO `creature_template_addon` (entry, path_id, mount, bytes1, bytes2, emote, visibilityDistanceType, auras) VALUES
  (@SPIRIT, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature` WHERE guid = @SPIRIT_G;
INSERT INTO `creature` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, MovementType, Comment) VALUES
  (@SPIRIT_G, @SPIRIT, 1, 1, 7175, -8897.318, -11574.766, 54.728, 2.063, 60, 0, 0, '[I-377] Minor Manifestation of Earth - Kaja''mite mine rim');

-- ---------------------------------------------------------------------------
-- Kezan Refuse: quest item from both node types
-- ---------------------------------------------------------------------------
DELETE FROM `item_template` WHERE entry = @REFUSE;
INSERT INTO `item_template` SET
  entry = @REFUSE,
  class = 12,
  subclass = 0,
  name = 'Kezan Refuse',
  displayid = 7064,
  Quality = 1,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 8,
  stackable = 8,
  bonding = 4,
  description = 'Somebody''s profit margin. Everybody else''s problem.',
  Material = 1;

-- Type 3 chests, lock 1818 (instant quest pickup, as Kezan's Kaja'Cola 201798),
-- consumed on use, Data8 = quest so they only open while it is in the log.
DELETE FROM `gameobject_template` WHERE entry IN (@CAN, @DRUM);
INSERT INTO `gameobject_template` SET
  entry = @CAN,
  type = 3,
  displayId = 9359,
  name = 'Discarded Rubbish',
  castBarCaption = 'Collecting',
  size = 1.5,
  Data0 = 1818,
  Data1 = @CAN,
  Data3 = 1,
  Data8 = @Q_REFUSE;
INSERT INTO `gameobject_template` SET
  entry = @DRUM,
  type = 3,
  displayId = 9663,
  name = 'Leaking Oil Drum',
  castBarCaption = 'Collecting',
  size = 0.8,
  Data0 = 1818,
  Data1 = @DRUM,
  Data3 = 1,
  Data8 = @Q_REFUSE;

DELETE FROM `gameobject_loot_template` WHERE Entry IN (@CAN, @DRUM);
INSERT INTO `gameobject_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
  (@CAN,  @REFUSE, 0, 100, 1, 1, 0, 1, 1, 'I-377 Discarded Rubbish - Kezan Refuse'),
  (@DRUM, @REFUSE, 0, 100, 1, 1, 0, 1, 1, 'I-377 Leaking Oil Drum - Kezan Refuse');

DELETE FROM `gameobject` WHERE guid BETWEEN 6950309 AND 6950331;
INSERT INTO `gameobject` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state, Comment) VALUES
  (6950309, @CAN, 1, 1, 7175, -9030.0, -11697.0, 56.17, 1.237, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950310, @DRUM, 1, 1, 7175, -9030.0, -11652.0, 46.09, 4.473, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950311, @CAN, 1, 1, 7175, -9030.0, -11568.0, 51.17, 1.536, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950312, @DRUM, 1, 1, 7175, -9021.0, -11610.0, 42.02, 6.209, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950313, @CAN, 1, 1, 7175, -8997.0, -11682.0, 45.18, 5.428, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950314, @DRUM, 1, 1, 7175, -8994.0, -11550.0, 56.35, 6.272, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950315, @CAN, 1, 1, 7175, -8991.0, -11640.0, 40.0, 1.14, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950316, @DRUM, 1, 1, 7175, -8982.0, -11595.0, 41.15, 6.074, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950317, @CAN, 1, 1, 7175, -8964.0, -11700.0, 49.45, 1.966, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950318, @DRUM, 1, 1, 7175, -8958.0, -11565.0, 57.4, 0.66, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950319, @CAN, 1, 1, 7175, -8952.0, -11622.0, 40.91, 2.616, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950320, @DRUM, 1, 1, 7175, -8943.0, -11670.0, 50.71, 4.185, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950321, @CAN, 1, 1, 7175, -8919.0, -11565.0, 57.96, 0.133, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950322, @DRUM, 1, 1, 7175, -8916.0, -11700.0, 52.17, 2.426, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950323, @CAN, 1, 1, 7175, -8916.0, -11601.0, 51.61, 5.33, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950324, @DRUM, 1, 1, 7175, -8884.0, -11598.0, 45.17, 0.722, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950325, @CAN, 1, 1, 7175, -8898.0, -11532.0, 57.76, 6.048, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950326, @DRUM, 1, 1, 7175, -8883.0, -11565.0, 53.77, 0.807, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950327, @CAN, 1, 1, 7175, -8877.0, -11670.0, 44.79, 1.945, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950328, @DRUM, 1, 1, 7175, -8859.0, -11538.0, 53.3, 4.652, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950329, @CAN, 1, 1, 7175, -8856.0, -11700.0, 35.96, 1.872, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine'),
  (6950330, @DRUM, 1, 1, 7175, -8853.0, -11622.0, 40.88, 4.412, 0, 0, 0, 1, 60, 100, 1, '[I-377] Leaking Oil Drum - Kaja''mite mine'),
  (6950331, @CAN, 1, 1, 7175, -8853.0, -11586.0, 47.19, 0.361, 0, 0, 0, 1, 60, 100, 1, '[I-377] Discarded Rubbish - Kaja''mite mine');

-- ---------------------------------------------------------------------------
-- Quests (fields follow stock 1516-1518)
-- ---------------------------------------------------------------------------
DELETE FROM `quest_template` WHERE ID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_template` SET
  ID = @Q_CALL,
  QuestType = 2,
  QuestLevel = 4,
  MinLevel = 4,
  QuestSortID = -82,
  RewardNextQuest = @Q_REFUSE,
  RewardXPDifficulty = 2,
  AllowableRaces = @GoblinMask,
  LogTitle = 'Call of Earth',
  LogDescription = 'Speak with the Minor Manifestation of Earth on the rim of the Kaja''mite mine.',
  QuestDescription = 'You feel that, $N? That rumble under your boots? That''s not the bass from the Trade Prince''s party. The earth under Kezan is angry, and you''re a shaman now, so congratulations: that makes it your problem.$B$BOut on the rim of the Kaja''mite mine, below the headquarters, the earth has woken up enough to talk. Go and listen to it. And whatever it says, don''t make any promises involving refunds.',
  QuestCompletionLog = 'Speak with the Minor Manifestation of Earth.';

INSERT INTO `quest_template` SET
  ID = @Q_REFUSE,
  QuestType = 2,
  QuestLevel = 4,
  MinLevel = 4,
  QuestSortID = -82,
  RewardNextQuest = @Q_QUARTZ,
  RewardXPDifficulty = 4,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @REFUSE,
  RequiredItemCount1 = 8,
  LogTitle = 'Kezan''s Dirty Secret',
  LogDescription = 'Collect 8 Kezan Refuse from the rubbish and the leaking oil drums in the Kaja''mite mine and bring them to the Minor Manifestation of Earth.',
  QuestDescription = 'You come at last, child of this island. Do you hear how I grind? Your kind dig into me for their glowing stone, and into the hole they make they throw what they no longer want. Rusted cans. Barrels that bleed black oil into my bones.$B$BI do not ask you to stop them. I know your kind too well for that. I ask only that you take back what was thrown into me. Gather it, and bring it to me, and I will know whether the earth may speak to you.',
  QuestCompletionLog = 'Return to the Minor Manifestation of Earth on the rim of the Kaja''mite mine.';

INSERT INTO `quest_template` SET
  ID = @Q_QUARTZ,
  QuestType = 2,
  QuestLevel = 4,
  MinLevel = 4,
  QuestSortID = -82,
  RewardXPDifficulty = 5,
  RewardSpell = 8073,
  RewardDisplaySpell = 8071,  -- shows "You will learn: Stoneskin Totem" (as stock 1518)
  RewardItem1 = 5175,
  RewardAmount1 = 1,
  StartItem = @QUARTZ,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @QUARTZ,
  RequiredItemCount1 = 1,
  LogTitle = 'Call of Earth',
  LogDescription = 'Bring the Rough Quartz to Maxx Avalanche at KTC Headquarters.',
  QuestDescription = 'You carried my burden without being made to. Few of your kind would.$B$BTake this rough quartz to the one who sent you. He will shape a totem around it, and through it I will answer when you call. It is small, but stone outlasts gold, $N. Remember that the next time your people dig.',
  QuestCompletionLog = 'Return to Maxx Avalanche at KTC Headquarters.';

DELETE FROM `quest_template_addon` WHERE ID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_template_addon` (ID, AllowableClasses, PrevQuestID, ProvidedItemCount, SpecialFlags) VALUES
  (@Q_CALL,   64, 0,         0, 0),
  (@Q_REFUSE, 64, @Q_CALL,   0, 0),
  (@Q_QUARTZ, 64, @Q_REFUSE, 1, 0);

DELETE FROM `quest_request_items` WHERE ID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_request_items` (ID, EmoteOnComplete, EmoteOnIncomplete, CompletionText) VALUES
  (@Q_REFUSE, 1, 1, 'The weight is still upon me, child.'),
  (@Q_QUARTZ, 1, 1, 'Well? What did the big rock say?');

DELETE FROM `quest_offer_reward` WHERE ID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_offer_reward` (ID, Emote1, RewardText) VALUES
  (@Q_CALL,   1,   'Another of the island''s children. You smell of oil and gunpowder, like all of them. And yet you heard me. Listen, then.'),
  (@Q_REFUSE, 2,   'Lighter. The ground breathes easier already. You did not have to do this, and you did it anyway. That is the first thing earth asks of a shaman.'),
  (@Q_QUARTZ, 273, 'A quartz? It talked to you and all you got was a rock? ... Hah, I''m kidding. That rock''s the real deal. Hold still, I''ll set it in a totem for you. Plant that in the ground and the earth will have your back - literally. Now get out there and make me proud. Or rich. Rich works too.');

DELETE FROM `creature_queststarter` WHERE quest BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `creature_queststarter` (id, quest) VALUES
  (@MAXX, @Q_CALL), (@SPIRIT, @Q_REFUSE), (@SPIRIT, @Q_QUARTZ);
DELETE FROM `creature_questender` WHERE quest BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `creature_questender` (id, quest) VALUES
  (@SPIRIT, @Q_CALL), (@SPIRIT, @Q_REFUSE), (@MAXX, @Q_QUARTZ);

-- ---------------------------------------------------------------------------
-- Quest POIs (Kezan WorldMapArea 605). -1 = turn-in; the refuse in the pit is
-- ObjectiveIndex 4 = RequiredItemId1 (item objectives are 4-9, 0-3 are NpcOrGo;
-- stock 1516 does the same). 0 drew nothing (user).
-- ---------------------------------------------------------------------------
DELETE FROM `quest_poi` WHERE QuestID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_poi` (QuestID, id, ObjectiveIndex, MapID, WorldMapAreaId, Floor, Priority, Flags, VerifiedBuild) VALUES
  (@Q_CALL,   0, -1, 1, 605, 0, 0, 1, 0),
  (@Q_REFUSE, 0, -1, 1, 605, 0, 0, 1, 0),
  (@Q_REFUSE, 1,  4, 1, 605, 0, 0, 1, 0),
  (@Q_QUARTZ, 0, -1, 1, 605, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE QuestID BETWEEN @Q_CALL AND @Q_QUARTZ;
INSERT INTO `quest_poi_points` (QuestID, Idx1, Idx2, X, Y, VerifiedBuild) VALUES
  (@Q_CALL,   0, 0, -8897, -11575, 0),
  (@Q_REFUSE, 0, 0, -8897, -11575, 0),
  (@Q_REFUSE, 1, 0, -8850, -11530, 0), (@Q_REFUSE, 1, 1, -8850, -11705, 0),
  (@Q_REFUSE, 1, 2, -9035, -11705, 0), (@Q_REFUSE, 1, 3, -9035, -11530, 0),
  (@Q_QUARTZ, 0, 0, -8949, -11479, 0);

-- ---------------------------------------------------------------------------
-- Goblins off the stock Durotar earth chain (one UPDATE per stock ID): Call of
-- Earth 1516-1518 386 -> 130, Earth Sapta 1462/1463 946 -> 690.
-- ---------------------------------------------------------------------------
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1516;  -- Call of Earth
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1517;  -- Call of Earth
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1518;  -- Call of Earth
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1462;  -- Earth Sapta
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1463;  -- Earth Sapta
