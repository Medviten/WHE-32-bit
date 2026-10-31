-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Taunka racials (the client needs the icon files)
-- Commented out: the race already gets the Tauren racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialBullrush);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialBullrush, 'Interface\\Icons\\ability_racial_bullrush');
*/
-- <<< CoA Custom 1.9 racials <<<
