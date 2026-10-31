-- [F-086] travel_form: post-WotLK travel forms instead of the stock cheetah

-- Battle for Azeroth race forms (from F-017_mod-zandalari-troll and F-025_mod-kul-tiran)
REPLACE INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`) VALUES
(@TravelForm,      @ZandalariTroll,    255,        2, @DruidTravelZandalariTrollDisplay), -- ModelID: druidtravelzandalaritroll
(@TravelForm,      @KulTiran,   0, 2, @DruidTravelKulTiranBlueDisplay), -- dark brown hair: druidtravelkultiranblue
(@TravelForm,      @KulTiran,   1, 2, @DruidTravelKulTiranBrownDisplay), -- black hair: druidtravelkultiranbrown
(@TravelForm,      @KulTiran,   2, 2, @DruidTravelKulTiranGreenDisplay), -- red hair: druidtravelkultirangreen
(@TravelForm,      @KulTiran,   3, 2, @DruidTravelKulTiranGreenDisplay), -- light brown hair: druidtravelkultirangreen
(@TravelForm,      @KulTiran,   4, 2, @DruidTravelKulTiranWhiteDisplay), -- grey hair: druidtravelkultiranwhite
(@TravelForm,      @KulTiran,   5, 2, @DruidTravelKulTiranWhiteDisplay), -- light blonde hair: druidtravelkultiranwhite
(@TravelForm,      @KulTiran,   6, 2, @DruidTravelKulTiranWhiteDisplay); -- dark blonde hair: druidtravelkultiranwhite

-- Every other Alliance race that can be a druid (ARAC included): the Mists of Pandaria Alliance travel form. Side and
-- playability come from ChrRaces (playable: no 0x01 flag, as in the core's RaceMgr; `alliance` 0 is Alliance, 1 Horde)
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT @TravelForm, `c`.`race`, 255, 2, @DruidTravelAllianceDisplay
FROM (SELECT DISTINCT `race` FROM `dbc_db`.`charbaseinfo` WHERE `class` = @Druid) AS `c`
JOIN `dbc_db`.`chrraces` AS `r` ON `r`.`id` = `c`.`race` AND (`r`.`flags` & 1) = 0 AND `r`.`alliance` = 0
WHERE NOT EXISTS (SELECT 1 FROM `player_shapeshift_model` AS `psm`
                  WHERE `psm`.`ShapeshiftID` = @TravelForm AND `psm`.`RaceID` = `c`.`race`);

-- Every other Horde race that can be a druid (ARAC included): the Mists of Pandaria Horde travel form. Side and
-- playability come from ChrRaces (playable: no 0x01 flag, as in the core's RaceMgr; `alliance` 0 is Alliance, 1 Horde)
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT @TravelForm, `c`.`race`, 255, 2, @DruidTravelHordeDisplay
FROM (SELECT DISTINCT `race` FROM `dbc_db`.`charbaseinfo` WHERE `class` = @Druid) AS `c`
JOIN `dbc_db`.`chrraces` AS `r` ON `r`.`id` = `c`.`race` AND (`r`.`flags` & 1) = 0 AND `r`.`alliance` = 1
WHERE NOT EXISTS (SELECT 1 FROM `player_shapeshift_model` AS `psm`
                  WHERE `psm`.`ShapeshiftID` = @TravelForm AND `psm`.`RaceID` = `c`.`race`);
