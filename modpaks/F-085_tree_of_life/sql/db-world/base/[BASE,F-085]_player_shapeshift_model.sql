-- [F-085] tree_of_life: Cataclysm Tree of Life (the lumbering oak) instead of the WotLK treant

REPLACE INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT * FROM (
    SELECT @TreeForm AS `ShapeshiftID`, @NightElf AS `RaceID`, 255 AS `CustomizationID`, 2 AS `GenderID`, @DruidTreeFormPurpleDisplay AS `ModelID` -- Night Elf: purple (Cataclysm default)
    UNION ALL SELECT @TreeForm, @Tauren, 255, 2, @DruidTreeFormGreenDisplay -- Tauren: green
    UNION ALL SELECT @TreeForm, @Troll, 255, 2, @DruidTreeFormOrangeDisplay -- Troll: orange (from F-084_troll_druid)
    UNION ALL SELECT @TreeForm, @Worgen, 255, 2, @DruidTreeFormRedDisplay -- Worgen: red (from F-024_mod-playable-worgen)
    UNION ALL SELECT @TreeForm, @Gilnean, 255, 2, @DruidTreeFormRedDisplay -- Gilnean: red, as Worgen (from F-027_mod-gilnean)
    UNION ALL SELECT @TreeForm, @HighmountainTauren, 255, 2, @DruidTreeFormGreenDisplay -- Highmountain Tauren: green (from F-028_mod-highmountain-tauren)
    UNION ALL SELECT @TreeForm, @ZandalariTroll, 255, 2, @DruidTreeZandalariTrollDisplay -- Zandalari Troll (from F-017_mod-zandalari-troll)
    UNION ALL SELECT @TreeForm, @KulTiran, 255, 2, @DruidTreeKulTiranDisplay -- Kul Tiran (from F-025_mod-kul-tiran)
    UNION ALL SELECT @TreeForm, @LightforgedDraenei, 255, 2, @DruidTreeFormRedDisplay -- Lightforged Draenei: red (from F-033_mod-lightforged-draenei)
) AS `r`
WHERE `r`.`RaceID` IS NOT NULL; -- races that aren't in this build have no ID

-- Every other race that can be a druid (ARAC included): the purple default, unless a modpak gave it its own
-- tree form (e.g. F-011_mod-druid-forms' Undead ents and Gnome lashers)
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT @TreeForm, `c`.`race`, 255, 2, @DruidTreeFormPurpleDisplay
FROM (SELECT DISTINCT `race` FROM `dbc_db`.`charbaseinfo` WHERE `class` = @Druid) AS `c`
WHERE NOT EXISTS (SELECT 1 FROM `player_shapeshift_model` AS `psm`
                  WHERE `psm`.`ShapeshiftID` = @TreeForm AND `psm`.`RaceID` = `c`.`race`);
