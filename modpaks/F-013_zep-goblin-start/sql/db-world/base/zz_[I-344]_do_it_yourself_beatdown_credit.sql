-- I-344 "Do it Yourself" (14070) — beat-down credit for the four Kezan foremen.
--
-- Symptom: a player beats Jack the Hammer (34877) down, he gives up and
-- despawns, and objective 3 never ticks. Bruno/Frankie/Sudsy usually credit.
--
-- Root cause is an ordering race in the ported surrender chain, not a data
-- defect: every column of 34877 matches its three siblings and the Neltharion
-- donor. Each foreman gets SMART_ACTION_SET_INVINCIBILITY_HP_LEVEL(0, 1%) on
-- aggro, so he can never be killed and pins at 1 HP; SMART_EVENT_HEALTH_PCT
-- (0..1) then calls his timed actionlist, which ran in donor order:
--
--   0  SET_FACTION 35        <- creature becomes friendly
--   1  CAST 88467 Sanctuary  <- SPELL_EFFECT_SANCTUARY, drops combat outright
--   2  (+1s) TALK 1
--   3  CALL_KILLEDMONSTER <entry>, target PLAYER_DISTANCE 35
--   4  FORCE_DESPAWN 4000
--
-- Steps 0-1 end combat, so the creature evades and runs MoveTargetedHome().
-- Creature::Update (Creature.cpp:880) skips UpdateAI() for the whole time
-- IsInEvadeMode() is true, which freezes SmartScript::OnUpdate and therefore
-- the rest of the actionlist. The credit at step 3 is a 35-yard sweep around
-- the CREATURE, evaluated after that walk — so whether the player is paid
-- depends on how far the foreman was pulled from his spawn and on how far the
-- player is standing when the list thaws. Miss the window and step 4 despawns
-- him with no credit and no way to retry until he respawns.
--
-- Fix: hand out the credit FIRST, while the player is still engaged and in
-- range, then drop combat. Same actions, same 35-yard retail sweep, no race.
--
-- Live evidence (char 102, mid-session): quest 14070 INCOMPLETE with
-- mobcount 1/1/0/1 while creature_respawn already held Jack's spawn guid
-- 12000158 — he had completed his despawn without paying the objective.
--
-- Second defect (same content, reported later): "one player beats them and they
-- do not appear for the next player." FORCE_DESPAWN was emitted with
-- forceRespawnTimer = 0, so the foreman fell back to the spawn row's respawn
-- delay. The F-011 generator stamps a blanket spawntimesecs = 300 on every Kezan
-- creature (1142 of 1143 rows), and Creature::setDeathState(JustDied) adds the
-- rank-0 corpse decay on top, so each foreman was gone for 300 + 60 = 360 s.
-- Measured on the live server: guid 12000125 despawned ~1787964286, its
-- creature_respawn row read 1787964646; guid 12000159 despawned ~1787964319,
-- row read 1787964679. Exactly 360 s both times.
--
-- There is one spawn of each foreman and no per-player phasing, so a second
-- player arriving behind the first waits six minutes per objective. Fix:
-- FORCE_DESPAWN action_param2 = 30 (forceRespawnTimer, seconds). SmartScript
-- passes it to Creature::DespawnOrUnsummon, which overrides m_respawnDelay
-- before setDeathState so the corpse delay is not added. The spawn row's 300 s
-- is untouched — this only shortens the beat-down path, and it lives here
-- rather than in the AUTO gen creature file.

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid IN (3483500, 3487600, 3487700, 3487800);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3483500, 9, 0, 0, 0, 0, 100, 0,    0,    0, 0, 0, 33, 34835, 0, 0, 0, 0, 0, 18, 35, 0, 0, 0, 0, 0, 0, 0, 'Bruno Flameretardant - Beaten Down - Quest Credit 34835 (I-344)'),
  (3483500, 9, 1, 0, 0, 0, 100, 0,    0,    0, 0, 0,  2,    35, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Bruno Flameretardant - Beaten Down - Set Faction Friendly (I-344)'),
  (3483500, 9, 2, 0, 0, 0, 100, 0,    0,    0, 0, 0, 11, 88467, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Bruno Flameretardant - Beaten Down - Cast Sanctuary (I-344)'),
  (3483500, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0,  1,     1, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Bruno Flameretardant - Beaten Down - Say Line 1 (I-344)'),
  (3483500, 9, 4, 0, 0, 0, 100, 0,    0,    0, 0, 0, 41,  4000, 30, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Bruno Flameretardant - Beaten Down - Despawn + 30s Respawn (I-344)'),
  (3487600, 9, 0, 0, 0, 0, 100, 0,    0,    0, 0, 0, 33, 34876, 0, 0, 0, 0, 0, 18, 35, 0, 0, 0, 0, 0, 0, 0, 'Frankie Gearslipper - Beaten Down - Quest Credit 34876 (I-344)'),
  (3487600, 9, 1, 0, 0, 0, 100, 0,    0,    0, 0, 0,  2,    35, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Frankie Gearslipper - Beaten Down - Set Faction Friendly (I-344)'),
  (3487600, 9, 2, 0, 0, 0, 100, 0,    0,    0, 0, 0, 11, 88467, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Frankie Gearslipper - Beaten Down - Cast Sanctuary (I-344)'),
  (3487600, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0,  1,     1, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Frankie Gearslipper - Beaten Down - Say Line 1 (I-344)'),
  (3487600, 9, 4, 0, 0, 0, 100, 0,    0,    0, 0, 0, 41,  4000, 30, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Frankie Gearslipper - Beaten Down - Despawn + 30s Respawn (I-344)'),
  (3487700, 9, 0, 0, 0, 0, 100, 0,    0,    0, 0, 0, 33, 34877, 0, 0, 0, 0, 0, 18, 35, 0, 0, 0, 0, 0, 0, 0, 'Jack the Hammer - Beaten Down - Quest Credit 34877 (I-344)'),
  (3487700, 9, 1, 0, 0, 0, 100, 0,    0,    0, 0, 0,  2,    35, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Jack the Hammer - Beaten Down - Set Faction Friendly (I-344)'),
  (3487700, 9, 2, 0, 0, 0, 100, 0,    0,    0, 0, 0, 11, 88467, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Jack the Hammer - Beaten Down - Cast Sanctuary (I-344)'),
  (3487700, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0,  1,     1, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Jack the Hammer - Beaten Down - Emote Line 1 (I-344)'),
  (3487700, 9, 4, 0, 0, 0, 100, 0,    0,    0, 0, 0, 41,  4000, 30, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Jack the Hammer - Beaten Down - Despawn + 30s Respawn (I-344)'),
  (3487800, 9, 0, 0, 0, 0, 100, 0,    0,    0, 0, 0, 33, 34878, 0, 0, 0, 0, 0, 18, 35, 0, 0, 0, 0, 0, 0, 0, 'Sudsy Magee - Beaten Down - Quest Credit 34878 (I-344)'),
  (3487800, 9, 1, 0, 0, 0, 100, 0,    0,    0, 0, 0,  2,    35, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Sudsy Magee - Beaten Down - Set Faction Friendly (I-344)'),
  (3487800, 9, 2, 0, 0, 0, 100, 0,    0,    0, 0, 0, 11, 88467, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Sudsy Magee - Beaten Down - Cast Sanctuary (I-344)'),
  (3487800, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0,  1,     1, 0, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Sudsy Magee - Beaten Down - Say Line 1 (I-344)'),
  (3487800, 9, 4, 0, 0, 0, 100, 0,    0,    0, 0, 0, 41,  4000, 30, 0, 0, 0, 0,  1,  0, 0, 0, 0, 0, 0, 0, 0, 'Sudsy Magee - Beaten Down - Despawn + 30s Respawn (I-344)');
