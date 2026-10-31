-- Custom start spells (only used when enabled in worldserver.conf): Undead paladins get their own Charger
UPDATE `playercreateinfo_spell_custom` SET `racemask` = `racemask` & ~@UndeadMask
WHERE `Spell` = @SpellSummonChargerBloodElf AND (`classmask` & @PaladinMask) <> 0;
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell` = @SpellForsakenCharger;
INSERT INTO `playercreateinfo_spell_custom` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(@UndeadMask, @PaladinMask, @SpellForsakenCharger, 'Summon Forsaken Charger');
