-- ============================================================================
-- I-377 Lost Isles shaman class quests - Call of Fire (F-011)
-- ============================================================================
-- 3.3.5a grants Searing Totem (2075 -> 3599) and the Fire Totem tool (5176) only
-- through the stock Call of Fire chain (2983/2984, 1522-1527) in Durotar. Goblin
-- shamans now get a level-10 chain on the Lost Isles volcano, Draenei-style
-- (angry element, no sapta) - companion of zz_[I-377]_shaman_call_of_earth.sql:
--
--   91219 Call of Fire      Maxx Avalanche (38515, Sky Falls camp) -> Spirit of Fire on the
--                           volcano slope above Lost Peak
--   91220 Tempers Flare     kill 6 Raging Embers along the phase's lava lines
--   91221 Call of Fire      the spirit's Torch of the Eternal Flame (6654) back
--                           to Maxx -> Searing Totem + Fire Totem (as stock 1527)
--
-- Placement (user .gps, 2026-10-05, phase 16392): spirit at its own spot; embers
-- within 20 yd of three lava lines the user walked (start/bend/end .gps). The
-- volcano slope is TERRAIN-SWAPPED (map 659 LostIslesPhase1 from phase 16384 on). When
-- they were placed the server had no 659 map/navmesh (base Kalimdor heights), so embers
-- stand only where the two heightmaps agree within 2 yd (and are flat, >= 8 yd from
-- other spawns, >= 27 yd apart - user: 25-30 yd). I-385 has since given the server the
-- 659 terrain, so they now wander (see below).
-- The middle corridor (L2) was widened (user, 2026-10-06) to the quadrilateral
-- L2 start/end + (859.47,-10588.49) + (720.73,-10422.65), 20 yd margin. Re-laid at
-- 27 yd spacing: 74 embers (L1 8, L2 10 + corridor 22, L3 34), guids 3110930-3110961
-- and 3110963-3111004 (3110962 = the removed lumber-yard Maxx); ocean spots (z < 0.5)
-- excluded.
-- Spawn z = the VISIBLE (phase) ground + 0.05 - the
-- first pass used the higher of the two + 0.3, which left some up to 1.9 yd in the air (user).
-- Phase 50176 (16384 + 32768 + 1024) like the I-376 beasts: every level-10 stage.
-- Embers respawn in 180 s (user; first pass 60 s) and wander 6 yd (user: too static). The
-- placement rules above date from before I-385: the server now uses the 659 terrain and
-- navmesh in these phases (core patch 0055), so moving embers follow the visible ground.
-- ============================================================================

SET @MAXX      := 38515;   -- Maxx Avalanche, Lost Isles (npcflag 49 -> 51 below)
SET @SPIRIT    := 900920;  -- Spirit of Fire (display of stock 5893)
SET @SPIRIT_G  := 3110929;
SET @EMBER     := 900921;  -- Raging Ember (copy of 3417 Living Flame at level 10)
SET @Q_CALL    := 91219;
SET @Q_EMBERS  := 91220;
SET @Q_TORCH   := 91221;
SET @TORCH     := 6654;    -- Torch of the Eternal Flame (stock, from 1527)
SET @CORE      := 84520;   -- Ember Core (grey junk from the embers)

-- ---------------------------------------------------------------------------
-- Spirit of Fire. No addon auras: stock spirits carry 8203 Elemental Spirit
-- Invisibility (see Call of Earth round 1).
-- ---------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE entry = @SPIRIT;
INSERT INTO `creature_template` SET
  entry = @SPIRIT,
  name = 'Spirit of Fire',
  minlevel = 12,
  maxlevel = 12,
  faction = 35,
  npcflag = 2,
  speed_walk = 1,
  speed_run = 1.14286,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  DamageModifier = 1,
  BaseAttackTime = 2000,
  RangeAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags = 768,
  unit_flags2 = 2048,
  type = 4,
  HoverHeight = 2.5,        -- see the movement row below
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1,
  flags_extra = 2;

DELETE FROM `creature_template_model` WHERE CreatureID = @SPIRIT;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@SPIRIT, 0, 2172, 2, 1, 0);  -- 2x (user)

-- Hover (Ground 2): display 2172 is Creature\\FireElemental\\FireElemental, which the HD pack
-- (PATCH-Q, zep-hd-curated) replaces with a legless torso whose stand animation hangs the
-- body below the origin; at DisplayScale 2 it sank into the slope (user screenshot). The
-- core adds HoverHeight (2.5 yd) to the spawn z.
DELETE FROM `creature_template_movement` WHERE CreatureId = @SPIRIT;
INSERT INTO `creature_template_movement` (CreatureId, Ground, Swim, Flight, Rooted, Chase, Random, InteractionPauseTimer) VALUES
  (@SPIRIT, 2, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry = @SPIRIT;
INSERT INTO `creature_template_addon` (entry, path_id, mount, bytes1, bytes2, emote, visibilityDistanceType, auras) VALUES
  (@SPIRIT, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature` WHERE guid = @SPIRIT_G;
INSERT INTO `creature` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, MovementType, Comment) VALUES
  (@SPIRIT_G, @SPIRIT, 1, 1, 50176, 1026.0697, -10526.467, 203.201, 0.921, 60, 0, 0, '[I-377] Spirit of Fire - volcano slope (user .gps)');

-- ---------------------------------------------------------------------------
-- Raging Embers: Living Flame (3417) template, Draenor fire elemental look, level 10, hostile, fire melee,
-- wander 6 yd, drop junk + coal.
-- ---------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE entry = @EMBER;
INSERT INTO `creature_template` SET
  entry = @EMBER,
  name = 'Raging Ember',
  minlevel = 10,
  maxlevel = 10,
  faction = 14,
  speed_walk = 1,
  speed_run = 0.857143,
  speed_swim = 1,
  speed_flight = 1,
  detection_range = 18,
  dmgschool = 2,
  DamageModifier = 1,
  BaseAttackTime = 2000,
  RangeAttackTime = 2000,
  BaseVariance = 1,
  RangeVariance = 1,
  unit_class = 1,
  unit_flags2 = 2048,
  type = 4,
  HoverHeight = 1,
  HealthModifier = 1,
  ManaModifier = 1,
  ArmorModifier = 1,
  ExperienceModifier = 1,
  RegenHealth = 1,
  CreatureImmunitiesId = -62,
  lootid = @EMBER,
  MovementType = 1;

-- Loot (user: junk + coal): Ember Core (custom grey vendor junk - the
-- user rejected stock Rock Chip as off-theme; no fire-themed grey exists in stock)
-- and Coal for blacksmiths. Independent rolls, no money.
DELETE FROM `item_template` WHERE entry = @CORE;
INSERT INTO `item_template` SET
  entry = @CORE,
  class = 15,
  subclass = 0,
  name = 'Ember Core',
  displayid = 28840,  -- Fiery Core icon
  Quality = 0,
  BuyCount = 1,
  BuyPrice = 460,
  SellPrice = 115,
  ItemLevel = 1,
  stackable = 200,
  description = 'Still warm. Worth a few coppers to someone who doesn''t ask questions.',
  Material = -1;

DELETE FROM `creature_loot_template` WHERE Entry = @EMBER;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
  (@EMBER, @CORE, 0, 55, 0, 1, 0, 1, 2, 'I-377 Raging Ember - Ember Core (junk)'),
  (@EMBER, 3857, 0, 20, 0, 1, 0, 1, 1, 'I-377 Raging Ember - Coal');

-- Look (user): Draenor fire elemental, display 900343 / model 900204
-- (dbc/[I-377]_creaturemodeldata.sql, _creaturedisplayinfo.sql; model files in this
-- zpak's source-assets Creature\FireElementalDraenor\, PATCH-Z). The model is ~6 yd tall
-- at scale 1, so 0.4 -> ~2.5 yd. First pass used stock Living Flame display 1405 x1.3.
-- No hover: the Draenor model's mesh starts ~1 yd above its origin (bind pose), so it
-- floats by itself. (A hover row was tried and removed; the DELETE is its tombstone.)
DELETE FROM `creature_template_movement` WHERE CreatureId = @EMBER;

DELETE FROM `creature_template_model` WHERE CreatureID = @EMBER;
INSERT INTO `creature_template_model` (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild) VALUES
  (@EMBER, 0, 900343, 0.8, 1, 0);  -- 2x (user): ~5 yd

-- Server-side size for the new display (required for every custom display). Scaled by the
-- display scale: 0.8 -> bounding 1.2 / reach 2.4.
DELETE FROM `creature_model_info` WHERE DisplayID = 900343;
INSERT INTO `creature_model_info` (DisplayID, BoundingRadius, CombatReach, Gender, DisplayID_Other_Gender, VerifiedBuild) VALUES
  (900343, 1.5, 3.0, 2, 0, 0);

DELETE FROM `creature` WHERE guid BETWEEN 3110930 AND 3110961 OR guid BETWEEN 3110963 AND 3111004;
INSERT INTO `creature` (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, MovementType, Comment) VALUES
  (3110930, @EMBER, 1, 1, 50176, 941.0, -10507.0, 159.07, 3.637, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110931, @EMBER, 1, 1, 50176, 959.0, -10537.0, 178.05, 2.615, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110932, @EMBER, 1, 1, 50176, 959.0, -10486.0, 168.83, 4.082, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110933, @EMBER, 1, 1, 50176, 977.0, -10564.0, 190.23, 3.438, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110934, @EMBER, 1, 1, 50176, 995.0, -10585.0, 207.93, 5.385, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110935, @EMBER, 1, 1, 50176, 1031.0, -10576.0, 218.45, 3.333, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110936, @EMBER, 1, 1, 50176, 1040.0, -10603.0, 231.37, 2.001, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110937, @EMBER, 1, 1, 50176, 1052.0, -10633.0, 248.92, 2.557, 180, 6, 1, '[I-377] Raging Ember - lava line 1'),
  (3110938, @EMBER, 1, 1, 50176, 653.0, -10489.0, 1.15, 1.528, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110939, @EMBER, 1, 1, 50176, 656.0, -10516.0, 14.48, 5.205, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110940, @EMBER, 1, 1, 50176, 677.0, -10534.0, 26.88, 5.161, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110941, @EMBER, 1, 1, 50176, 695.0, -10510.0, 18.83, 2.202, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110942, @EMBER, 1, 1, 50176, 707.0, -10567.0, 49.92, 2.202, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110943, @EMBER, 1, 1, 50176, 710.0, -10537.0, 34.56, 0.785, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110944, @EMBER, 1, 1, 50176, 743.0, -10567.0, 51.45, 4.507, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110945, @EMBER, 1, 1, 50176, 755.0, -10612.0, 85.12, 0.219, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110946, @EMBER, 1, 1, 50176, 770.0, -10588.0, 84.1, 3.633, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110947, @EMBER, 1, 1, 50176, 782.0, -10657.0, 113.84, 3.213, 180, 6, 1, '[I-377] Raging Ember - lava line 2'),
  (3110948, @EMBER, 1, 1, 50176, 680.0, -10477.0, 1.34, 4.475, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110949, @EMBER, 1, 1, 50176, 698.0, -10447.0, 0.89, 2.663, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110950, @EMBER, 1, 1, 50176, 713.0, -10423.0, 0.66, 3.794, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110951, @EMBER, 1, 1, 50176, 719.0, -10465.0, 2.85, 3.072, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110952, @EMBER, 1, 1, 50176, 737.0, -10513.0, 32.72, 2.56, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110953, @EMBER, 1, 1, 50176, 737.0, -10486.0, 30.17, 1.673, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110954, @EMBER, 1, 1, 50176, 740.0, -10540.0, 38.52, 5.753, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110955, @EMBER, 1, 1, 50176, 740.0, -10435.0, 1.39, 2.415, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110956, @EMBER, 1, 1, 50176, 764.0, -10486.0, 35.49, 4.152, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110957, @EMBER, 1, 1, 50176, 764.0, -10456.0, 24.68, 5.144, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110958, @EMBER, 1, 1, 50176, 770.0, -10540.0, 47.28, 4.714, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110959, @EMBER, 1, 1, 50176, 773.0, -10513.0, 41.98, 3.301, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110960, @EMBER, 1, 1, 50176, 791.0, -10570.0, 86.81, 0.715, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110961, @EMBER, 1, 1, 50176, 791.0, -10480.0, 42.48, 2.965, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110963, @EMBER, 1, 1, 50176, 809.0, -10594.0, 100.92, 5.46, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110964, @EMBER, 1, 1, 50176, 809.0, -10549.0, 84.94, 3.737, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110965, @EMBER, 1, 1, 50176, 812.0, -10501.0, 55.98, 1.539, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110966, @EMBER, 1, 1, 50176, 830.0, -10570.0, 98.93, 5.605, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110967, @EMBER, 1, 1, 50176, 836.0, -10606.0, 112.17, 1.971, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110968, @EMBER, 1, 1, 50176, 836.0, -10543.0, 89.43, 1.024, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110969, @EMBER, 1, 1, 50176, 860.0, -10576.0, 113.48, 5.38, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110970, @EMBER, 1, 1, 50176, 872.0, -10603.0, 131.81, 1.56, 180, 6, 1, '[I-377] Raging Ember - middle corridor (widened)'),
  (3110971, @EMBER, 1, 1, 50176, 350.0, -10504.0, 14.05, 0.455, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110972, @EMBER, 1, 1, 50176, 353.0, -10540.0, 16.79, 0.208, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110973, @EMBER, 1, 1, 50176, 359.0, -10567.0, 30.88, 4.967, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110974, @EMBER, 1, 1, 50176, 365.0, -10594.0, 43.54, 4.852, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110975, @EMBER, 1, 1, 50176, 368.0, -10621.0, 59.49, 2.643, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110976, @EMBER, 1, 1, 50176, 377.0, -10657.0, 77.18, 5.199, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110977, @EMBER, 1, 1, 50176, 383.0, -10510.0, 11.82, 2.635, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110978, @EMBER, 1, 1, 50176, 386.0, -10699.0, 93.97, 5.202, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110979, @EMBER, 1, 1, 50176, 386.0, -10546.0, 18.53, 5.611, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110980, @EMBER, 1, 1, 50176, 395.0, -10726.0, 100.54, 6.261, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110981, @EMBER, 1, 1, 50176, 398.0, -10579.0, 30.56, 5.906, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110982, @EMBER, 1, 1, 50176, 401.0, -10774.0, 122.08, 2.704, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110983, @EMBER, 1, 1, 50176, 401.0, -10675.0, 85.04, 4.444, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110984, @EMBER, 1, 1, 50176, 401.0, -10612.0, 61.2, 1.18, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110985, @EMBER, 1, 1, 50176, 413.0, -10648.0, 75.89, 0.655, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110986, @EMBER, 1, 1, 50176, 419.0, -10741.0, 106.81, 4.449, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110987, @EMBER, 1, 1, 50176, 422.0, -10705.0, 93.97, 2.881, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110988, @EMBER, 1, 1, 50176, 425.0, -10807.0, 162.27, 1.001, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110989, @EMBER, 1, 1, 50176, 434.0, -10780.0, 153.78, 3.046, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110990, @EMBER, 1, 1, 50176, 440.0, -10870.0, 183.82, 1.322, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110991, @EMBER, 1, 1, 50176, 446.0, -10831.0, 176.68, 5.558, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110992, @EMBER, 1, 1, 50176, 461.0, -10897.0, 191.14, 0.48, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110993, @EMBER, 1, 1, 50176, 467.0, -10855.0, 187.31, 2.079, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110994, @EMBER, 1, 1, 50176, 482.0, -10927.0, 202.47, 4.403, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110995, @EMBER, 1, 1, 50176, 488.0, -10900.0, 196.34, 4.262, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110996, @EMBER, 1, 1, 50176, 506.0, -10948.0, 216.74, 3.151, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110997, @EMBER, 1, 1, 50176, 527.0, -10972.0, 224.99, 1.527, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110998, @EMBER, 1, 1, 50176, 527.0, -10930.0, 215.2, 2.671, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3110999, @EMBER, 1, 1, 50176, 548.0, -10993.0, 241.36, 2.354, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3111000, @EMBER, 1, 1, 50176, 554.0, -10966.0, 232.12, 5.581, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3111001, @EMBER, 1, 1, 50176, 569.0, -11011.0, 252.02, 1.655, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3111002, @EMBER, 1, 1, 50176, 575.0, -10984.0, 249.85, 6.117, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3111003, @EMBER, 1, 1, 50176, 596.0, -11002.0, 262.97, 4.59, 180, 6, 1, '[I-377] Raging Ember - lava line 3'),
  (3111004, @EMBER, 1, 1, 50176, 605.0, -11032.0, 280.33, 6.084, 180, 6, 1, '[I-377] Raging Ember - lava line 3');

-- Hub = the Sky Falls camp Maxx (11002145, phase 32768) - the chain is done before
-- the Gallywix Labor Mine (user). A lumber-yard Maxx (3110962) was tried and removed
-- (too far); this DELETE stays as its tombstone. In 16384+ the only Maxx is the
-- captive in the mine pit (11002148, phase 50176), who still takes the turn-in.
DELETE FROM `creature` WHERE guid = 3110962;

-- Lost Isles Maxx Avalanche has no QUESTGIVER flag (49: gossip + trainer + class
-- trainer), same trap as Evol in I-375. One UPDATE for this stock(-ported) row.
UPDATE `creature_template` SET npcflag = 51 WHERE entry = @MAXX;

-- ---------------------------------------------------------------------------
-- Quests (fields follow stock 1524-1527)
-- ---------------------------------------------------------------------------
DELETE FROM `quest_template` WHERE ID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_template` SET
  ID = @Q_CALL,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -82,
  RewardNextQuest = @Q_EMBERS,
  RewardXPDifficulty = 2,
  AllowableRaces = @GoblinMask,
  LogTitle = 'Call of Fire',
  LogDescription = 'Speak with the Spirit of Fire on the volcano slope above Lost Peak.',
  QuestDescription = 'Remember that rumble back in Kezan, $N? Turns out that was the warm-up act. Since the Trade Prince started blasting his way into this island, the whole mountain''s been coughing up lava, and something up there is good and angry about it.$B$BThe earth already took you seriously. Now it''s fire''s turn. Head up the volcano slope above Lost Peak and find the spirit that''s been stoking all this. Try not to get set on fire. Healing costs extra.',
  QuestCompletionLog = 'Speak with the Spirit of Fire.';

INSERT INTO `quest_template` SET
  ID = @Q_EMBERS,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -82,
  RewardNextQuest = @Q_TORCH,
  RewardXPDifficulty = 4,
  AllowableRaces = @GoblinMask,
  RequiredNpcOrGo1 = @EMBER,
  RequiredNpcOrGoCount1 = 6,
  LogTitle = 'Tempers Flare',
  LogDescription = 'Destroy 6 Raging Embers along the lava flows of the volcano, then return to the Spirit of Fire.',
  QuestDescription = 'Your kind struck the mountain, little shaman, and the mountain struck back. Its blood runs down the slopes now, and from it my anger has taken shape: embers with no mind but to burn.$B$BFire that only destroys is fire without a master. Go to the lava flows and put out the embers my rage has made. Show me that you can stand in the flame and still choose where it falls.',
  QuestCompletionLog = 'Return to the Spirit of Fire on the volcano slope.',
  ObjectiveText1 = 'Raging Ember destroyed';

INSERT INTO `quest_template` SET
  ID = @Q_TORCH,
  QuestType = 2,
  QuestLevel = 10,
  MinLevel = 10,
  QuestSortID = -82,
  RewardXPDifficulty = 5,
  RewardSpell = 2075,
  RewardDisplaySpell = 3599,  -- "You will learn: Searing Totem" (as stock 1527)
  RewardItem1 = 5176,
  RewardAmount1 = 1,
  StartItem = @TORCH,
  AllowableRaces = @GoblinMask,
  RequiredItemId1 = @TORCH,
  RequiredItemCount1 = 1,
  LogTitle = 'Call of Fire',
  LogDescription = 'Bring the Torch of the Eternal Flame to Maxx Avalanche.',
  QuestDescription = 'It is done. My anger cools, and the mountain will settle in its own time.$B$BTake this torch. A spark of me burns in it and will not go out. Carry it to the one who sent you, and let him bind it to a totem. When you call, I will answer - but fire serves those who respect it, $N. Forget that, and it will remind you.',
  QuestCompletionLog = 'Return to Maxx Avalanche.';

DELETE FROM `quest_template_addon` WHERE ID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_template_addon` (ID, AllowableClasses, PrevQuestID, ProvidedItemCount, SpecialFlags) VALUES
  (@Q_CALL,   64, 0,          0, 0),
  (@Q_EMBERS, 64, @Q_CALL,    0, 0),
  (@Q_TORCH,  64, @Q_EMBERS,  1, 0);

DELETE FROM `quest_request_items` WHERE ID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_request_items` (ID, EmoteOnComplete, EmoteOnIncomplete, CompletionText) VALUES
  (@Q_EMBERS, 1, 1, 'The embers still burn, little shaman. I feel every one.'),
  (@Q_TORCH,  1, 1, 'Something''s burning. Please tell me it''s the thing I sent you for.');

DELETE FROM `quest_offer_reward` WHERE ID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_offer_reward` (ID, Emote1, RewardText) VALUES
  (@Q_CALL,   1,   'Another one comes, smelling of gunpowder and greed. You dig and blast and drill, and then you wonder why the mountain bleeds. ... But you came here to listen. That is rare. Listen, then.'),
  (@Q_EMBERS, 2,   'Quieter. The flows slow already. You did not run from the heat, and you did not burn more than you had to. That is the first lesson fire teaches.'),
  (@Q_TORCH,  273, 'Now THAT is a torch. Eternal flame, huh? No fuel costs ever again - I could kiss that spirit. ... Okay, maybe not. Hold still while I bind it into a totem for you. Plant it near anything that annoys you and watch it work. Fire and earth both, $N - you''re turning into a real shaman. Profitable, too.');

DELETE FROM `creature_queststarter` WHERE quest BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `creature_queststarter` (id, quest) VALUES
  (@MAXX, @Q_CALL), (@SPIRIT, @Q_EMBERS), (@SPIRIT, @Q_TORCH);
DELETE FROM `creature_questender` WHERE quest BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `creature_questender` (id, quest) VALUES
  (@SPIRIT, @Q_CALL), (@SPIRIT, @Q_EMBERS), (@MAXX, @Q_TORCH);

-- ---------------------------------------------------------------------------
-- Quest POIs (Lost Isles WorldMapArea 544). -1 = turn-in; the embers are
-- ObjectiveIndex 0 (RequiredNpcOrGo1), one strip per lava line (24 yd half-width).
-- Maxx turn-in at the Sky Falls camp (11002145, phase 32768).
-- ---------------------------------------------------------------------------
DELETE FROM `quest_poi` WHERE QuestID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_poi` (QuestID, id, ObjectiveIndex, MapID, WorldMapAreaId, Floor, Priority, Flags, VerifiedBuild) VALUES
  (@Q_CALL,   0, -1, 1, 544, 0, 0, 1, 0),
  (@Q_EMBERS, 0, -1, 1, 544, 0, 0, 1, 0),
  (@Q_EMBERS, 1, 0, 1, 544, 0, 0, 1, 0),
  (@Q_EMBERS, 2, 0, 1, 544, 0, 0, 1, 0),
  (@Q_EMBERS, 3, 0, 1, 544, 0, 0, 1, 0),
  (@Q_EMBERS, 4, 0, 1, 544, 0, 0, 1, 0),
  (@Q_TORCH,  0, -1, 1, 544, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE QuestID BETWEEN @Q_CALL AND @Q_TORCH;
INSERT INTO `quest_poi_points` (QuestID, Idx1, Idx2, X, Y, VerifiedBuild) VALUES
  (@Q_CALL,   0, 0, 1026, -10526, 0),
  (@Q_EMBERS, 0, 0, 1026, -10526, 0),
  (@Q_EMBERS, 1, 0, 960, -10480, 0),
  (@Q_EMBERS, 1, 1, 1084, -10619, 0),
  (@Q_EMBERS, 1, 2, 1048, -10650, 0),
  (@Q_EMBERS, 1, 3, 925, -10512, 0),
  (@Q_EMBERS, 2, 0, 653, -10496, 0),
  (@Q_EMBERS, 2, 1, 860, -10721, 0),
  (@Q_EMBERS, 2, 2, 873, -10594, 0),
  (@Q_EMBERS, 2, 3, 715, -10409, 0),
  (@Q_EMBERS, 3, 0, 389, -10498, 0),
  (@Q_EMBERS, 3, 1, 456, -10848, 0),
  (@Q_EMBERS, 3, 2, 408, -10857, 0),
  (@Q_EMBERS, 3, 3, 342, -10507, 0),
  (@Q_EMBERS, 4, 0, 443, -10822, 0),
  (@Q_EMBERS, 4, 1, 677, -11079, 0),
  (@Q_EMBERS, 4, 2, 641, -11111, 0),
  (@Q_EMBERS, 4, 3, 407, -10854, 0),
  (@Q_TORCH,  0, 0, 1288, -10821, 0);

-- ---------------------------------------------------------------------------
-- Goblins off the stock Durotar fire chain (one UPDATE per stock ID), 946 -> 690.
-- ---------------------------------------------------------------------------
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 2983;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 2984;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1522;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1523;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1524;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1525;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1526;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1527;  -- Call of Fire
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@GoblinMask WHERE ID = 1464;  -- Fire Sapta
