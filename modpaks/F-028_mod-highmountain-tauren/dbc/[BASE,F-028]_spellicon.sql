-- spellicon: 6 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @HighmountainTaurenMount1IconID,
    @IconBullRush, @IconMountaineer, @IconPrideOfIronhorn, @IconRuggedTenacity, @IconWasteNotWantNot
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@HighmountainTaurenMount1IconID,    'Interface\\Icons\\inv_hmmoosemount'),
(@IconBullRush,        'Interface\\Icons\\ability_racial_bullrush'),
(@IconMountaineer,     'Interface\\Icons\\ability_racial_mountaineer'),
(@IconPrideOfIronhorn, 'Interface\\Icons\\ability_racial_prideofironhorn'),
(@IconRuggedTenacity,  'Interface\\Icons\\ability_racial_ruggedtenacity'),
(@IconWasteNotWantNot, 'Interface\\Icons\\ability_racial_wastenotwantnot');

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Highmountain Tauren racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialBullrush, @IconCoAAbilityRacialMountaineer, @IconCoAAbilityRacialPrideofironhorn);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialBullrush, 'Interface\\Icons\\ability_racial_bullrush'),
(@IconCoAAbilityRacialMountaineer, 'Interface\\Icons\\Ability_Racial_Mountaineer'),
(@IconCoAAbilityRacialPrideofironhorn, 'Interface\\Icons\\ability_racial_prideofironhorn');
-- <<< CoA Custom 1.9 racials <<<
