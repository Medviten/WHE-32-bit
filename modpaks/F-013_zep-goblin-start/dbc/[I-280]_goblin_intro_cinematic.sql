-- [I-280] Goblin character-creation intro cinematic
--
-- Race 9 (Goblin) inherited the stock 3.3.5a ChrRaces value cinematic_sequence_id = 141,
-- which is the TAUREN flythrough (CinematicCamera 202, Cameras\FlyByTauren.mdx, origin at
-- Thunder Bluff). mod-worgoblin's [BASE,F-030]_chrraces.sql carries that value forward, so
-- every new goblin got the Thunder Bluff intro.
--
-- Cata 4.3.4 authentic chain, recovered from whitemane-15595 + wago-cata-classic:
--   ChrRaces 9 -> CinematicSequences 172 -> CinematicCamera 288
--   camera model  Cameras\FlyByGoblin.m2 (v272 -> v264 downport, shipped in PATCH-Z)
--   narration     SoundEntries 23106 GoblinFlybyNarration -> sound\cinematicvoices\goblinnarration.mp3
--
-- Camera origin is translated from Cata map 648 to OA Kalimdor map 1 with the F-011 offset
-- (DX -533.3333, DY -12800.0):
--   648: (-8416.849609375, 1364.2099609375, 102.20800018311)
--     1: (-8950.1829093750, -11435.7900390625, 102.20800018311)
-- which lands ~9 yd from the goblin start position (-8956.5, -11429.5, 104.82).

-- Narration. Mirrors the stock 3.3.5a race-narration convention (volume/min/cutoff from
-- 4122 TaurenFlyByNarration) rather than Cata's rebalanced 0.4 / 7 / 30.
DELETE FROM `soundentries` WHERE `id` = 23106;
INSERT INTO `soundentries` SET
  `id` = 23106,
  `sound_type` = 31,
  `name` = 'GoblinFlyByNarration',
  `file_1` = 'GoblinNarration.mp3',
  `frequency_1` = 1,
  `base_dir` = 'Sound\\CinematicVoices',
  `volume` = 0.6899999976158142,
  `flags` = 0,
  `min_distance` = 8.0,
  `distance_cutoff` = 45.0,
  `eax_def` = 0,
  `advanced_id` = 0;

DELETE FROM `cinematiccamera` WHERE `id` = 288;
INSERT INTO `cinematiccamera` SET
  `id` = 288,
  `model` = 'Cameras\\FlyByGoblin.mdx',
  `sound_id` = 23106,
  `origin_x` = -8950.1829093750,
  `origin_y` = -11435.7900390625,
  `origin_z` = 102.2080001831,
  `origin_facing` = 4.6949400902;

DELETE FROM `cinematicsequences` WHERE `id` = 172;
INSERT INTO `cinematicsequences` SET
  `id` = 172,
  `sound_id` = 0,
  `camera_1` = 288,
  `camera_2` = 0,
  `camera_3` = 0,
  `camera_4` = 0,
  `camera_5` = 0,
  `camera_6` = 0,
  `camera_7` = 0,
  `camera_8` = 0;

-- Stock row: single consolidated UPDATE. Overrides mod-worgoblin [BASE,F-030]_chrraces.sql
-- (zpak priority 40) from zep-goblin-start (priority 370), which applies later.
UPDATE `chrraces` SET `cinematic_sequence_id` = 172 WHERE `id` = @Goblin;
