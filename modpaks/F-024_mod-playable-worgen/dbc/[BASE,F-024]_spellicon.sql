-- spellicon: 3 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @IconDarkflight, @IconWorgenAchievement, @IconRunningWild
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconDarkflight,        'Interface\\Icons\\ability_racial_darkflight'),
(@IconWorgenAchievement, 'Interface\\Icons\\achievement_worganhead'),
(@IconRunningWild,       'Interface\\Icons\\ability_racial_runningwild');

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Worgen racials (the client needs the icon files)
-- Commented out: the race already has its Cataclysm racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialRunningwild, @IconCoAAbilityWorgenDarkflight);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialRunningwild, 'Interface\\Icons\\ability_racial_runningwild'),
(@IconCoAAbilityWorgenDarkflight, 'Interface\\Icons\\ability_worgen_darkflight');
*/
-- <<< CoA Custom 1.9 racials <<<
