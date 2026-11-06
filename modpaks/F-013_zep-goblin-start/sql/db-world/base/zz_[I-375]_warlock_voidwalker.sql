-- ============================================================================
-- I-375 Lost Isles warlock class quest - Voidwalker (F-011)
-- ============================================================================
-- 3.3.5a teaches Summon Voidwalker (697) only as a quest reward, and every
-- copy of that quest starts in Durotar/Orgrimmar. Goblin warlocks now earn it
-- in the Gallywix Labor Mine instead, on a warlock-only branch of 25123:
--
--   25110 Kaja'Cola Gives You IDEAS!
--     |-- 25122 Morale Boost / 25124 Brute Brutality        (everyone)
--     |-- 25123 Throw It On the Ground!                      (NOT warlock)
--     `-- 91210 The Orb of Dominion  Greely -> Evol          (warlock only)
--           `-- 91211 Hostile Takeover  Evol -> Evol         (warlock only)
--   25125 Light at the End of the Tunnel: 25122 + 25124 + (25123 OR 91210)
--
-- Blastshadow's succubus (39195) becomes his voidwalker Hollowmaw. 91211 uses
-- the Orb of Dominion at a Summoning Circle on the rim above the mine to call
-- the stock 5676 Summoned Voidwalker (arrives calm, turns hostile after 3 s),
-- subjugate it, and hand the orb back to Evol. Reward = 11520 -> 697.
--
-- Phasing: 25110 rewarded -> Lost Isles phase 16384 (phase_definitions 13).
-- The hilltop trainer camp is phase 32768 only, so Evol needs his own 16384
-- spawn, at the mine entrance. Evol + circle positions measured in-game
-- (.gps, 2026-10-01): the first spot by the graveyard was underwater. Nearest
-- Brute Overseers ~64-72 yd; none patrol (random wander 5-6 yd).
--
-- Spell 900910 (Orb of Dominion, event 900910) is in dbc/[I-375]_spell.sql.
-- ============================================================================

SET @ORB       := 84514;   -- inert quest drop (91210); Item Reservations CSV, F-011 block
SET @ORB_LIVE  := 84515;   -- Attuned Orb, usable (91211)
SET @Q_ORB     := 91210;   -- The Orb of Dominion
SET @Q_BIND    := 91211;   -- Hostile Takeover
SET @SPELL     := 900910;  -- also the SEND_EVENT id
SET @EVOL      := 38513;   -- Evol Fingers, Lost Isles warlock trainer
SET @GREELY    := 39199;   -- Assistant Greely, the summoned mine follower
SET @BLAST     := 39194;   -- Blastshadow the Brutemaster
SET @HOLLOW    := 39195;   -- was Delicia Whipsnaps
SET @VOID      := 900911;  -- Unbound Voidwalker (91211; copy of stock 5676 that submits)
SET @EVOL_GUID := 3110901;
SET @CIRC_GUID := 6950300;
SET @CIRCLE    := 900910;  -- Lost Isles Summoning Circle GO (spell focus 1651)

-- ---------------------------------------------------------------------------
-- Items: Orb of Dominion (inert drop) + Attuned Orb of Dominion (usable)
-- Two items so the orb can't be used before Evol hands out Hostile Takeover.
-- ---------------------------------------------------------------------------
DELETE FROM `item_template` WHERE entry IN (@ORB, @ORB_LIVE);
INSERT INTO `item_template` SET
  entry = @ORB,
  class = 12,
  subclass = 0,
  name = 'Orb of Dominion',
  displayid = 39424,
  Quality = 1,
  Flags = 2048,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 1,
  stackable = 1,
  bonding = 4,
  description = 'Dormant without its master. Evol Fingers might know what it does.',
  Material = 3;

INSERT INTO `item_template` SET
  entry = @ORB_LIVE,
  class = 12,
  subclass = 0,
  name = 'Attuned Orb of Dominion',
  displayid = 39424,
  Quality = 1,
  Flags = 64,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 1,
  stackable = 1,
  spellid_1 = @SPELL,
  spelltrigger_1 = 0,
  spellcooldown_1 = -1,
  spellcategorycooldown_1 = -1,
  bonding = 4,
  description = 'Use at the summoning circle by the mine entrance to call and subjugate a voidwalker.',
  Material = 3;

-- Quest drop from Blastshadow, advertised to the client (I-332 pattern).
DELETE FROM `creature_loot_template` WHERE Entry = @BLAST AND Item = @ORB;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
  (@BLAST, @ORB, 0, 100, 1, 1, 0, 1, 1, 'I-375 Blastshadow the Brutemaster - Orb of Dominion');

-- Also advertises 25123's soulstone, which had no row (dropped by Delicia's
-- table in the port, see the soulstone fix below).
DELETE FROM `creature_questitem` WHERE CreatureEntry = @BLAST AND ItemId IN (@ORB, 84330);
INSERT INTO `creature_questitem` (CreatureEntry, Idx, ItemId, VerifiedBuild) VALUES
  (@BLAST, 0, @ORB, 0),
  (@BLAST, 1, 84330, 0);

-- ---------------------------------------------------------------------------
-- Quest 91210 The Orb of Dominion (Greely -> Evol)
-- ---------------------------------------------------------------------------
DELETE FROM `quest_template` WHERE ID = @Q_ORB;
INSERT INTO `quest_template` SET
  ID = @Q_ORB,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 1,
  QuestSortID = 4720,
  RewardXPDifficulty = 4,
  RewardMoney = 420,
  RewardMoneyDifficulty = 460,
  RewardChoiceItemID1 = 84361,
  RewardChoiceItemQuantity1 = 1,
  RewardChoiceItemID2 = 84402,
  RewardChoiceItemQuantity2 = 1,
  AllowableRaces = @GoblinMask,
  LogTitle = 'The Orb of Dominion',
  LogDescription = 'Slay Blastshadow the Brutemaster and recover his Orb of Dominion, then take it to Evol Fingers at the entrance to the Gallywix Labor Mine.',
  QuestDescription = '$N, you''re a $c, right? Then you''re exactly who we need for Blastshadow the Brutemaster!$B$BHe''s the one keeping everybody in line down here. Him and that big purple... thing that follows him around. Hollowmaw, he calls it. Whenever somebody steps out of line, Blastshadow waves this glowy orb at it and it does whatever he says!$B$BTake him down and grab that orb. I have no idea what it does, but it''s a warlock-y thing and you''re a warlock-y $g guy:gal;. Evol Fingers would know. I saw him sneak out to the mine entrance!',
  QuestCompletionLog = 'Bring the Orb of Dominion to Evol Fingers at the entrance to the Gallywix Labor Mine.',
  RequiredItemId1 = @ORB,
  RequiredItemCount1 = 1;

DELETE FROM `quest_template_addon` WHERE ID = @Q_ORB;
INSERT INTO `quest_template_addon` SET
  ID = @Q_ORB,
  AllowableClasses = 256,
  PrevQuestID = 25110;

DELETE FROM `quest_request_items` WHERE ID = @Q_ORB;
INSERT INTO `quest_request_items` SET
  ID = @Q_ORB,
  EmoteOnComplete = 1,
  EmoteOnIncomplete = 1,
  CompletionText = 'Keep your voice down, boss. I''m not exactly on the Trade Prince''s employee-of-the-month list right now. What''ve you got there?';

DELETE FROM `quest_offer_reward` WHERE ID = @Q_ORB;
INSERT INTO `quest_offer_reward` SET
  ID = @Q_ORB,
  Emote1 = 5,
  RewardText = 'Well, well. An Orb of Dominion! Blastshadow always did like his toys.$B$BThis is how he kept that voidwalker of his on a leash. You know what you''re holding, boss? The difference between a warlock and a warlock''s lunch.$B$BIt''s gone dormant without its master, though. Leave it with me a moment and I''ll wake it up for you.';

-- ---------------------------------------------------------------------------
-- Quest 91211 Hostile Takeover (Evol -> Evol)
-- ---------------------------------------------------------------------------
DELETE FROM `quest_template` WHERE ID = @Q_BIND;
INSERT INTO `quest_template` SET
  ID = @Q_BIND,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 1,
  QuestSortID = -61,
  RewardXPDifficulty = 4,
  RewardDisplaySpell = 697,
  RewardSpell = 11520,
  StartItem = @ORB_LIVE,
  AllowableRaces = @GoblinMask,
  LogTitle = 'Hostile Takeover',
  LogDescription = 'Use the Attuned Orb of Dominion at the summoning circle beside Evol Fingers, subjugate the voidwalker that answers, then return the orb to Evol.',
  QuestDescription = 'There, it''s awake again, and it answers to you now.$B$BAny $c can open a door to the Void, boss. Getting what comes through to listen? That''s the hard part. Call up something you can''t control and it''ll tear through everything in sight until somebody puts it down. Usually the somebody is you, and usually it''s too late.$B$BThat''s what the orb is for. Take it to the summoning circle I''ve drawn just over there and use it. A voidwalker will answer, and it won''t want to take orders. Beat it down until it bows, and the orb will bind it to you.$B$BOnce it''s bound, it''s bound for good. Bring the orb back to me after. Think of it as a hostile takeover.',
  QuestCompletionLog = 'Return the Orb of Dominion to Evol Fingers.',
  RequiredNpcOrGo1 = @VOID,
  RequiredNpcOrGoCount1 = 1,
  RequiredItemId1 = @ORB_LIVE,
  RequiredItemCount1 = 1,
  ObjectiveText1 = 'Voidwalker subjugated';

DELETE FROM `quest_template_addon` WHERE ID = @Q_BIND;
INSERT INTO `quest_template_addon` SET
  ID = @Q_BIND,
  AllowableClasses = 256,
  PrevQuestID = @Q_ORB,
  ProvidedItemCount = 1;

DELETE FROM `quest_request_items` WHERE ID = @Q_BIND;
INSERT INTO `quest_request_items` SET
  ID = @Q_BIND,
  EmoteOnComplete = 1,
  EmoteOnIncomplete = 1,
  CompletionText = 'Well, look at that. It''s following you around like a lost goblin pup. I''d say it''s done.';

DELETE FROM `quest_offer_reward` WHERE ID = @Q_BIND;
INSERT INTO `quest_offer_reward` SET
  ID = @Q_BIND,
  Emote1 = 4,
  RewardText = 'Now that''s what I call an acquisition! You''ve got the Void on your payroll now, $N, and the bond is yours for keeps. Call up a voidwalker whenever you need something big and purple to take the hits for you. No orb required.$B$BI''ll hang on to this. And boss? Let''s keep it between us. The Trade Prince doesn''t need to know who''s hiring.';

-- ---------------------------------------------------------------------------
-- Quest givers
-- ---------------------------------------------------------------------------
DELETE FROM `creature_queststarter` WHERE quest IN (@Q_ORB, @Q_BIND);
INSERT INTO `creature_queststarter` (id, quest) VALUES
  (@GREELY, @Q_ORB),
  (@EVOL,   @Q_BIND);

DELETE FROM `creature_questender` WHERE quest IN (@Q_ORB, @Q_BIND);
INSERT INTO `creature_questender` (id, quest) VALUES
  (@EVOL, @Q_ORB),
  (@EVOL, @Q_BIND);

-- ---------------------------------------------------------------------------
-- 25125 gate: either branch unlocks it (ElseGroups are OR'd)
-- ElseGroup 0 = stock 25122 + 25123 + 25124 (F-011 port, untouched)
-- ElseGroup 1 = warlock 25122 + 91210 + 25124
-- ---------------------------------------------------------------------------
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 19 AND SourceGroup = 0 AND SourceEntry = 25125 AND ElseGroup = 1;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
  (19, 0, 25125, 0, 1, 8, 0, 25122,  0, 0, 0, 0, 0, '', 'I-375 25125 warlock branch - Morale Boost rewarded'),
  (19, 0, 25125, 0, 1, 8, 0, @Q_ORB, 0, 0, 0, 0, 0, '', 'I-375 25125 warlock branch - The Orb of Dominion rewarded'),
  (19, 0, 25125, 0, 1, 8, 0, 25124,  0, 0, 0, 0, 0, '', 'I-375 25125 warlock branch - Brute Brutality rewarded');

-- ---------------------------------------------------------------------------
-- Stock / generated rows we change (one UPDATE per ID)
-- ---------------------------------------------------------------------------
-- 25123 becomes the non-warlock branch; its demon is now a voidwalker.
UPDATE `quest_template` SET
  QuestDescription = 'This nightmare will never be over while Blastshadow the Brutemaster still breathes. There are a couple of problems though.$B$BOne, being a warlock, he''s got a voidwalker named Hollowmaw. If you kill Blastshadow quickly, the demon will go back to where it was summoned from.$B$BThe second problem, since Blastshadow is a warlock, he has a soulstone that allows him to resurrect. You have to get his soulstone and destroy it so that he''ll be dead forever!'
WHERE ID = 25123;
UPDATE `quest_template_addon` SET AllowableClasses = 1279 WHERE ID = 25123;  -- every class except warlock (256)

-- Shared 25123/91210 rewards renamed now Blastshadow keeps a voidwalker, not a
-- succubus: the pants go to the warlock, the wrists to his voidwalker.
UPDATE `item_template` SET name = 'Blastshadow''s Tights', description = 'I wonder why he was wearing these.' WHERE entry = 84361;
UPDATE `item_template` SET name = 'Hollowmaw''s Shackles', description = 'Still cold from the Void.' WHERE entry = 84402;

-- Evol had no QUESTGIVER bit (npcflag 49 = gossip + trainer + class trainer).
UPDATE `creature_template` SET npcflag = 51 WHERE entry = @EVOL;

-- Delicia Whipsnaps (succubus) -> Hollowmaw (voidwalker). Her existing SAI
-- (die on DATA_SET 1 from Blastshadow's death) is kept.
UPDATE `creature_template` SET name = 'Hollowmaw', unit_class = 1, lootid = 0 WHERE entry = @HOLLOW;
UPDATE `creature_template_model` SET CreatureDisplayID = 1132 WHERE CreatureID = @HOLLOW AND Idx = 0;

-- Blastshadow's Soulstone (84330, 25123): the quest says it is HIS soulstone, but
-- the port had it at 10% on Blastshadow and 100% on Delicia/Hollowmaw, who is
-- killed by script when Blastshadow dies and so is never looted. Blastshadow
-- drops it every time (quest-only); Hollowmaw carries nothing (its only row).
UPDATE `creature_loot_template` SET Chance = 100 WHERE Entry = @BLAST AND Item = 84330;
DELETE FROM `creature_loot_template` WHERE Entry = @HOLLOW AND Item = 84330;

-- Blastshadow SAI row 7 was SUMMON_CREATURE 75129 on death: 75129 is a spell
-- id (Shadow Channelling), no such creature exists, the action did nothing.
DELETE FROM `smart_scripts` WHERE entryorguid = @BLAST AND source_type = 0 AND id = 7;

-- Goblins no longer take the Durotar/Orgrimmar voidwalker chain (258 -> 2).
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1506;   -- Gan'rul's Summons
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1501;   -- Creature of the Void
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1504;   -- The Binding
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 10790;  -- Return to Gan'rul Bloodeye

-- ---------------------------------------------------------------------------
-- Spawns: Evol at the Sky Falls camp spot (phase 16384) + the Summoning Circle
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE guid = @EVOL_GUID;
INSERT INTO `creature` SET
  guid = @EVOL_GUID,
  id = @EVOL,
  map = 1,
  spawnMask = 1,
  phaseMask = 16384,
  equipment_id = 1,
  position_x = 1304.4,      -- same spot as his phase-32768 camp spawn 11002135, so he
  position_y = -10858.3,    -- doesn't jump 35 yd when the mine phase starts (user,
  position_z = 222.939,     -- 2026-10-06; was the rim at 1306.8,-10822.8)
  orientation = 0.4538,
  spawntimesecs = 300,
  wander_distance = 0,
  MovementType = 0,
  Comment = '[I-375] Evol Fingers - Sky Falls camp spot (mine phase)';

-- Own circle template: stock 105576 is spell focus 203, which the client names
-- "Orgrimmar Summoning Circle" in the error when the orb is used elsewhere.
-- Same look (display 465, size 2, 10 yd radius), focus 1651 "Lost Isles
-- Summoning Circle" (dbc/[I-375]_spellfocusobject.sql).
DELETE FROM `gameobject_template` WHERE entry = @CIRCLE;
INSERT INTO `gameobject_template` SET
  entry = @CIRCLE,
  type = 8,
  displayId = 465,
  name = 'Summoning Circle',
  size = 2,
  Data0 = 1651,
  Data1 = 10;

DELETE FROM `gameobject_template_addon` WHERE entry = @CIRCLE;
INSERT INTO `gameobject_template_addon` SET
  entry = @CIRCLE,
  faction = 35;

-- Phase 16384 + 32768 so it stays usable if the warlock leaves Hostile
-- Takeover until the phases after the mine.
DELETE FROM `gameobject` WHERE guid = @CIRC_GUID;
INSERT INTO `gameobject` SET
  guid = @CIRC_GUID,
  id = @CIRCLE,
  map = 1,
  spawnMask = 1,
  phaseMask = 49152,
  position_x = 1320.5945,
  position_y = -10828.687,
  position_z = 221.5931,
  orientation = 0,
  rotation0 = 0,
  rotation1 = 0,
  rotation2 = 0,
  rotation3 = 1,
  spawntimesecs = 900,
  animprogress = 100,
  state = 1,
  Comment = '[I-375] Summoning Circle - Hostile Takeover';

-- ---------------------------------------------------------------------------
-- 900911 Unbound Voidwalker: the voidwalker the Attuned Orb calls. Copy of stock
-- 5676 Summoned Voidwalker (same template, text and intro) except that it
-- cannot die: at 15% health it gives in - turns friendly, bows, credits its
-- summoner and makes the summoner cast 697 Summon Voidwalker (triggered: no
-- soul shard, no cast time), so the warlock walks away with the voidwalker as
-- a pet, the way hunters tame a beast before learning Tame Beast properly.
-- Evol then teaches 697 for good (RewardSpell 11520).
-- ---------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE entry = @VOID;
INSERT INTO `creature_template` SET
  entry = @VOID,
  name = 'Unbound Voidwalker',
  minlevel = 10,
  maxlevel = 10,
  faction = 14,
  speed_walk = 1,
  speed_run = 1.14286,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  dmgschool = 5,
  DamageModifier = 0.9,
  BaseAttackTime = 2000,
  RangeAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 512,
  unit_flags2 = 2048,
  type = 3,
  AIName = 'SmartAI',
  MovementType = 1,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 0.95,
  ExperienceModifier = 1,
  RegenHealth = 1,
  flags_extra = 2;

DELETE FROM `creature_template_model` WHERE CreatureID = @VOID;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@VOID, 0, 1132, 1, 1, 0);

DELETE FROM `creature_text` WHERE CreatureID = @VOID;
INSERT INTO `creature_text` (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, TextRange, comment) VALUES
  (@VOID, 0, 0, 'Who dares summon the power of the void?', 12, 8, 100, 0, 0, 0, 1986, 0, 'Unbound Voidwalker - summoned (stock 5676)'),
  (@VOID, 1, 0, 'You will live forever in torment for this, pathetic warlock.', 12, 8, 100, 0, 0, 0, 1987, 0, 'Unbound Voidwalker - aggro (stock 5676)'),
  (@VOID, 2, 0, 'Enough... The orb has spoken. I serve.', 12, 0, 100, 0, 0, 0, 0, 0, 'Unbound Voidwalker - submits (I-375)');

-- CALL_TIMED_ACTIONLIST params are (id, timerType, allowOverride) - the enum
-- comment's order is wrong. timerType 0 = OUT OF COMBAT only: the submit list
-- then froze for the whole fight and ran at the leash (round 4 test). 2 = always.
DELETE FROM `smart_scripts` WHERE entryorguid = @VOID AND source_type = 0;
DELETE FROM `smart_scripts` WHERE entryorguid IN (90091100, 90091101) AND source_type = 9;
INSERT INTO `smart_scripts` (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, event_param5, event_param6, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_param4, target_x, target_y, target_z, target_o, comment) VALUES
  (@VOID, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, 0, 0, 80, 90091100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - On Just Summoned - Run Intro'),
  (@VOID, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 7750, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Between 0-30% Health - Cast Consuming Rage'),
  (@VOID, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - On Aggro - Say Line 1'),
  (@VOID, 0, 3, 0, 21, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - On Reached Home - Despawn'),
  (@VOID, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 80, 90091101, 2, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Between 0-15% Health - Run Submit'),
  -- intro: stock 567600 + cannot drop below 10% health
  (90091100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 42, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Invincible below 10% health'),
  (90091100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Set Faction 35'),
  (90091100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Cast Summoned Demon'),
  (90091100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Say Line 0'),
  (90091100, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Set Faction 14'),
  (90091100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Intro - Start Attacking'),
  -- submit: friendly, stop, bow, credit summoner, summoner casts 697, despawn
  (90091101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Set Faction 35'),
  (90091101, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Combat Stop'),
  (90091101, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Set Passive'),
  (90091101, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Emote Bow'),
  (90091101, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Say Line 2'),
  (90091101, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, @VOID, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Kill Credit to Summoner'),
  (90091101, 9, 6, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 86, 697, 2, 23, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Summoner casts Summon Voidwalker (triggered)'),
  (90091101, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Unbound Voidwalker - Submit - Despawn');

-- SEND_EVENT 900910 -> summon 900911 on the circle, 3 min despawn (stock 1787 pattern).
DELETE FROM `event_scripts` WHERE id = @SPELL;
INSERT INTO `event_scripts` (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES
  (@SPELL, 0, 10, @VOID, 180000, 0, 1320.5945, -10828.687, 221.5931, 2.739);

-- ---------------------------------------------------------------------------
-- Quest POIs (world map area 544 = Lost Isles, as the stock mine quests use).
-- ObjectiveIndex: 0 = first creature objective, 4 = first item objective,
-- -1 = turn-in.
-- ---------------------------------------------------------------------------
DELETE FROM `quest_poi` WHERE QuestID IN (@Q_ORB, @Q_BIND);
INSERT INTO `quest_poi` (QuestID, id, ObjectiveIndex, MapID, WorldMapAreaId, Floor, Priority, Flags, VerifiedBuild) VALUES
  (@Q_ORB,  0, -1, 1, 544, 0, 0, 0, 0),   -- turn in: Evol, mine entrance
  (@Q_ORB,  1,  4, 1, 544, 0, 0, 0, 0),   -- Orb of Dominion: Blastshadow
  (@Q_BIND, 0, -1, 1, 544, 0, 0, 0, 0),   -- turn in: Evol
  (@Q_BIND, 1,  0, 1, 544, 0, 0, 0, 0);   -- voidwalker: the Summoning Circle

DELETE FROM `quest_poi_points` WHERE QuestID IN (@Q_ORB, @Q_BIND);
INSERT INTO `quest_poi_points` (QuestID, Idx1, Idx2, X, Y, VerifiedBuild) VALUES
  (@Q_ORB,  0, 0, 1307, -10823, 0),
  (@Q_ORB,  1, 0, 1396, -10916, 0),
  (@Q_BIND, 0, 0, 1307, -10823, 0),
  (@Q_BIND, 1, 0, 1321, -10829, 0);
