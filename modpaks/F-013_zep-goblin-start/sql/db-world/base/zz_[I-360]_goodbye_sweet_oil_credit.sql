-- =============================================================================
-- I-360  "Good-bye, Sweet Oil" (25207) — pressing the Big Red Button gives no credit
--
-- Objective: creature 39393 "Good-bye, Sweet Oil Kill Credit" x1
--            (`RequiredNpcOrGo1` = 39393 — a CREATURE credit, not a GO credit,
--             so `KillCreditGO` from the goober branch can never satisfy it).
--
-- Cause: the credit lived in a DBC spell we do not have.
--   * tdb434 (retail sniff): GO 205061 is type 22 SPELLCASTER casting spell 73892.
--   * Neltharion:            GO 205061 is type 10 GOOBER casting spell 151157 —
--                            a fabricated 151xxx id. Its head exists in
--                            neltharion.spell_dbc but the dump ships no spell
--                            effect table at all, so the effects are unknowable.
--   * Our DBC has NEITHER 73892 nor 151157.
--   * Neither donor world DB has any smart_scripts, spell_script_names or event
--     script for the button or for 73892 — on retail the kill credit was an
--     effect inside the spell itself.
--
-- So the credit is absent from every source we hold. Same class as
-- reference_volcanoth_kill_credit_absent_in_both_donors: not a dropped port.
--
-- Fix: award it with SmartAI instead of fabricating a spell. This is the core's
-- own idiom — SMARTAI_TEMPLATE_HOSTAGE builds exactly
-- SMART_EVENT_GO_STATE_CHANGED(param1=2) -> SMART_ACTION_CALL_KILLEDMONSTER
-- (SmartScript.cpp:3489-3498).
--
-- Chain: GameObject::Use GOOBER branch gates on goober.questId 25207 being
-- INCOMPLETE, then (because goober.autoCloseTime/Data3 = 20000 is non-zero) runs
-- SetLootState(GO_ACTIVATED, user) -> SmartGameObjectAI::OnStateChanged(2, user)
-- -> SAI event 70. GO_ACTIVATED == 2 (GameObject.h:108). `user` becomes
-- ACTION_INVOKER, i.e. the player who pressed it.
--
-- Requires the platform prop un-stacking in zz_[I-359]_ktc_platform_props.sql —
-- without it the inert GENERIC twin 205065 shadows this button and it cannot be
-- clicked at all.
-- =============================================================================

-- SAI has to be enabled on the GO (the F-011 import leaves AIName empty), and the
-- dangling goober.spell must be cleared: GameObject::Use reaches
-- `sSpellMgr->GetSpellInfo(151157)`, finds nothing and logs
-- "WORLD: unknown spell id 151157 at use action" (GameObject.cpp:2093) on EVERY
-- press. The SAI above has already fired by then — SetLootState(GO_ACTIVATED)
-- happens before the cast — so credit still works, but the log fills up. With
-- Data10 = 0 the `if (!spellId) return;` at GameObject.cpp:1505 exits cleanly.
UPDATE `gameobject_template` SET
  `AIName` = 'SmartGameObjectAI',
  `Data10` = 0
WHERE `entry` = 205061;

DELETE FROM `smart_scripts` WHERE `source_type` = 1 AND `entryorguid` = 205061;
INSERT INTO `smart_scripts` SET
  `entryorguid` = 205061,
  `source_type` = 1,
  `id` = 0,
  `link` = 0,
  `event_type` = 70,
  `event_phase_mask` = 0,
  `event_chance` = 100,
  `event_flags` = 0,
  `event_param1` = 2,
  `event_param2` = 0,
  `event_param3` = 0,
  `event_param4` = 0,
  `event_param5` = 0,
  `event_param6` = 0,
  `action_type` = 33,
  `action_param1` = 39393,
  `action_param2` = 0,
  `action_param3` = 0,
  `action_param4` = 0,
  `action_param5` = 0,
  `action_param6` = 0,
  `target_type` = 7,
  `target_param1` = 0,
  `target_param2` = 0,
  `target_param3` = 0,
  `target_param4` = 0,
  `target_x` = 0,
  `target_y` = 0,
  `target_z` = 0,
  `target_o` = 0,
  `comment` = 'Big Red Button - on activate, credit Good-bye Sweet Oil (39393) to the presser';
