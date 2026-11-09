-- npcsounds rows ported from Cataclysm 4.0.6a (build 13623) by tools/races/cata406_dbc_port.py,
-- for F-013 (see its readme). Regenerate them with it rather than editing them here.

-- 360 VO_GoblinCivF_Greeting, VO_GoblinCivF_Farewell, VO_GoblinCivF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 360;
INSERT INTO `npcsounds` SET
  `id` = 360,
  `sound_entry_1` = 18812,
  `sound_entry_2` = 18810,
  `sound_entry_3` = 18814,
  `sound_entry_4` = 0;

-- 361 VO_GoblinCivF_GreetingAggro, VO_GoblinCivF_FarewellAggro, VO_GoblinCivF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 361;
INSERT INTO `npcsounds` SET
  `id` = 361,
  `sound_entry_1` = 18813,
  `sound_entry_2` = 18811,
  `sound_entry_3` = 18814,
  `sound_entry_4` = 0;

-- 362 VO_GoblinCivM_Greeting, VO_GoblinCivM_Farewell, VO_GoblinCivM_Pissed
DELETE FROM `npcsounds` WHERE `id` = 362;
INSERT INTO `npcsounds` SET
  `id` = 362,
  `sound_entry_1` = 18817,
  `sound_entry_2` = 18815,
  `sound_entry_3` = 18819,
  `sound_entry_4` = 0;

-- 363 VO_GoblinCivM_GreetingAggro, VO_GoblinCivM_FarewellAggro, VO_GoblinCivM_Pissed
DELETE FROM `npcsounds` WHERE `id` = 363;
INSERT INTO `npcsounds` SET
  `id` = 363,
  `sound_entry_1` = 18818,
  `sound_entry_2` = 18816,
  `sound_entry_3` = 18819,
  `sound_entry_4` = 0;

-- 364 VO_GoblinGuardF_Greeting, VO_GoblinGuardF_Farewell, VO_GoblinGuardF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 364;
INSERT INTO `npcsounds` SET
  `id` = 364,
  `sound_entry_1` = 18822,
  `sound_entry_2` = 18820,
  `sound_entry_3` = 18824,
  `sound_entry_4` = 0;

-- 365 VO_GoblinGuardF_GreetingAggro, VO_GoblinGuardF_FarewellAggro, VO_GoblinGuardF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 365;
INSERT INTO `npcsounds` SET
  `id` = 365,
  `sound_entry_1` = 18823,
  `sound_entry_2` = 18821,
  `sound_entry_3` = 18824,
  `sound_entry_4` = 0;

-- 366 VO_GoblinGuardM_Greeting, VO_GoblinGuardM_Farewell, VO_GoblinGuardM_Pissed
DELETE FROM `npcsounds` WHERE `id` = 366;
INSERT INTO `npcsounds` SET
  `id` = 366,
  `sound_entry_1` = 18828,
  `sound_entry_2` = 18826,
  `sound_entry_3` = 18829,
  `sound_entry_4` = 0;

-- 368 VO_GoblinVenF_GreetingAggro, VO_GoblinVenF_FarewellAggro, VO_GoblinVenF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 368;
INSERT INTO `npcsounds` SET
  `id` = 368,
  `sound_entry_1` = 19077,
  `sound_entry_2` = 19075,
  `sound_entry_3` = 19078,
  `sound_entry_4` = 0;

-- 369 VO_GoblinVenM_Greeting, VO_GoblinVenM_Farewell, VO_GoblinVenM_Pissed
DELETE FROM `npcsounds` WHERE `id` = 369;
INSERT INTO `npcsounds` SET
  `id` = 369,
  `sound_entry_1` = 19081,
  `sound_entry_2` = 19079,
  `sound_entry_3` = 19083,
  `sound_entry_4` = 0;

-- 370 VO_GoblinVenM_GreetingAggro, VO_GoblinVenM_FarewellAggro, VO_GoblinVenM_Pissed
DELETE FROM `npcsounds` WHERE `id` = 370;
INSERT INTO `npcsounds` SET
  `id` = 370,
  `sound_entry_1` = 19082,
  `sound_entry_2` = 19080,
  `sound_entry_3` = 19083,
  `sound_entry_4` = 0;

-- 371 VO_GoblinVenF_Greeting, VO_GoblinVenF_Farewell, VO_GoblinVenF_Pissed
DELETE FROM `npcsounds` WHERE `id` = 371;
INSERT INTO `npcsounds` SET
  `id` = 371,
  `sound_entry_1` = 19076,
  `sound_entry_2` = 19074,
  `sound_entry_3` = 19078,
  `sound_entry_4` = 0;

-- 447 VO_QE_DH_AGGRA_GREETING, VO_QE_DH_AGGRA_FAREWELL
DELETE FROM `npcsounds` WHERE `id` = 447;
INSERT INTO `npcsounds` SET
  `id` = 447,
  `sound_entry_1` = 22617,
  `sound_entry_2` = 22618,
  `sound_entry_3` = 0,
  `sound_entry_4` = 0;
