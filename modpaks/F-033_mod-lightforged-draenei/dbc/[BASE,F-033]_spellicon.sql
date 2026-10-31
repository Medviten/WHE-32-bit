-- spellicon: 8 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @LightforgedDraeneiMount1IconID, @LightforgedDraeneiMount2IconID, @LightforgedDraeneiMount3IconID,
    @LightforgedDraeneiRacialIcon1, @LightforgedDraeneiRacialIcon2,
    @LightforgedDraeneiRacialIcon4, @LightforgedDraeneiRacialIcon5, @LightforgedDraeneiRacialIcon6
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@LightforgedDraeneiMount1IconID, @LightforgedDraeneiMount1IconPath), -- also used by @LightforgedDraeneiMount4IconID
(@LightforgedDraeneiMount2IconID, @LightforgedDraeneiMount2IconPath),
(@LightforgedDraeneiMount3IconID, @LightforgedDraeneiMount3IconPath),
(@LightforgedDraeneiRacialIcon1,  @LightforgedDraeneiRacialIcon1Path),
(@LightforgedDraeneiRacialIcon2,  @LightforgedDraeneiRacialIcon2Path), -- also used by @LightforgedDraeneiRacialIcon3
(@LightforgedDraeneiRacialIcon4,  @LightforgedDraeneiRacialIcon4Path),
(@LightforgedDraeneiRacialIcon5,  @LightforgedDraeneiRacialIcon5Path),
(@LightforgedDraeneiRacialIcon6,  @LightforgedDraeneiRacialIcon6Path);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Lightforged Draenei racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialFinalverdict, @IconCoAAbilityRacialForgeoflight, @IconCoAAbilityRacialHolyresistance);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialFinalverdict, 'Interface\\Icons\\ability_racial_finalverdict'),
(@IconCoAAbilityRacialForgeoflight, 'Interface\\Icons\\ability_racial_forgeoflight'),
(@IconCoAAbilityRacialHolyresistance, 'Interface\\Icons\\ability_racial_holyresistance');
-- <<< CoA Custom 1.9 racials <<<
