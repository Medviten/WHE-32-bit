SET @ArcaneSkill                      = 237;
SET @PoisonsSkill                     = 40;  -- SkillLine removed in WotLK, brought back by [F-076]_rogue_poisons.sql

-- SpellItemEnchantment: spell_dispel_type_N is the effect type, object_id_N the stat (ItemModType) for stat effects
SET @EnchantStat                      = 5;   -- ITEM_ENCHANTMENT_TYPE_STAT
SET @ItemModSpellHealing              = 41;  -- ITEM_MOD_SPELL_HEALING_DONE
SET @ItemModSpellDamage               = 42;  -- ITEM_MOD_SPELL_DAMAGE_DONE
SET @ItemModSpellPower                = 45;  -- ITEM_MOD_SPELL_POWER (WotLK's stat for both)

-- ItemExtendedCost ids of the TBC PvP prices (@ECID+N, IP's numbering) and the marks they cost
SET @ECID                             = 10000;
SET @WSGMark                          = 20558; -- Warsong Gulch Mark of Honor
SET @ABMark                           = 20559; -- Arathi Basin Mark of Honor
SET @AVMark                           = 20560; -- Alterac Valley Mark of Honor
SET @EotSMark                         = 29024; -- Eye of the Storm Mark of Honor

SET @NorthspearPath                   = 1981;  -- TaxiPath of the Northspear (Stormwind Harbor - Valgarde)
