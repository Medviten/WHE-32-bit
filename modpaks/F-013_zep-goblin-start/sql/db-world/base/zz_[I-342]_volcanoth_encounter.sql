-- I-342: Volcanoth (38855) / quest 24958 "Volcanoth!" -- 1 HP spawn + no kill credit
--
-- Both rows below are defined by zz_[AUTO,F-011]_* files, so this file only UPDATEs
-- the columns that are wrong (loads after: 'A' < 'I' within the zpak).
--
-- 1. 1 HP boss
--    Neltharion ships 38855 with RegenHealth = 0, so AC's Creature::LoadFromDB takes
--    the spawn's `creature.curhealth` instead of GetMaxHealth(). The F-011 spawn
--    emitter hardcoded curhealth = 1 for every row, which is invisible on the ~99% of
--    entries that regen but literally spawns this one at 1 HP. Fixed at source in
--    cli/commands/goblin_gen/creatures.py (carry the donor value); this file sets the
--    live rows so the fix does not wait on a `zep goblin gen` run.
--
--    4800 = creature_classlevelstats(level 10, class 1).basehp0 (240) * HealthModifier
--    (20). LoadFromDB multiplies curhealth by the same _GetHealthMod(rank) that
--    SelectLevel applies to max health, so this lands on exactly 100% whatever
--    Rate.Creature.Elite.Elite.HP is configured to.
--
--    guid 11002841 is the phase-32768 (post-24958) posed body, not a live mob --
--    unit_flags carry DISABLE_MOVE|NOT_ATTACKABLE|IMMUNE_TO_PC|IMMUNE_TO_NPC|PACIFIED|
--    STUNNED|NOT_SELECTABLE. Neltharion stages it at curhealth 0; restore that.

UPDATE `creature` SET curhealth = 4800 WHERE guid = 11002842;   -- phase 8192, the killable one
UPDATE `creature` SET curhealth = 0    WHERE guid = 11002841;   -- phase 32768, slain pose

-- 2. No kill credit
--    Quest 24958 objective is RequiredNpcOrGo1 = 38868 "Volcanoth! Kill Credit", a
--    non-spawned credit stub. Nothing in either donor wires 38855 -> 38868: Neltharion
--    gives 38855 AIName 'SmartAI' with zero smart_scripts rows, ScriptName blank,
--    KillCredit1/2 = 0, and TDB 4.3.4 has the same hole. The Bootzooka (item 84324 ->
--    spell 73066) is a plain SPELL_EFFECT_SCHOOL_DAMAGE with no credit effect, so
--    killing Volcanoth credited nothing and the quest could not complete.
--
--    Player::KilledMonster walks creature_template.KillCredit[] after the entry's own
--    credit, so KillCredit1 is the data-driven fix and keeps AC's normal group/range
--    rules. No SAI needed.

UPDATE `creature_template` SET KillCredit1 = 38868 WHERE entry = 38855;

-- Skinning is NOT set here: skinloot 38845 for 38855 is owned by
-- zz_[I-271]_f174_skinning_compliance.sql (F-174 compliance sweep) and already live.
