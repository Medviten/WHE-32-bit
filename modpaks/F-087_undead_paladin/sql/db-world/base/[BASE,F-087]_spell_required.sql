DELETE FROM `spell_required` WHERE `spell_id` = @SpellForsakenCharger;
INSERT INTO `spell_required` (`spell_id`, `req_spell`) VALUES (@SpellForsakenCharger, @SpellForsakenWarhorse);
