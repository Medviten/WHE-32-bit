-- Summon Holy Mount Visual, as on the Blood Elf mounts
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@SpellForsakenWarhorse, @SpellForsakenCharger);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SpellForsakenWarhorse, 31726, 0, 'Summon Forsaken Warhorse - Undead'),
(@SpellForsakenCharger,  31726, 0, 'Summon Forsaken Charger - Undead');
