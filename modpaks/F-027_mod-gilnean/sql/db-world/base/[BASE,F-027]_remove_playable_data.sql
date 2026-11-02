-- Gilnean is only Worgen's altered form, not a playable race. Removes what earlier builds of this modpak added.
DELETE FROM `playercreateinfo` WHERE `race` = @Gilnean;
DELETE FROM `playercreateinfo_action` WHERE `race` = @Gilnean;
DELETE FROM `player_race_stats` WHERE `Race` = @Gilnean;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (@GilneanCriteria1, @GilneanCriteria2, @GilneanCriteria3, @GilneanCriteria4);
DELETE FROM `playercreateinfo_skills` WHERE `comment` = 'Axes - Gilnean'; -- with a race mask of 0 this gave axes to every rogue
