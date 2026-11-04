-- spellicon: 10 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @IconGoblinAchievement,            @IconWorgenAchievement,
    @IconDarkflight,                   @IconRunningWild,
    @IconBetterLivingThroughChemistry, @IconBestDealsAnywhere,
    @IconTimeIsMoney,                  @IconPackHobgoblin,
    @IconRocketLauncher,               @IconRocketJump
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconGoblinAchievement,            'Interface\\Icons\\achievement_goblinhead'),
(@IconWorgenAchievement,            'Interface\\Icons\\achievement_worganhead'),
(@IconDarkflight,                   'Interface\\Icons\\ability_racial_darkflight'),
(@IconRunningWild,                  'Interface\\Icons\\ability_racial_runningwild'),
(@IconBetterLivingThroughChemistry, 'Interface\\Icons\\ability_racial_betterlivingthroughchemistry'),
(@IconBestDealsAnywhere,            'Interface\\Icons\\ability_racial_bestdealsanywhere'),
(@IconTimeIsMoney,                  'Interface\\Icons\\ability_racial_timeismoney'),
(@IconPackHobgoblin,                'Interface\\Icons\\ability_racial_packhobgoblin'),
(@IconRocketLauncher,               'Interface\\Icons\\inv_gizmo_rocketlauncher'),
(@IconRocketJump,                   'Interface\\Icons\\ability_racial_rocketjump');
