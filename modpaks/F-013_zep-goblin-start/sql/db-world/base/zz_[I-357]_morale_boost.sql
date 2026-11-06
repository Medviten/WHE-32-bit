-- I-357: Gallywix Labor Mine questline -- quest 25122 "Morale Boost".
--
-- Three defects, all from the F-011 import, all scoped to this one quest:
--
--   1. Kaja'Cola Zero-One (84332) is never consumed on use.
--   2. Only one of the three can gameobjects drops the usable can.
--   3. Ace / Izzy / Gobber are invisible in the cave.
--
-- All three rows below are owned by zz_[AUTO,F-011]_* files; this file sorts
-- after them and overrides the affected columns only.


-- ---------------------------------------------------------------------------
-- 1. Item 84332 is not consumed on use
-- ---------------------------------------------------------------------------
-- Same gap as I-270 (84474): goblin_gen/item_spells.py wires only spellid_N /
-- spelltrigger_N, leaving spellcharges_N / spellcooldown_N at the item_cols
-- defaults (0 / -1). spellcharges 0 = unlimited uses, so the stack never shrinks.
--
-- Cata source (Whitemane 4.3.4 Item-sparse.db2, item 52484):
--   SpellID 73583, Trigger 0, Charges -1, Cooldown 1500, Category 0, CatCD -1
-- Charges -1 = single use, consumed. Morale Boost needs 9 uses, and the quest
-- carries ItemDrop1 = 84332 / ItemDropQuantity1 = 20 to clean the stack up, which
-- only makes sense against a consumed item.

UPDATE `item_template` SET
  spellcharges_1 = -1,
  spellcooldown_1 = 1500
WHERE entry = 84332;


-- ---------------------------------------------------------------------------
-- 2. Only gameobject 202552 drops the usable can
-- ---------------------------------------------------------------------------
-- The three "Kaja'Cola Zero-One" gameobjects carry 41 spawns between them, but
-- the imported loot only puts 84332 (the on-use can, Morale Boost) on 202552 --
-- 7 spawns, phase 16384. 202553 / 202554 (34 spawns, phase 32768) drop only
-- 84331, the inert hand-in can for quest 25110. With the charge fix above the
-- quest needs 9 cans, so this has to be widened.
--
-- The import took the per-entry rows out of the Neltharion dump. TDB 4.3.4 has
-- the clean version: all three templates share lootId 28398, whose single row is
-- item 52484 @ 100% QuestRequired 1. Both cans stay QuestRequired so each is only
-- offered while its own quest is in the log.

DELETE FROM `gameobject_loot_template` WHERE Entry IN (202553, 202554) AND Item = 84332;
INSERT INTO `gameobject_loot_template`
  (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment)
VALUES
  (202553, 84332, 0, 100, 1, 1, 0, 1, 1, 'Kaja''Cola Zero-One - I-357'),
  (202554, 84332, 0, 100, 1, 1, 0, 1, 1, 'Kaja''Cola Zero-One - I-357');


-- ---------------------------------------------------------------------------
-- 3. Ace / Izzy / Gobber are invisible in the cave
-- ---------------------------------------------------------------------------
-- The three cave spawns (phase 49152) carry creature_addon.auras =
-- 49414 / 49415 / 60921 -- "Generic Quest Invisibility 1/2/3" (SPELL_EFFECT_APPLY_AURA,
-- aura 18 SPELL_AURA_MOD_INVISIBILITY, misc 7/8/9). Nothing in the port ever gives the
-- player the matching SPELL_AURA_MOD_INVISIBILITY_DETECT counterpart (49416 / 49417 /
-- 60922): no spell_area row covers the mine, no quest rewards one, no SAI casts one.
-- So all three quest objectives are permanently unseeable. Same class as I-246.
--
-- The auras are Neltharion scaffolding, not retail data. TDB 4.3.4 carries the same
-- three spawns (394492 / 394452 / 394469) with auras = 73617 "Intimidated" -- a plain
-- SPELL_AURA_DUMMY with no visibility effect (Cata SpellEffect: Effect 6, Aura 4,
-- BasePoints 0), and emote 0. Our emote 233 already gives the cowering pose, and 73617
-- was never ported, so the correct end state is simply no aura.
--
-- Scoped by entry + phase, never by guid: the generator emits creature_addon with
-- REPLACE and reassigns 11xxxxxx guids on regen, so a guid list would silently stop
-- matching (see the I-318 note). Stock rows using the same auras (Conqueror Krenna,
-- Gorgonna, ...) are outside the entry filter and untouched.

UPDATE `creature_addon` SET auras = ''
 WHERE auras IN ('49414', '49415', '60921')
   AND guid IN (SELECT guid FROM creature
                 WHERE id IN (38441, 38647, 38746) AND phaseMask = 49152);
