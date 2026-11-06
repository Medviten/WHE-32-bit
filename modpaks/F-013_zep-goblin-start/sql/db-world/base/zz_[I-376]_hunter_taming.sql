-- ============================================================================
-- I-376 Lost Isles hunter class quests - Taming the Beast (F-011)
-- ============================================================================
-- 3.3.5a grants Tame Beast / Call Pet / Beast Training only through the stock
-- Taming the Beast chain, whose givers are in Durotar/Mulgore. Goblin hunters
-- now do it on the Lost Isles: Bamm Megabomb at the Bilgewater Lumber Yard,
-- right below the hunting grounds, hands out three Taming Rods, then Training
-- the Beast. Quest relations are per creature ENTRY and every stock Bamm spawn
-- shares 38122, so the lumber-yard Bamm is his own entry (900915, a copy of
-- 38122 without the Trading Up SmartAI) and only he offers the chain.
--
--   91212 Taming the Beast - Teraptor Bull       (hillside E of the lumber yard)
--   91213 Taming the Beast - Jungle Panther      (higher up the same hillside)
--   91214 Taming the Beast - Contaminated Turtle (beach by the KTC Oil Platform)
--         -> rewards Tame Beast (1579 -> 1515)
--   91215 Training the Beast -> rewards Beast Training (5300)
--
-- Mechanism = stock 6062/6083/6082: rod spell (900912-900914) channels on the
-- beast; when it ends the core casts the final spell (900915-900917, named in
-- the rod's effect 2 trigger spell - Zeppelin-Core I-376 fallback), which
-- charms the beast as a temporary pet and credits the quest objective. Spells in
-- dbc/[I-376]_spell.sql.
--
-- The level-10 phases (Sky Falls camp 32768, mine 16384 and later) have no
-- tameable beasts but Jungle Panthers at 10-11 (and the rod refuses a beast above
-- the hunter's level), so the chain brings its own level-10 beasts, spawned in
-- phase 50176 (32768 + 16384 + 1024, also covering 16392/32776/32808).
-- Positions sampled from the client tile KALIMDOR_52_28: >= 10 yd apart, ground
-- under 30 deg; turtles spread over the whole KTC beach sand fan (z 0.1-2.5, >= 6 yd off the
-- waterline, >= 36 yd apart - user: first pass clustered at its east end).
-- ============================================================================

SET @BAMM      := 900915;  -- lumber-yard Bamm Megabomb (copy of 38122)
SET @Q_RAPTOR  := 91212;
SET @Q_PANTHER := 91213;
SET @Q_TURTLE  := 91214;
SET @Q_TRAIN   := 91215;
SET @RAPTOR    := 900912;  -- Teraptor Bull
SET @PANTHER   := 900913;  -- Jungle Panther (level 10 copy of 40064)
SET @TURTLE    := 900914;  -- Contaminated Turtle
SET @ROD_R     := 84516;
SET @ROD_P     := 84517;
SET @ROD_T     := 84518;
SET @CR_RAPTOR  := 900916;  -- tracker credit: Teraptor Bull tamed
SET @CR_PANTHER := 900917;  -- tracker credit: Jungle Panther tamed
SET @CR_TURTLE  := 900918;  -- tracker credit: Contaminated Turtle tamed

-- Teraptor Bull: copy of Spiny Raptor 38187, Teraptor Matriarch model
DELETE FROM `creature_template` WHERE entry = @RAPTOR;
INSERT INTO `creature_template` SET
  entry = @RAPTOR,
  name = 'Teraptor Bull',
  minlevel = 10,
  maxlevel = 10,
  faction = 14,
  speed_walk = 1,
  speed_run = 0.8571,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 0.75,
  BaseAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 32768,
  dynamicflags = 2048,
  family = 11,
  type = 1,
  type_flags = 1,
  lootid = 38187,
  skinloot = 38187,
  MovementType = 1,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1;

DELETE FROM `creature_template_model` WHERE CreatureID = @RAPTOR;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@RAPTOR, 0, 30303, 0.3, 1, 0);  -- display 30303 carries CreatureModelScale 4.0 (the Matriarch); 0.3 -> 1.2 effective (user: too big)

-- Jungle Panther: copy of Jungle Panther 40064, level fixed at 10
DELETE FROM `creature_template` WHERE entry = @PANTHER;
INSERT INTO `creature_template` SET
  entry = @PANTHER,
  name = 'Jungle Panther',
  minlevel = 10,
  maxlevel = 10,
  faction = @PredatorFactionTemplate,
  speed_walk = 1,
  speed_run = 0.8571,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 0.75,
  BaseAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 32768,
  dynamicflags = 2048,
  family = 2,
  type = 1,
  type_flags = 1,
  lootid = 40064,
  skinloot = 40064,
  MovementType = 1,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1;

DELETE FROM `creature_template_model` WHERE CreatureID = @PANTHER;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@PANTHER, 0, 599, 1, 1, 0);

-- Contaminated Turtle: copy of Ancient Island Turtle 36732
DELETE FROM `creature_template` WHERE entry = @TURTLE;
INSERT INTO `creature_template` SET
  entry = @TURTLE,
  name = 'Contaminated Turtle',
  minlevel = 10,
  maxlevel = 10,
  faction = 189,
  speed_walk = 1,
  speed_run = 0.8571,
  speed_swim = 2,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 0.75,
  BaseAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 32768,
  dynamicflags = 2048,
  family = 21,
  type = 1,
  type_flags = 1,
  lootid = 36732,
  skinloot = 38845,
  MovementType = 1,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1;

DELETE FROM `creature_template_model` WHERE CreatureID = @TURTLE;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@TURTLE, 0, 17654, 0.6, 1, 0);  -- display 17654 carries CreatureModelScale 2.0 (sea turtle); 0.6 -> 1.2 effective (user: too big)

-- Tracker credit (never spawned). The final tame spells 900915-900917 give
-- KILL_CREDIT (effect 90) for these entries, so each taming quest shows
-- "<Beast> tamed 0/1" and killing the real beast never counts.
DELETE FROM `creature_template` WHERE entry BETWEEN @CR_RAPTOR AND @CR_TURTLE;
INSERT INTO `creature_template` (entry, name, subname, minlevel, maxlevel, faction, unit_flags, flags_extra, RegenHealth) VALUES
  (@CR_RAPTOR,  'Teraptor Bull tamed',       'I-376 credit', 1, 1, 35, 33554432, 130, 1),
  (@CR_PANTHER, 'Jungle Panther tamed',      'I-376 credit', 1, 1, 35, 33554432, 130, 1),
  (@CR_TURTLE,  'Contaminated Turtle tamed', 'I-376 credit', 1, 1, 35, 33554432, 130, 1);
DELETE FROM `creature_template_model` WHERE CreatureID BETWEEN @CR_RAPTOR AND @CR_TURTLE;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@CR_RAPTOR, 0, 11686, 1, 1, 0), (@CR_PANTHER, 0, 11686, 1, 1, 0), (@CR_TURTLE, 0, 11686, 1, 1, 0);

-- Bamm Megabomb (lumber yard): same look, hunter-trainer gossip (510091) and
-- trainer list (7) as 38122, but no SmartAI - 38122's five rows belong to
-- 24741 Trading Up (the "come over here" greeting and the egg lines).
DELETE FROM `creature_template` WHERE entry = @BAMM;
INSERT INTO `creature_template` SET
  entry = @BAMM,
  name = 'Bamm Megabomb',
  subname = 'Hunter Trainer',
  gossip_menu_id = 510091,
  minlevel = 10,
  maxlevel = 10,
  faction = @TownInABoxFactionTemplate,
  npcflag = 51,
  speed_walk = 1,
  speed_run = 1.1429,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 0.2,
  BaseAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 2,
  type = 7,
  type_flags = 262144,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1;

DELETE FROM `creature_template_model` WHERE CreatureID = @BAMM;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@BAMM, 0, 29912, 1, 1, 0);

DELETE FROM `creature_default_trainer` WHERE CreatureId = @BAMM;
INSERT INTO `creature_default_trainer` (CreatureId, TrainerId) VALUES (@BAMM, 7);

-- Spawn: in front of the rescued goblins who gather here in phase 8 (Greely,
-- Ace, Coach Crosscheck, Gobber - they face ~2.5 rad), facing back at them.
-- Picked against the client tile: >= 4.8 yd from every NPC, no doodad within
-- 2.5 yd (the yard is full of crates, dynamite and mine track), flat ground.
-- The user's rough .gps (1834.46, -10867.88) was in the middle of the group.
-- Visible in the Sky Falls camp (32768) and mine (16384) phases, when hunters
-- reach 10 (and so also in 16392/32776/32808).
DELETE FROM `creature` WHERE guid = 3110922;
INSERT INTO `creature` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, MovementType, Comment) VALUES
  (3110922, @BAMM, 1, 1, 49152, 1830.05, -10871.03, 22.74, 0.0, 300, 0, 0, '[I-376] Bamm Megabomb - Bilgewater Lumber Yard');

-- Spawns (round 3, 2026-10-03): the user asked for the Teraptor Bulls and Jungle Panthers to be
-- interwoven over the Lumber Yard shelf the I-376 ramp opens up (marked on the map), 20-30 yd
-- apart. Region traced on the client tile from the ramp top: walkable (< 35 deg) ground at
-- z 47-90, x 1700-1826, y -11120..-10950. 6 + 6 beasts >= 22 yd apart (types alternated by
-- nearest neighbour), ground < 30 deg, no doodad within 2.5 yd. Turtles stay on the beach.
-- guid 3110914 is free (was the 7th raptor).
DELETE FROM `creature` WHERE guid BETWEEN 3110902 AND 3110921 OR guid BETWEEN 3110923 AND 3110927;
INSERT INTO `creature` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, MovementType, Comment) VALUES
  (3110902, @RAPTOR, 1, 1, 50176, 1794.73, -11018.56, 60.78, 1.609, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110903, @RAPTOR, 1, 1, 50176, 1785.09, -10994.89, 63.33, 5.129, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110904, @RAPTOR, 1, 1, 50176, 1807.24, -11038.97, 58.11, 2.099, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110905, @RAPTOR, 1, 1, 50176, 1819.77, -10957.24, 48.63, 2.572, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110906, @RAPTOR, 1, 1, 50176, 1811.32, -11065.61, 57.18, 0.055, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110907, @RAPTOR, 1, 1, 50176, 1774.89, -10974.55, 66.94, 0.094, 60, 6, 1, '[I-376] raptor - Lumber Yard shelf'),
  (3110908, @PANTHER, 1, 1, 50176, 1821.45, -11016.81, 50.14, 2.273, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110909, @PANTHER, 1, 1, 50176, 1745.12, -10965.41, 63.08, 4.471, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110910, @PANTHER, 1, 1, 50176, 1806.2, -10983.08, 51.7, 2.304, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110911, @PANTHER, 1, 1, 50176, 1791.32, -11055.05, 67.48, 0.66, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110912, @PANTHER, 1, 1, 50176, 1793.84, -10956.41, 50.01, 4.996, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110913, @PANTHER, 1, 1, 50176, 1776.72, -11033.24, 69.96, 5.818, 60, 6, 1, '[I-376] panther - Lumber Yard shelf'),
  (3110915, @TURTLE, 1, 1, 50176, 1884, -10792, 0.42, 5.622, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110916, @TURTLE, 1, 1, 50176, 1880, -10828, 0.58, 2.511, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110917, @TURTLE, 1, 1, 50176, 1914, -10840, 0.36, 5.796, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110918, @TURTLE, 1, 1, 50176, 1950, -10864, 0.35, 5.754, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110919, @TURTLE, 1, 1, 50176, 1884, -10866, 0.55, 2.765, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110920, @TURTLE, 1, 1, 50176, 1914, -10894, 0.66, 0.26, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110921, @TURTLE, 1, 1, 50176, 1950, -10912, 0.36, 1.898, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110923, @TURTLE, 1, 1, 50176, 1918, -10934, 0.61, 4.942, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110924, @TURTLE, 1, 1, 50176, 1954, -10948, 0.13, 5.579, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110925, @TURTLE, 1, 1, 50176, 1890, -10958, 2.43, 4.908, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110926, @TURTLE, 1, 1, 50176, 1928, -10978, 0.17, 3.62, 60, 6, 1, '[I-376] turtle - KTC beach'),
  (3110927, @TURTLE, 1, 1, 50176, 1886, -10994, 0.18, 4.086, 60, 6, 1, '[I-376] turtle - KTC beach');

-- Herbs on the newly reachable shelf (user, 2026-10-03), following F-202's Lost Isles nodes:
-- plain spawns, respawn 900 s, phase 65535 (every stage). Level-10 area: Peacebloom 1618,
-- Silverleaf 1617, Earthroot 1619, Mageroyal 1620. The first pass put 8 on the shelf and the
-- minimap read as one clump (user); now 4, one per corner of the shelf, >= 48 yd apart and
-- >= 12 yd from every beast. The stock Peacebloom 6000034 and Copper Vein 6000078 sit just
-- west. guids 6950301-6950308 stay reserved; the DELETE clears the retired 4.
DELETE FROM `gameobject` WHERE guid BETWEEN 6950301 AND 6950308;
INSERT INTO `gameobject` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state, Comment) VALUES
  (6950302, 1617, 1, 1, 65535, 1808.75, -11024.0, 56.44, 0, 0, 0, 0, 1, 900, 100, 1, '[I-376] Silverleaf - Lumber Yard shelf'),
  (6950304, 1620, 1, 1, 65535, 1805.65, -10967.22, 53.21, 0, 0, 0, 0, 1, 900, 100, 1, '[I-376] Mageroyal - Lumber Yard shelf'),
  (6950305, 1618, 1, 1, 65535, 1757.01, -10969.72, 57.93, 0, 0, 0, 0, 1, 900, 100, 1, '[I-376] Peacebloom - Lumber Yard shelf'),
  (6950306, 1619, 1, 1, 65535, 1791.59, -11069.76, 68.4, 0, 0, 0, 0, 1, 900, 100, 1, '[I-376] Earthroot - Lumber Yard shelf');

DELETE FROM `item_template` WHERE entry = @ROD_R;
INSERT INTO `item_template` SET
  entry = @ROD_R,
  class = 12,
  subclass = 0,
  name = 'Taming Rod',
  displayid = 26595,
  Quality = 1,
  Flags = 64,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 1,
  stackable = 1,
  spellid_1 = 900912,
  spelltrigger_1 = 0,
  spellcharges_1 = 3,
  spellcooldown_1 = -1,
  spellcategorycooldown_1 = -1,
  bonding = 4,
  description = 'Use on a Teraptor Bull.',
  Material = -1;

DELETE FROM `item_template` WHERE entry = @ROD_P;
INSERT INTO `item_template` SET
  entry = @ROD_P,
  class = 12,
  subclass = 0,
  name = 'Taming Rod',
  displayid = 26595,
  Quality = 1,
  Flags = 64,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 1,
  stackable = 1,
  spellid_1 = 900913,
  spelltrigger_1 = 0,
  spellcharges_1 = 3,
  spellcooldown_1 = -1,
  spellcategorycooldown_1 = -1,
  bonding = 4,
  description = 'Use on a Jungle Panther.',
  Material = -1;

DELETE FROM `item_template` WHERE entry = @ROD_T;
INSERT INTO `item_template` SET
  entry = @ROD_T,
  class = 12,
  subclass = 0,
  name = 'Taming Rod',
  displayid = 26595,
  Quality = 1,
  Flags = 64,
  BuyCount = 1,
  ItemLevel = 1,
  maxcount = 1,
  stackable = 1,
  spellid_1 = 900914,
  spelltrigger_1 = 0,
  spellcharges_1 = 3,
  spellcooldown_1 = -1,
  spellcategorycooldown_1 = -1,
  bonding = 4,
  description = 'Use on a Contaminated Turtle.',
  Material = -1;

-- ---------------------------------------------------------------------------
-- Quests (fields follow stock 6062/6083/6082/6081)
-- ---------------------------------------------------------------------------
DELETE FROM `quest_template` WHERE ID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_template` SET
  ID = @Q_RAPTOR,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -261,
  RewardNextQuest = @Q_PANTHER,
  RewardXPDifficulty = 5,
  StartItem = @ROD_R,
  Flags = 2,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @ROD_R,
  RequiredItemCount1 = 1,
  RequiredNpcOrGo1 = @CR_RAPTOR,
  RequiredNpcOrGoCount1 = 1,
  ObjectiveText1 = 'Teraptor Bull tamed',
  LogTitle = 'Taming the Beast',
  LogDescription = 'Use the Taming Rod to tame a Teraptor Bull on the high ground east of the Bilgewater Lumber Yard, then return the rod to Bamm Megabomb.',
  QuestDescription = 'So you want a pet, $N? Every $c worth the gold has one. I''m your personal trainer, so let''s get you started.$B$BHere''s a Taming Rod. Up on the high ground east of the Bilgewater Lumber Yard, the Teraptor Bulls have been running wild ever since this island started coming apart. Use the rod on one and keep its attention until it''s yours.$B$BThen bring the rod back. They don''t grow on trees, you know.',
  QuestCompletionLog = 'Return the Taming Rod to Bamm Megabomb.';

INSERT INTO `quest_template` SET
  ID = @Q_PANTHER,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -261,
  RewardNextQuest = @Q_TURTLE,
  RewardXPDifficulty = 5,
  StartItem = @ROD_P,
  Flags = 2,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @ROD_P,
  RequiredItemCount1 = 1,
  RequiredNpcOrGo1 = @CR_PANTHER,
  RequiredNpcOrGoCount1 = 1,
  ObjectiveText1 = 'Jungle Panther tamed',
  LogTitle = 'Taming the Beast',
  LogDescription = 'Use the Taming Rod to tame a Jungle Panther on the high ground east of the Bilgewater Lumber Yard, then return the rod to Bamm Megabomb.',
  QuestDescription = 'Teraptors are all charge and no brains. Panthers are a different deal: smart, quiet, and they bite back.$B$BUp on that same high ground you''ll find Jungle Panthers prowling. Take this rod and make one of them yours. Keep your eyes on it the whole time, or it''ll be your face it''s eating instead of my profits.',
  QuestCompletionLog = 'Return the Taming Rod to Bamm Megabomb.';

INSERT INTO `quest_template` SET
  ID = @Q_TURTLE,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -261,
  RewardNextQuest = @Q_TRAIN,
  RewardXPDifficulty = 5,
  RewardDisplaySpell = 23356,
  RewardSpell = 1579,
  StartItem = @ROD_T,
  Flags = 2,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @ROD_T,
  RequiredItemCount1 = 1,
  RequiredNpcOrGo1 = @CR_TURTLE,
  RequiredNpcOrGoCount1 = 1,
  ObjectiveText1 = 'Contaminated Turtle tamed',
  LogTitle = 'Taming the Beast',
  LogDescription = 'Use the Taming Rod to tame a Contaminated Turtle on the beach by the KTC Oil Platform, then return the rod to Bamm Megabomb.',
  QuestDescription = 'Last one, $N. Down on the beach by the KTC Oil Platform, the turtles have been soaking in the Trade Prince''s runoff for weeks. They glow. They''re grumpy. They''re basically walking hazardous waste.$B$BTame one of those and you can tame anything on this island. Here''s your last rod.',
  QuestCompletionLog = 'Return the Taming Rod to Bamm Megabomb.';

INSERT INTO `quest_template` SET
  ID = @Q_TRAIN,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -261,
  RewardXPDifficulty = 3,
  RewardDisplaySpell = 23357,
  RewardSpell = 5300,
  Flags = 8,
  AllowableRaces = @GoblinMask,
  LogTitle = 'Training the Beast',
  LogDescription = 'Speak to Bamm Megabomb.',
  QuestDescription = 'Taming a pet is one thing. Keeping it fed, happy and doing what you tell it? That''s management, $N, and management is where the real money is.$B$BLet me show you how to train your new pet. Then go find one worth keeping.';

DELETE FROM `quest_template_addon` WHERE ID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_template_addon` (ID, AllowableClasses, PrevQuestID, ProvidedItemCount, SpecialFlags) VALUES
  (@Q_RAPTOR,  4, 0,          1, 0),
  (@Q_PANTHER, 4, @Q_RAPTOR,  1, 0),
  (@Q_TURTLE,  4, @Q_PANTHER, 1, 0),
  (@Q_TRAIN,   4, @Q_TURTLE,  0, 0);

DELETE FROM `quest_request_items` WHERE ID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_request_items` (ID, EmoteOnComplete, EmoteOnIncomplete, CompletionText) VALUES
  (@Q_RAPTOR,  1, 1, 'Got that teraptor eating out of your hand yet? Careful, it''ll eat the hand too.'),
  (@Q_PANTHER, 1, 1, 'Still got all your fingers? Good. Count them again just to be sure.'),
  (@Q_TURTLE,  1, 1, 'Did it glow at you? They glow at you.');

DELETE FROM `quest_offer_reward` WHERE ID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_offer_reward` (ID, Emote1, RewardText) VALUES
  (@Q_RAPTOR,  273, 'Not bad, $N! You''re a natural. Now let''s see how you handle something with claws.'),
  (@Q_PANTHER, 273, 'Look at that, not a scratch on you. Well, not many. One more and you''re ready for the big leagues.'),
  (@Q_TURTLE,  273, 'Three for three! You''ve earned it, $N: from now on you can tame any beast you like, no rod required. Just don''t try it on the Trade Prince.'),
  (@Q_TRAIN,   1,   'There. Your pet can learn new tricks now, and you can feed it. Happy pets work harder, and harder work means better returns. Good luck out there, $N.');

DELETE FROM `creature_queststarter` WHERE quest BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `creature_queststarter` (id, quest) VALUES
  (@BAMM, @Q_RAPTOR), (@BAMM, @Q_PANTHER), (@BAMM, @Q_TURTLE), (@BAMM, @Q_TRAIN);
DELETE FROM `creature_questender` WHERE quest BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `creature_questender` (id, quest) VALUES
  (@BAMM, @Q_RAPTOR), (@BAMM, @Q_PANTHER), (@BAMM, @Q_TURTLE), (@BAMM, @Q_TRAIN);

-- ---------------------------------------------------------------------------
-- Spells: each rod only works on its own creature (source type 17 = spell,
-- target 1 = explicit target, type 31 = object entry: TypeID 3 unit + entry).
-- Stock quest rods have no such restriction here and would take any beast.
-- ---------------------------------------------------------------------------
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 17 AND SourceEntry IN (900912, 900913, 900914);
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
  (17, 0, 900912, 0, 0, 31, 1, 3, @RAPTOR,  0, 0, 0, 0, '', 'I-376 Tame Teraptor Bull - only on a Teraptor Bull'),
  (17, 0, 900913, 0, 0, 31, 1, 3, @PANTHER, 0, 0, 0, 0, '', 'I-376 Tame Jungle Panther - only on the level-10 Jungle Panther'),
  (17, 0, 900914, 0, 0, 31, 1, 3, @TURTLE,  0, 0, 0, 0, '', 'I-376 Tame Contaminated Turtle - only on a Contaminated Turtle');

-- Same scripts as the stock rods (19694 etc.) and final tames (19681 etc.):
-- tame checks on the rod, despawn-on-dismiss on the temporary pet.
DELETE FROM `spell_script_names` WHERE spell_id BETWEEN 900912 AND 900917;
INSERT INTO `spell_script_names` (spell_id, ScriptName) VALUES
  (900912, 'spell_hun_tame_beast'),
  (900913, 'spell_hun_tame_beast'),
  (900914, 'spell_hun_tame_beast'),
  (900915, 'spell_hun_taming_the_beast'),
  (900916, 'spell_hun_taming_the_beast'),
  (900917, 'spell_hun_taming_the_beast');

-- ---------------------------------------------------------------------------
-- Quest POIs (area 544 = Lost Isles). Stock taming quests mark the hunting
-- ground on objective 16 (the event objective) and the turn-in on -1; ours
-- have a real objective (the credit creature), so the ground is objective 0.
-- ---------------------------------------------------------------------------
DELETE FROM `quest_poi` WHERE QuestID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_poi` (QuestID, id, ObjectiveIndex, MapID, WorldMapAreaId, Floor, Priority, Flags, VerifiedBuild) VALUES
  (@Q_RAPTOR,  0, -1, 1, 544, 0, 0, 1, 0),
  (@Q_RAPTOR,  1, 0, 1, 544, 0, 0, 1, 0),
  (@Q_PANTHER, 0, -1, 1, 544, 0, 0, 1, 0),
  (@Q_PANTHER, 1, 0, 1, 544, 0, 0, 1, 0),
  (@Q_TURTLE,  0, -1, 1, 544, 0, 0, 1, 0),
  (@Q_TURTLE,  1, 0, 1, 544, 0, 0, 1, 0),
  (@Q_TRAIN,   0, -1, 1, 544, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE QuestID BETWEEN @Q_RAPTOR AND @Q_TRAIN;
INSERT INTO `quest_poi_points` (QuestID, Idx1, Idx2, X, Y, VerifiedBuild) VALUES
  (@Q_RAPTOR,  0, 0, 1830, -10871, 0),
  (@Q_RAPTOR,  1, 0, 1828, -10950, 0), (@Q_RAPTOR, 1, 1, 1828, -11075, 0),
  (@Q_RAPTOR,  1, 2, 1740, -11075, 0), (@Q_RAPTOR, 1, 3, 1740, -10950, 0),
  (@Q_PANTHER, 0, 0, 1830, -10871, 0),
  (@Q_PANTHER, 1, 0, 1828, -10950, 0), (@Q_PANTHER, 1, 1, 1828, -11075, 0),
  (@Q_PANTHER, 1, 2, 1740, -11075, 0), (@Q_PANTHER, 1, 3, 1740, -10950, 0),
  (@Q_TURTLE,  0, 0, 1830, -10871, 0),
  (@Q_TURTLE,  1, 0, 1965, -10960, 0), (@Q_TURTLE, 1, 1, 1960, -11005, 0),
  (@Q_TURTLE,  1, 2, 1890, -11010, 0), (@Q_TURTLE, 1, 3, 1885, -10955, 0),
  (@Q_TRAIN,   0, 0, 1830, -10871, 0);

-- ---------------------------------------------------------------------------
-- Hunters must finish the chain before they can face Gallywix (user, 2026-10-03):
-- the lumber-yard quests may run in parallel with the taming, but 25251 Final
-- Confrontation ("deal with Trade Prince Gallywix") - the way off the island - needs
-- 91215 Training the Beast for hunters.
-- 25251 already has two OR'd groups from zz_[F-011]_quests_05_conditions.sql (Escape
-- Velocity + the gender-split She Loves Me / Candy quest). Rather than rewrite those,
-- the rule lives in condition reference template -91215 (its ElseGroups are OR'd:
-- 0 = not a hunter, CONDITION_CLASS 15 mask 4 negated; 1 = 91215 rewarded) and one
-- reference row is added to each of 25251's groups. F-011's file applies first and
-- deletes 25251's type-19 rows; this file sorts after it, so the rows are re-added.
-- ---------------------------------------------------------------------------
-- First version gated 25200/25201 instead (the user relaxed it); keep them clean.
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 19 AND SourceEntry IN (25200, 25201) AND Comment LIKE 'I-376%';

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = -91215;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
  (-91215, 0, 0, 0, 0, 15, 0, 4,        0, 0, 1, 0, 0, '', 'I-376 hunter gate - any class but hunter'),
  (-91215, 0, 0, 0, 1,  8, 0, @Q_TRAIN, 0, 0, 0, 0, 0, '', 'I-376 hunter gate - Training the Beast done');

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 19 AND SourceEntry = 25251 AND ConditionTypeOrReference = -91215;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
  (19, 0, 25251, 0, 0, -91215, 0, 0, 0, 0, 0, 0, 0, '', 'I-376 Final Confrontation - hunters must finish Taming the Beast'),
  (19, 0, 25251, 0, 1, -91215, 0, 0, 0, 0, 0, 0, 0, '', 'I-376 Final Confrontation - hunters must finish Taming the Beast');

-- ---------------------------------------------------------------------------
-- Goblins no longer take the stock taming chain or its breadcrumbs (386 -> 130).
-- ---------------------------------------------------------------------------
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6062;  -- Taming the Beast
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6083;  -- Taming the Beast
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6082;  -- Taming the Beast
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6081;  -- Training the Beast
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6068;  -- The Hunter's Path
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6069;  -- The Hunter's Path
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 6070;  -- The Hunter's Path
