DELETE FROM `playercreateinfo` WHERE `race` = @Troll AND `class` = @Druid;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@Troll,    @Druid,       @Kalimdor,        @Durotar,        @TrollStartX,    @TrollStartY,    @TrollStartZ,    @TrollStartO);
