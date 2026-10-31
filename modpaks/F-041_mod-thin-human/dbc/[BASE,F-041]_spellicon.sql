-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Forgotten (thin human) racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialJackofalltrades);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialJackofalltrades, 'Interface\\Icons\\ability_racial_jackofalltrades');
-- <<< CoA Custom 1.9 racials <<<
