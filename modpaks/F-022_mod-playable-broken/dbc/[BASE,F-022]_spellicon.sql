-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Broken racials (the client needs the icon files)
-- Commented out: the race already gets the Draenei racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialHolyresistance);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialHolyresistance, 'Interface\\Icons\\ability_racial_holyresistance');
*/
-- <<< CoA Custom 1.9 racials <<<
