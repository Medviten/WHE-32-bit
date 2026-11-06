-- I-247 — Kezan Training Dummy (48304): no damage taken, combat drops 5s after the last hit.
--
-- The donor ran this dummy on npc_training_dummy (C++). I-247 round 1 dropped the
-- ScriptName so the SmartAI quest-credit rows would run, and ported only rooting +
-- pacify as data — which left the dummy killable and holding the player in combat
-- until it died. Stock AC dummies (Orgrimmar/Stormwind 31144, 32666, ...) get both
-- behaviours from npc_training_dummy (npcs_special.cpp): DamageTaken zeroes damage,
-- UpdateAI ends each attacker's combat ref 5s after their last hit.
--
-- npc_zep_training_dummy (Zeppelin-Core Custom/zeppelin_goblin_creatures.cpp) is that
-- script on top of SmartAI. A ScriptName takes priority over AIName in AI selection
-- (CreatureAISelector.cpp), and as a SmartAI subclass it still loads the
-- smart_scripts rows, so AIName stays 'SmartAI'. Inert until that core build is deployed.
-- Mirrored in goblin_gen creatures.py SCRIPT_NAME_PORTS so a regen keeps it.
--
-- HealthModifier 0.000187 (~1 HP) copies the stock dummies (31144, 32666, 32541, ...).
-- The script zeroes damage server-side, but the 3.3.5 client subtracts spell/DoT
-- damage locally from the damage log, and an unchanged server health is never resent,
-- so at 170 HP the target frame drifted down on spells (nameplate stayed full,
-- server .npc info 170/170). A 1 HP unit can't display lower without dying.
-- Mirrored in goblin_gen immunities_movement.py (dummy rule).
-- AUTO-owned row -> one consolidated UPDATE.
UPDATE `creature_template` SET
  `ScriptName` = 'npc_zep_training_dummy',
  `HealthModifier` = 0.000187
WHERE entry = 48304;
