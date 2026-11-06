-- I-257 "Robbing Hoods" (14121) — driving the Hot Rod over Hired Looters now
-- robs them. Spell chain in dbc/[I-257]_spell.sql: 66392 "Hot Rod" eff2
-- (driver-held aura 23, 250ms periodic, target caster) -> 66301 (12yd
-- front-cone knockback, looters only) -> looter SpellHit SAI -> 67041
-- (Create Stolen Loot 84466 on the driver).
--
-- The kill-and-loot path (84466 at 88% in creature_loot_template) already
-- works and stays; this adds the missing retail run-over path, so the quest
-- keeps its item objective (12x 84466).
--
-- The trigger rides eff2 of the CONTROL spell because the Hot Rod is a
-- SUMMON_CATEGORY_VEHICLE summon: EffectSummon auto-boards the summoner with
-- a direct ride cast (SpellEffects.cpp:2571) and HandleSpellClick never runs
-- — a spellclick-row carrier never fires on this vehicle. 66392 is cast BY
-- the boarding player on both the auto-board and spellclick paths, so eff2
-- (target 1 = caster) always lands on the driver. Knockback is therefore
-- always-on while driving (retail-accurate bulldozing); the ITEM is what is
-- quest-gated, via the looter's type-22 condition below.

-- ---- retired first attempt: spellclick-row carrier (never fires; see above) ----
DELETE FROM `npc_spellclick_spells` WHERE npc_entry = 34840 AND spell_id = 66302;
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 18 AND SourceGroup = 34840 AND SourceEntry = 66302;

-- ---- exiting: strip the trigger, send the homies home, dismiss the car ----
-- 34840 ships with empty AIName (F-011 "AIName dropped" pattern) and so runs
-- VehicleAI, whose only job here is despawn-on-exit. Converting to SmartAI for
-- the aura cleanup means replicating that dismissal (row 2). PASSENGER_REMOVED
-- is the proven-reliable possessed-vehicle event (I-251). 34840 template is
-- AUTO-owned -> one consolidated UPDATE.
--
-- I-242: the event cooldown is 0/0, NOT 1000/1000. RecalcTimer only leaves the
-- event active when the timer is zero (SmartScript.cpp:5036-5041), so a 1s
-- cooldown swallowed every removal after the first -- and Vehicle::Uninstall
-- pulls the driver and all three homies inside one tick. Row 1 must see each.
--
-- I-242 also puts event_flags 512 (SMART_EVENT_FLAG_WHILE_CHARMED) on row 0 and
-- on the ping rows. A player-driven vehicle is a CHARMED creature and
-- SmartScript::ProcessEvent (SmartScript.cpp:4187) drops every event without
-- that flag, silently. Round 5's "the SAI spellhit hop is silent on a possessed
-- vehicle" was this gate, not the hop.
--
-- Row 1 (I-242) clears the exiting rider. Unit::_ExitVehicle knocks a creature
-- passenger clear of the car and then simply leaves it there: nothing in the
-- core walks it back, and an idle out-of-combat creature never evades. The
-- riders are TempSummons so this is UnSummon; the respawn seconds only matter
-- if a DB spawn ever rides, which is exactly the round-6 defect this replaced.
-- Safe from inside the RemovePassenger hook: the core floors the despawn delay
-- at one world tick (SmartScript.cpp:1364-1372). Player invokers are ignored,
-- FORCE_DESPAWN only touches Creature/GameObject targets, so the driver's own
-- exit falls through to row 2 untouched.
--
-- Rows 3-5 (I-242) are the pickup pings. The roadside homie cannot reach the
-- driver on its own -- SMART_TARGET_ACTION_INVOKER resolves to this vehicle and
-- only CALL_KILLEDMONSTER unwraps the charmer -- so it casts the homie's marker
-- spell at the car and the car re-casts it on SMART_TARGET_OWNER_OR_SUMMONER,
-- which is GetCharmerOrOwnerGUID() = the driver, exactly and only. That marker
-- then gates the homie's spell_area detect row (zz_[I-242]_hotrod_homies_flavor).
--
-- Rows 6-8 take the detect aura off the driver in the same breath, which is what
-- the donor does (player->RemoveAura(49416)). The negative aura_spell gate alone
-- is NOT enough: it stops the autocast and makes the row un-fitting, but the aura
-- the player is ALREADY holding is only reaped by Player::UpdateArea/ZoneDependentAuras,
-- which run on area change, quest-status change and login -- so without this the
-- roadside homie stayed visible until the driver crossed into the next Kezan
-- subzone. Landing an aura does not re-evaluate spell_area by itself.
UPDATE `creature_template` SET AIName = 'SmartAI' WHERE entry = 34840;

DELETE FROM `smart_scripts` WHERE entryorguid = 34840 AND source_type = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (34840, 0, 0, 1, 28, 0, 100, 512, 0, 0, 0, 0, 28, 66392, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-257 Hot Rod - On Passenger Removed - Strip run-over trigger (66392 eff2) from exiting passenger'),
  (34840, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 5, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - Linked - Dismiss the exiting rider (TempSummon -> UnSummon); no-op on the player driver'),
  (34840, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'I-257 Hot Rod - Linked - Dismiss (replicates VehicleAI despawn-on-exit)'),
  (34840, 0, 3, 6, 8, 0, 100, 512, 900901, 0, 0, 0, 11, 900901, 2, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - On Izzy pickup ping - Put the Izzy marker on the driver (charmer)'),
  (34840, 0, 4, 7, 8, 0, 100, 512, 900902, 0, 0, 0, 11, 900902, 2, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - On Gobber pickup ping - Put the Gobber marker on the driver (charmer)'),
  (34840, 0, 5, 8, 8, 0, 100, 512, 900903, 0, 0, 0, 11, 900903, 2, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - On Ace pickup ping - Put the Ace marker on the driver (charmer)'),
  (34840, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 49417, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - Linked - Take Izzy''s detect off the driver NOW (the marker only stops it coming back)'),
  (34840, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 60922, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - Linked - Take Gobber''s detect off the driver NOW (the marker only stops it coming back)'),
  (34840, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 49416, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Hot Rod - Linked - Take Ace''s detect off the driver NOW (the marker only stops it coming back)');

-- ---- the robbery: looter reacts to being run over ----
-- AUTO owns 35234 row 0 (Torch Toss); I-257 owns rows 10+. Invoker of the
-- spellhit is the driver (66301 is cast by the player-held aura), so target 7
-- lands CREATE_ITEM on them. Run-over is lethal (retail: they ragdoll and lie
-- dead): delayed KillSelf at 1500ms ~ landing, so the knockback arc plays out
-- before the corpse drops. KillSelf leaves no loot recipient -> the corpse is
-- unlootable and cannot double-grant the 88% quest drop on top of the auto
-- item. 300s respawn x85 spawns keeps the streets stocked. The 6s event
-- cooldown is a safety net for the (now rare) survive-and-rehit window.
-- The I-244 cascade re-applies this after every gen run.
-- Two independent rows on the same spellhit, gated differently:
--   * row 10 (ITEM, quest-gated via the type-22 condition below): Create
--     Stolen Loot at the driver, only while 14121 is incomplete.
--   * row 11 chain (STUN + DEATH, unconditional — retail cars are always
--     lethal, including after the quest): cast 66302 on self — a real
--     MOD_STUN aura, NOT a SET_UNIT_FLAG (the flag never calls SetStunned so
--     it neither stuns nor blocks Torch Toss; that was the bug). The stun's
--     SetStunned() does CastStop() + blocks new casts/melee for 2s, so no
--     mid-air Torch Toss and no landing melee, and the client shows stun
--     stars. Linked -> KillSelf at 1500ms ~ landing (stun 2s outlasts it).
-- Deliberately NOT react-passive at the template level — looters still
-- retaliate normally on the kill-and-loot path, like retail.
DELETE FROM `smart_scripts` WHERE entryorguid = 35234 AND source_type = 0 AND id IN (10, 11, 12, 13);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (35234, 0, 10, 0, 8, 0, 100, 0, 66301, 0, 6000, 6000, 11, 67041, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-257 Hired Looter - On Spellhit Hot Rod Knockback - Create Stolen Loot for driver (quest-gated)'),
  (35234, 0, 11, 12, 8, 0, 100, 0, 66301, 0, 6000, 6000, 11, 66302, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'I-257 Hired Looter - On Spellhit Hot Rod Knockback - Stun self (no mid-air Torch Toss)'),
  (35234, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'I-257 Hired Looter - Linked - Die on landing (1.5s)');

-- Item creation only while 14121 is INCOMPLETE in the invoker's log (stops
-- surplus 84466 piling up once 12/12 is reached mid-drive).
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 22 AND SourceGroup = 11 AND SourceEntry = 35234;
INSERT INTO `conditions` SET
  SourceTypeOrReferenceId = 22,
  SourceGroup = 11,
  SourceEntry = 35234,
  SourceId = 0,
  ElseGroup = 0,
  ConditionTypeOrReference = 9,
  ConditionTarget = 0,
  ConditionValue1 = 14121,
  ConditionValue2 = 0,
  ConditionValue3 = 0,
  NegativeCondition = 0,
  ErrorType = 0,
  ErrorTextId = 0,
  ScriptName = '',
  Comment = 'I-257 Stolen Loot only while Robbing Hoods incomplete';

-- ---- knockback scope: cone-entry gate (I-246 lane-marker pattern) ----
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND SourceEntry = 66301;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES
  (13, 1, 66301, 0, 0, 31, 0, 3, 35234, 0, 0, 0, 0, '', 'I-257 Hot Rod Knockback -> Hired Looters only');
