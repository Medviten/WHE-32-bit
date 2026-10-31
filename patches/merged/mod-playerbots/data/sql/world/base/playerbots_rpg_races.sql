SET @Human            =    1;
SET @Orc              =    2;
SET @Dwarf            =    3;
SET @NightElf         =    4;
SET @Undead           =    5;
SET @Tauren           =    6;
SET @Gnome            =    7;
SET @Troll            =    8;
SET @Goblin           =    9;
SET @BloodElf         =   10;
SET @Draenei          =   11;
SET @Worgen           =   12;
SET @HighElf          =   13;
SET @MagharOrc        =   14;
SET @Ogre             =   15;
SET @DarkIronDwarf    =   16;
SET @ZandalariTroll   =   17;
SET @Vulpera          =   18;
SET @AlliancePandaren =   19;
SET @HordePandaren    =   20;


DROP TABLE IF EXISTS `playerbots_rpg_races`;
CREATE TABLE `playerbots_rpg_races`
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry` int(11),
  `race` int(11),
  `minl` int(11),
  `maxl` int(11),
  PRIMARY KEY (`id`),
  KEY `entry` (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `playerbots_rpg_races`;

-- say

INSERT INTO `playerbots_rpg_races` VALUES
--
--       DRAENEI
--
-- Draenei Azumeryst Isle
(NULL, 16553, @Draenei, 1, 10), -- draenei
-- Draenei Bloodmyst Isle
(NULL, 17553, @Draenei, 10, 20), -- draenei
--
--       HUMANS, HIGH ELVES & ALLIANCE PANDAREN
--
-- Innkeeper Farley, Goldshire
(NULL, 295, @Human, 1, 10), -- humans
(NULL, 295, @HighElf, 1, 10), -- high elves
(NULL, 295, @AlliancePandaren, 1, 10), -- Alliance pandaren
-- Innkeeper Heather, Westfall
(NULL, 8931, @Human, 10, 20), -- humans
(NULL, 8931, @HighElf, 10, 20), -- high elves
(NULL, 8931, @AlliancePandaren, 10, 20), -- Alliance pandaren
--
--       DWARVES, GNOMES & DARK IRON DWARVES
--
-- Innkeeper Belm, Kharanos
(NULL, 1247, @Dwarf, 1, 10), -- dwarves
(NULL, 1247, @Gnome, 1, 10), -- gnomes
(NULL, 1247, @DarkIronDwarf, 1, 10), -- dark iron dwarves
-- Innkeeper Hearthstove, Loch Modan
(NULL, 6734, @Dwarf, 10, 20), -- dwarves
(NULL, 6734, @Gnome, 10, 20), -- gnomes
(NULL, 6734, @DarkIronDwarf, 10, 20), -- dark iron dwarves
--
--       NIGHT ELVES & WORGEN
--
-- Innkeeper Keldamyr, Dolanaar
(NULL, 6736, @NightElf, 1, 10), -- night elves
(NULL, 6736, @Worgen, 1, 10), -- worgen
-- Innkeeper Shaussiy, Auberdine
(NULL, 6737, @NightElf, 10, 20), -- night elves
(NULL, 6737, @Worgen, 10, 20), -- worgen
--
--       ALLIANCE CITIES
--
-- Innkeeper Saelienne, Darnassus
(NULL, 6735, @NightElf, 10, 80), -- night elves
(NULL, 6735, @Worgen, 10, 80), -- worgen
--
-- Innkeeper Firebrew, Ironforge
(NULL, 5111, @Dwarf, 10, 80), -- dwarves
(NULL, 5111, @Gnome, 10, 80), -- gnomes
(NULL, 5111, @NightElf, 10, 80), -- night elves
(NULL, 5111, @Human, 10, 80), -- human
(NULL, 5111, @Draenei, 20, 80), -- draenei
(NULL, 5111, @Worgen, 10, 80), -- worgen
(NULL, 5111, @HighElf, 10, 80), -- high elves
(NULL, 5111, @AlliancePandaren, 10, 80), -- Alliance pandaren
(NULL, 5111, @DarkIronDwarf, 10, 80), -- dark iron dwarves
--
-- Innkeeper Allison, Stormwind
(NULL, 6740, @Human, 10, 80), -- human
(NULL, 6740, @Dwarf, 10, 80), -- dwarves
(NULL, 6740, @NightElf, 10, 80), -- night elves
(NULL, 6740, @Gnome, 10, 80), -- gnomes
(NULL, 6740, @Draenei, 20, 80), -- draenei
(NULL, 6740, @Worgen, 10, 80), -- worgen
(NULL, 6740, @HighElf, 10, 80), -- high elves
(NULL, 6740, @AlliancePandaren, 10, 80), -- Alliance pandaren
(NULL, 6740, @DarkIronDwarf, 10, 80), -- dark iron dwarves
--
-- Caregiver Breel Exodar
(NULL, 16739, @Draenei, 10, 80), -- draenei
(NULL, 16739, @Human, 60, 80), -- human
(NULL, 16739, @Dwarf, 60, 80), -- dwarves
(NULL, 16739, @NightElf, 60, 80), -- night elves
(NULL, 16739, @Gnome, 60, 80), -- gnomes
(NULL, 16739, @Worgen, 60, 80), -- worgen
(NULL, 16739, @HighElf, 60, 80), -- high elves
(NULL, 16739, @AlliancePandaren, 60, 80), -- Alliance pandaren
(NULL, 16739, @DarkIronDwarf, 60, 80), -- dark iron dwarves
--
--       ALLIANCE CONTESTED LOCATIONS
--
-- Innkeeper Kimlya, Astranaar
--
(NULL, 6738, @NightElf, 15, 30), -- night elves
(NULL, 6738, @Draenei, 20, 30), -- draenei
(NULL, 6738, @Worgen, 15, 30), -- worgen
--
-- Innkeeper Faralia, Stonetalon Peak
--
(NULL, 16458, @NightElf, 15, 27), -- night elves
(NULL, 16458, @Worgen, 15, 27), -- worgen
--
-- Innkeeper Lyshaerya, Desolace
--
(NULL, 11103, @NightElf, 30, 40), -- night elves
(NULL, 11103, @Worgen, 30, 40), -- worgen
--
-- Innkeeper Shyria, Feathermoon, Feralas
(NULL, 7736, @NightElf, 40, 50), -- night elves
(NULL, 7736, @Worgen, 40, 50), -- worgen
--
-- Falfindel Waywarder, Feralas elf camp
(NULL, 4048, @NightElf, 40, 50), -- night elves
(NULL, 4048, @Worgen, 40, 50), -- worgen
--
-- Innkeeper Helbrek, Wetlands
--
(NULL, 1464, @Dwarf, 20, 30), -- dwarves
(NULL, 1464, @Gnome, 20, 30), -- gnomes
(NULL, 1464, @DarkIronDwarf, 20, 30), -- dark iron dwarves
--
-- Innkeeper Trelayne, Duskwood
--
(NULL, 6790, @Human, 18, 30), -- human
(NULL, 6790, @Dwarf, 18, 30), -- dwarves
(NULL, 6790, @Gnome, 18, 30), -- gnomes
(NULL, 6790, @Draenei, 20, 30), -- draenei
(NULL, 6790, @Worgen, 20, 30), -- worgen
(NULL, 6790, @HighElf, 18, 30), -- high elves
(NULL, 6790, @AlliancePandaren, 18, 30), -- Alliance pandaren
(NULL, 6790, @DarkIronDwarf, 18, 30), -- dark iron dwarves
--
-- Innkeeper Brianna, Redridge Mountains
--
(NULL, 6727, @Human, 15, 25), -- human
(NULL, 6727, @HighElf, 15, 25), -- high elves
(NULL, 6727, @AlliancePandaren, 15, 25), -- Alliance pandaren
--
-- Innkeeper Anderson, Southshore, Hillsbrad
(NULL, 2352, @Human, 20, 30), -- human
(NULL, 2352, @Dwarf, 20, 30), -- dwarves
(NULL, 2352, @Gnome, 20, 30), -- gnomes
(NULL, 2352, @Draenei, 20, 30), -- draenei
(NULL, 2352, @DarkIronDwarf, 20, 30), -- dark iron dwarves
--
-- Captain Nials, Refuge Pointe, Arathi
(NULL, 2700, @Human, 30, 40), -- human
(NULL, 2700, @Dwarf, 30, 40), -- dwarves
(NULL, 2700, @Gnome, 30, 40), -- gnomes
(NULL, 2700, @NightElf, 30, 40), -- night elves
(NULL, 2700, @Draenei, 30, 40), -- draenei
(NULL, 2700, @Worgen, 30, 40), -- worgen
(NULL, 2700, @HighElf, 30, 40), -- high elves
(NULL, 2700, @AlliancePandaren, 30, 40), -- Alliance pandaren
(NULL, 2700, @DarkIronDwarf, 30, 40), -- dark iron dwarves
--
-- Lt. Doren, Stranglethorn Vale
(NULL, 469, @Human, 30, 45), -- human
(NULL, 469, @Dwarf, 30, 45), -- dwarves
(NULL, 469, @NightElf, 30, 45), -- night elves
(NULL, 469, @Gnome, 30, 45), -- gnomes
(NULL, 469, @Draenei, 30, 45), -- draenei
(NULL, 469, @Worgen, 30, 45), -- worgen
(NULL, 469, @HighElf, 30, 45), -- high elves
(NULL, 469, @AlliancePandaren, 30, 45), -- Alliance pandaren
(NULL, 469, @DarkIronDwarf, 30, 45), -- dark iron dwarves
--
-- Innkeeper Janene, Theramore
(NULL, 6272, @Human, 35, 45), -- human
(NULL, 6272, @Dwarf, 35, 45), -- dwarves
(NULL, 6272, @Gnome, 35, 45), -- gnomes
(NULL, 6272, @Draenei, 35, 45), -- draenei
(NULL, 6272, @HighElf, 35, 45), -- high elves
(NULL, 6272, @AlliancePandaren, 35, 45), -- Alliance pandaren
(NULL, 6272, @DarkIronDwarf, 35, 45), -- dark iron dwarves
--
-- Innkeeper Prospector Ryedol, Badlands Q-giver
(NULL, 2910, @Dwarf, 35, 45), -- dwarves
(NULL, 2910, @Gnome, 35, 45), -- gnomes
(NULL, 2910, @DarkIronDwarf, 35, 45), -- dark iron dwarves
--
-- Innkeeper Thulfram, Hinterlands, Dwarven Outpost
(NULL, 7744, @Dwarf, 40, 50), -- dwarves
(NULL, 7744, @Human, 40, 50), -- human
(NULL, 7744, @Gnome, 40, 50), -- gnomes
(NULL, 7744, @HighElf, 40, 50), -- high elves
(NULL, 7744, @AlliancePandaren, 40, 50), -- Alliance pandaren
(NULL, 7744, @DarkIronDwarf, 40, 50), -- dark iron dwarves
--
-- Loh'atu, Azshara alliance camp Q-giver 11548
(NULL, 11548, @NightElf, 45, 55), -- night elves
(NULL, 11548, @Human, 45, 55), -- human
(NULL, 11548, @Draenei, 45, 55), -- draenei
(NULL, 11548, @Worgen, 45, 55), -- worgen
(NULL, 11548, @HighElf, 45, 55), -- high elves
(NULL, 11548, @AlliancePandaren, 45, 55), -- Alliance pandaren
--
-- Thadius Grimshade, Nethergarde Keep, Blasted Lands
(NULL, 8022, @Human, 45, 55), -- human
(NULL, 8022, @Dwarf, 45, 55), -- dwarves
(NULL, 8022, @NightElf, 45, 55), -- night elves
(NULL, 8022, @Gnome, 45, 55), -- gnomes
(NULL, 8022, @Draenei, 45, 55), -- draenei
(NULL, 8022, @Worgen, 45, 55), -- worgen
(NULL, 8022, @HighElf, 45, 55), -- high elves
(NULL, 8022, @AlliancePandaren, 45, 55), -- Alliance pandaren
(NULL, 8022, @DarkIronDwarf, 45, 55), -- dark iron dwarves
--
-- Gothine the Hooded, Felwood Alliance camp
(NULL, 9465, @NightElf, 48, 55), -- night elves
(NULL, 9465, @Human, 48, 55), -- human
(NULL, 9465, @Dwarf, 48, 55), -- dwarves
(NULL, 9465, @Gnome, 48, 55), -- gnomes
(NULL, 9465, @Draenei, 48, 55), -- draenei
(NULL, 9465, @Worgen, 48, 55), -- worgen
(NULL, 9465, @HighElf, 48, 55), -- high elves
(NULL, 9465, @AlliancePandaren, 48, 55), -- Alliance pandaren
(NULL, 9465, @DarkIronDwarf, 48, 55), -- dark iron dwarves
--
-- Muigin, Alliance Q-giver, Un'Goro
(NULL, 9119, @Human, 48, 55), -- human
(NULL, 9119, @Dwarf, 48, 55), -- dwarves
(NULL, 9119, @NightElf, 48, 55), -- night elves
(NULL, 9119, @Gnome, 48, 55), -- gnomes
(NULL, 9119, @Draenei, 48, 55), -- draenei
(NULL, 9119, @Worgen, 48, 55), -- worgen
(NULL, 9119, @HighElf, 48, 55), -- high elves
(NULL, 9119, @AlliancePandaren, 48, 55), -- Alliance pandaren
(NULL, 9119, @DarkIronDwarf, 48, 55), -- dark iron dwarves
--
-- Alchemist Arbington, West Plaguelands, Human
(NULL, 11056, @Human, 51, 58), -- human
(NULL, 11056, @Dwarf, 51, 58), -- dwarves
(NULL, 11056, @NightElf, 51, 58), -- night elves
(NULL, 11056, @Gnome, 51, 58), -- gnomes
(NULL, 11056, @Draenei, 51, 58), -- draenei
(NULL, 11056, @Worgen, 51, 58), -- worgen
(NULL, 11056, @HighElf, 51, 58), -- high elves
(NULL, 11056, @AlliancePandaren, 51, 58), -- Alliance pandaren
(NULL, 11056, @DarkIronDwarf, 51, 58), -- dark iron dwarves
--
-- Borgus Stourarm, Alliance Taxi, Burning Steppes
(NULL, 2299, @Human, 50, 60), -- human
(NULL, 2299, @Dwarf, 50, 60), -- dwarves
(NULL, 2299, @NightElf, 50, 60), -- night elves
(NULL, 2299, @Gnome, 50, 60), -- gnomes
(NULL, 2299, @Draenei, 50, 60), -- draenei
(NULL, 2299, @Worgen, 50, 60), -- worgen
(NULL, 2299, @HighElf, 50, 60), -- high elves
(NULL, 2299, @AlliancePandaren, 50, 60), -- Alliance pandaren
(NULL, 2299, @DarkIronDwarf, 50, 60), -- dark iron dwarves
--
-- Marshal Bluewall, Alliance camp, Silithus
(NULL, 17080, @Human, 55, 60), -- human
(NULL, 17080, @Dwarf, 55, 60), -- dwarves
(NULL, 17080, @NightElf, 55, 60), -- night elves
(NULL, 17080, @Gnome, 55, 60), -- gnomes
(NULL, 17080, @Draenei, 55, 60), -- draenei
(NULL, 17080, @Worgen, 55, 60), -- worgen
(NULL, 17080, @HighElf, 55, 60), -- high elves
(NULL, 17080, @AlliancePandaren, 55, 60), -- Alliance pandaren
(NULL, 17080, @DarkIronDwarf, 55, 60), -- dark iron dwarves
--
--           OUTLAND
--
-- Commander Duron, Dark Portal
(NULL, 19229, @Human, 58, 59), -- human
(NULL, 19229, @Dwarf, 58, 59), -- dwarves
(NULL, 19229, @NightElf, 58, 59), -- night elves
(NULL, 19229, @Gnome, 58, 59), -- gnomes
(NULL, 19229, @Draenei, 58, 59), -- draenei
(NULL, 19229, @Worgen, 58, 59), -- worgen
(NULL, 19229, @HighElf, 58, 59), -- high elves
(NULL, 19229, @AlliancePandaren, 58, 59), -- Alliance pandaren
(NULL, 19229, @DarkIronDwarf, 58, 59), -- dark iron dwarves
--
-- Sid Limbardi, Honor Hold, Hellfire
(NULL, 16826, @Human, 58, 63), -- human
(NULL, 16826, @Dwarf, 58, 63), -- dwarves
(NULL, 16826, @NightElf, 58, 63), -- night elves
(NULL, 16826, @Gnome, 58, 63), -- gnomes
(NULL, 16826, @Draenei, 58, 63), -- draenei
(NULL, 16826, @Worgen, 58, 63), -- worgen
(NULL, 16826, @HighElf, 58, 63), -- high elves
(NULL, 16826, @AlliancePandaren, 58, 63), -- Alliance pandaren
(NULL, 16826, @DarkIronDwarf, 58, 63), -- dark iron dwarves
--
-- Caregiver Ophera Windfury, Draenei, Hellfire
(NULL, 18906, @Human, 60, 63), -- human
(NULL, 18906, @Dwarf, 60, 63), -- dwarves
(NULL, 18906, @NightElf, 60, 63), -- night elves
(NULL, 18906, @Gnome, 60, 63), -- gnomes
(NULL, 18906, @Draenei, 60, 63), -- draenei
(NULL, 18906, @Worgen, 60, 63), -- worgen
(NULL, 18906, @HighElf, 60, 63), -- high elves
(NULL, 18906, @AlliancePandaren, 60, 63), -- Alliance pandaren
(NULL, 18906, @DarkIronDwarf, 60, 63), -- dark iron dwarves
--
-- Caregiver Abidaar, Telredor, Zangarmarsh
(NULL, 18251, @Human, 60, 63), -- human
(NULL, 18251, @Dwarf, 60, 63), -- dwarves
(NULL, 18251, @NightElf, 60, 63), -- night elves
(NULL, 18251, @Gnome, 60, 63), -- gnomes
(NULL, 18251, @Draenei, 60, 63), -- draenei
(NULL, 18251, @Worgen, 60, 63), -- worgen
(NULL, 18251, @HighElf, 60, 63), -- high elves
(NULL, 18251, @AlliancePandaren, 60, 63), -- Alliance pandaren
(NULL, 18251, @DarkIronDwarf, 60, 63), -- dark iron dwarves
--
-- Caregiver Kerp, Orebor, Zangarmarsh
(NULL, 18908, @Human, 61, 64), -- human
(NULL, 18908, @Dwarf, 61, 64), -- dwarves
(NULL, 18908, @NightElf, 61, 64), -- night elves
(NULL, 18908, @Gnome, 61, 64), -- gnomes
(NULL, 18908, @Draenei, 61, 64), -- draenei
(NULL, 18908, @Worgen, 61, 64), -- worgen
(NULL, 18908, @HighElf, 61, 64), -- high elves
(NULL, 18908, @AlliancePandaren, 61, 64), -- Alliance pandaren
(NULL, 18908, @DarkIronDwarf, 61, 64), -- dark iron dwarves
--
-- Innkeeper Biribi, Terrokar
(NULL, 19296, @Human, 62, 65), -- human
(NULL, 19296, @Dwarf, 62, 65), -- dwarves
(NULL, 19296, @NightElf, 62, 65), -- night elves
(NULL, 19296, @Gnome, 62, 65), -- gnomes
(NULL, 19296, @Draenei, 62, 65), -- draenei
(NULL, 19296, @Worgen, 62, 65), -- worgen
(NULL, 19296, @HighElf, 62, 65), -- high elves
(NULL, 19296, @AlliancePandaren, 62, 65), -- Alliance pandaren
(NULL, 19296, @DarkIronDwarf, 62, 65), -- dark iron dwarves
--
-- Caregiver Isel, Telaar, Nagrand
(NULL, 18914, @Human, 64, 67), -- human
(NULL, 18914, @Dwarf, 64, 67), -- dwarves
(NULL, 18914, @NightElf, 64, 67), -- night elves
(NULL, 18914, @Gnome, 64, 67), -- gnomes
(NULL, 18914, @Draenei, 64, 67), -- draenei
(NULL, 18914, @Worgen, 64, 67), -- worgen
(NULL, 18914, @HighElf, 64, 67), -- high elves
(NULL, 18914, @AlliancePandaren, 64, 67), -- Alliance pandaren
(NULL, 18914, @DarkIronDwarf, 64, 67), -- dark iron dwarves
--
-- Innkeeper Shaunessy, Sylvanaar, Blade's Edge
(NULL, 19495, @Human, 65, 68), -- human
(NULL, 19495, @Dwarf, 65, 68), -- dwarves
(NULL, 19495, @NightElf, 65, 68), -- night elves
(NULL, 19495, @Gnome, 65, 68), -- gnomes
(NULL, 19495, @Draenei, 65, 68), -- draenei
(NULL, 19495, @Worgen, 65, 68), -- worgen
(NULL, 19495, @HighElf, 65, 68), -- high elves
(NULL, 19495, @AlliancePandaren, 65, 68), -- Alliance pandaren
(NULL, 19495, @DarkIronDwarf, 65, 68), -- dark iron dwarves
--
-- Innkeeper Fizir Doc Clocktock, Blade's Edge
(NULL, 21110, @Human, 65, 68), -- human
(NULL, 21110, @Dwarf, 65, 68), -- dwarves
(NULL, 21110, @NightElf, 65, 68), -- night elves
(NULL, 21110, @Gnome, 65, 68), -- gnomes
(NULL, 21110, @Draenei, 65, 68), -- draenei
(NULL, 21110, @Worgen, 65, 68), -- worgen
(NULL, 21110, @HighElf, 65, 68), -- high elves
(NULL, 21110, @AlliancePandaren, 65, 68), -- Alliance pandaren
(NULL, 21110, @DarkIronDwarf, 65, 68), -- dark iron dwarves
--
-- Innkeeper Dreg Cloudsweeper, Shadowmoon
(NULL, 19352, @Human, 67, 70), -- human
(NULL, 19352, @Dwarf, 67, 70), -- dwarves
(NULL, 19352, @NightElf, 67, 70), -- night elves
(NULL, 19352, @Gnome, 67, 70), -- gnomes
(NULL, 19352, @Draenei, 67, 70), -- draenei
(NULL, 19352, @Worgen, 67, 70), -- worgen
(NULL, 19352, @HighElf, 67, 70), -- high elves
(NULL, 19352, @AlliancePandaren, 67, 70), -- Alliance pandaren
(NULL, 19352, @DarkIronDwarf, 67, 70), -- dark iron dwarves
--
--           NORTHREND
--
-- Isirami Fairwind, Dalaran
(NULL, 32413, @Human, 72, 80), -- human
(NULL, 32413, @Dwarf, 72, 80), -- dwarves
(NULL, 32413, @NightElf, 72, 80), -- night elves
(NULL, 32413, @Gnome, 72, 80), -- gnomes
(NULL, 32413, @Draenei, 72, 80), -- draenei
(NULL, 32413, @Worgen, 72, 80), -- worgen
(NULL, 32413, @HighElf, 72, 80), -- high elves
(NULL, 32413, @AlliancePandaren, 72, 80), -- Alliance pandaren
(NULL, 32413, @DarkIronDwarf, 72, 80), -- dark iron dwarves
--
-- James Deacon, Valiance Keep, Borean Tundra
(NULL, 25245, @Human, 68, 72), -- human
(NULL, 25245, @Dwarf, 68, 72), -- dwarves
(NULL, 25245, @NightElf, 68, 72), -- night elves
(NULL, 25245, @Gnome, 68, 72), -- gnomes
(NULL, 25245, @Draenei, 68, 72), -- draenei
(NULL, 25245, @Worgen, 68, 72), -- worgen
(NULL, 25245, @HighElf, 68, 72), -- high elves
(NULL, 25245, @AlliancePandaren, 68, 72), -- Alliance pandaren
(NULL, 25245, @DarkIronDwarf, 68, 72), -- dark iron dwarves
--
-- "Charlie" Northtop, Fizzcrank Airstrip, Borean Tundra
(NULL, 26596, @Human, 69, 72), -- human
(NULL, 26596, @Dwarf, 69, 72), -- dwarves
(NULL, 26596, @NightElf, 69, 72), -- night elves
(NULL, 26596, @Gnome, 69, 72), -- gnomes
(NULL, 26596, @Draenei, 69, 72), -- draenei
(NULL, 26596, @Worgen, 69, 72), -- worgen
(NULL, 26596, @HighElf, 69, 72), -- high elves
(NULL, 26596, @AlliancePandaren, 69, 72), -- Alliance pandaren
(NULL, 26596, @DarkIronDwarf, 69, 72), -- dark iron dwarves
--
-- Innkeeper Hazel Lagras, Valgarde, Howling Fjord
(NULL, 23731, @Human, 68, 72), -- human
(NULL, 23731, @Dwarf, 68, 72), -- dwarves
(NULL, 23731, @NightElf, 68, 72), -- night elves
(NULL, 23731, @Gnome, 68, 72), -- gnomes
(NULL, 23731, @Draenei, 68, 72), -- draenei
(NULL, 23731, @Worgen, 68, 72), -- worgen
(NULL, 23731, @HighElf, 68, 72), -- high elves
(NULL, 23731, @AlliancePandaren, 68, 72), -- Alliance pandaren
(NULL, 23731, @DarkIronDwarf, 68, 72), -- dark iron dwarves
--
-- Innkeeper Celeste Goodhutch, Westguard Keep, Howling Fjord
(NULL, 23937, @Human, 69, 72), -- human
(NULL, 23937, @Dwarf, 69, 72), -- dwarves
(NULL, 23937, @NightElf, 69, 72), -- night elves
(NULL, 23937, @Gnome, 69, 72), -- gnomes
(NULL, 23937, @Draenei, 69, 72), -- draenei
(NULL, 23937, @Worgen, 69, 72), -- worgen
(NULL, 23937, @HighElf, 69, 72), -- high elves
(NULL, 23937, @AlliancePandaren, 69, 72), -- Alliance pandaren
(NULL, 23937, @DarkIronDwarf, 69, 72), -- dark iron dwarves
--
-- Christina Daniels, Fort Wildervar, Howling Fjord
(NULL, 24057, @Human, 70, 72), -- human
(NULL, 24057, @Dwarf, 70, 72), -- dwarves
(NULL, 24057, @NightElf, 70, 72), -- night elves
(NULL, 24057, @Gnome, 70, 72), -- gnomes
(NULL, 24057, @Draenei, 70, 72), -- draenei
(NULL, 24057, @Worgen, 70, 72), -- worgen
(NULL, 24057, @HighElf, 70, 72), -- high elves
(NULL, 24057, @AlliancePandaren, 70, 72), -- Alliance pandaren
(NULL, 24057, @DarkIronDwarf, 70, 72), -- dark iron dwarves
--
-- Jennifer Bell, Amberpine Lodge, Grizzly Hills
(NULL, 27066, @Human, 70, 74), -- human
(NULL, 27066, @Dwarf, 70, 74), -- dwarves
(NULL, 27066, @NightElf, 70, 74), -- night elves
(NULL, 27066, @Gnome, 70, 74), -- gnomes
(NULL, 27066, @Draenei, 70, 74), -- draenei
(NULL, 27066, @Worgen, 70, 74), -- worgen
(NULL, 27066, @HighElf, 70, 74), -- high elves
(NULL, 27066, @AlliancePandaren, 70, 74), -- Alliance pandaren
(NULL, 27066, @DarkIronDwarf, 70, 74), -- dark iron dwarves
--
-- Quartermaster McCarty, Westfall Brigade Encampment, Grizzly Hills
(NULL, 26375, @Human, 70, 74), -- human
(NULL, 26375, @Dwarf, 70, 74), -- dwarves
(NULL, 26375, @NightElf, 70, 74), -- night elves
(NULL, 26375, @Gnome, 70, 74), -- gnomes
(NULL, 26375, @Draenei, 70, 74), -- draenei
(NULL, 26375, @Worgen, 70, 74), -- worgen
(NULL, 26375, @HighElf, 70, 74), -- high elves
(NULL, 26375, @AlliancePandaren, 70, 74), -- Alliance pandaren
(NULL, 26375, @DarkIronDwarf, 70, 74), -- dark iron dwarves
--
-- Illusia Lune, Wintergarde Keep, Dragonblight
(NULL, 27042, @Human, 71, 75), -- human
(NULL, 27042, @Dwarf, 71, 75), -- dwarves
(NULL, 27042, @NightElf, 71, 75), -- night elves
(NULL, 27042, @Gnome, 71, 75), -- gnomes
(NULL, 27042, @Draenei, 71, 75), -- draenei
(NULL, 27042, @Worgen, 71, 75), -- worgen
(NULL, 27042, @HighElf, 71, 75), -- high elves
(NULL, 27042, @AlliancePandaren, 71, 75), -- Alliance pandaren
(NULL, 27042, @DarkIronDwarf, 71, 75), -- dark iron dwarves
--
-- Naohain, Stars' Rest, Dragonblight
(NULL, 27052, @Human, 71, 75), -- human
(NULL, 27052, @Dwarf, 71, 75), -- dwarves
(NULL, 27052, @NightElf, 71, 75), -- night elves
(NULL, 27052, @Gnome, 71, 75), -- gnomes
(NULL, 27052, @Draenei, 71, 75), -- draenei
(NULL, 27052, @Worgen, 71, 75), -- worgen
(NULL, 27052, @HighElf, 71, 75), -- high elves
(NULL, 27052, @AlliancePandaren, 71, 75), -- Alliance pandaren
(NULL, 27052, @DarkIronDwarf, 71, 75), -- dark iron dwarves
--
-- Gunda Boldhammer, Frosthold, Storm Peaks
(NULL, 29926, @Human, 77, 80), -- human
(NULL, 29926, @Dwarf, 77, 80), -- dwarves
(NULL, 29926, @NightElf, 77, 80), -- night elves
(NULL, 29926, @Gnome, 77, 80), -- gnomes
(NULL, 29926, @Draenei, 77, 80), -- draenei
(NULL, 29926, @Worgen, 77, 80), -- worgen
(NULL, 29926, @HighElf, 77, 80), -- high elves
(NULL, 29926, @AlliancePandaren, 77, 80), -- Alliance pandaren
(NULL, 29926, @DarkIronDwarf, 77, 80), -- dark iron dwarves
--
-- Caris Sunlance, Argent Tournament, Icecrown
(NULL, 33970, @Human, 80, 80), -- human
(NULL, 33970, @Dwarf, 80, 80), -- dwarves
(NULL, 33970, @NightElf, 80, 80), -- night elves
(NULL, 33970, @Gnome, 80, 80), -- gnomes
(NULL, 33970, @Draenei, 80, 80), -- draenei
(NULL, 33970, @Worgen, 80, 80), -- worgen
(NULL, 33970, @HighElf, 80, 80), -- high elves
(NULL, 33970, @AlliancePandaren, 80, 80), -- Alliance pandaren
(NULL, 33970, @DarkIronDwarf, 80, 80), -- dark iron dwarves
--
--       ALLIANCE MOUNT VENDORS
--
-- Milli Featherwhistle, Gnome Mechanostrider merchant, Dun Morogh
-- (NULL, 7955, 3),
-- (NULL, 7955, 7),
--
-- Lelanai, Night Elf Night Saber vendor, Darnassus
-- (NULL, 4730, 4),
--
-- Katie Hunter, Human Horse vendor, Elwynn Forest
-- (NULL, 384, 1),
--
--       HORDE
--
--       ORCS, TROLLS, GOBLINS, MAG'HAR ORCS, OGRES & ZANDALARI TROLLS
--
-- Innkeeper Grosk, Durotar
(NULL, 6928, @Orc, 1, 10), -- orcs
(NULL, 6928, @Troll, 1, 10), -- trolls
(NULL, 6928, @ZandalariTroll, 1, 10), -- Zandalari trolls
(NULL, 6928, @Goblin, 1, 10), -- goblins
(NULL, 6928, @MagharOrc, 1, 10), -- mag'har orcs
(NULL, 6928, @Ogre, 1, 10), -- ogres
--
--       TAUREN, VULPERA & HORDE PANDAREN
--
-- Innkeeper Pala, Mulgore
(NULL, 6746, @Tauren, 1, 10), -- tauren
(NULL, 6746, @Vulpera, 1, 10), -- vulpera
(NULL, 6746, @HordePandaren, 1, 10), -- Horde pandaren
--
--       UNDEAD
--
-- Innkeeper Renee, Brill, Tirisfal Glades
(NULL, 5688, @Undead, 1, 10), -- undead
-- Innkeeper Bates, The Sepulcher, Silverpine Forest
(NULL, 6739, @Undead, 10, 20), -- undead
--
--       BLOOD ELVES
--
-- Blood Elves, Eversong Woods
(NULL, 15397, @BloodElf, 1, 10), -- blood elves
-- Blood Elves, Ghostlands
(NULL, 16542, @BloodElf, 10, 20), -- blood elves
--
--       HORDE CITIES
--
-- Innkeeper Gryshka, Orgrimmar
(NULL, 6929, @Orc, 10, 80), -- orcs
(NULL, 6929, @Troll, 10, 80), -- trolls
(NULL, 6929, @ZandalariTroll, 10, 80), -- Zandalari trolls
(NULL, 6929, @Tauren, 10, 80), -- tauren
(NULL, 6929, @Vulpera, 10, 80), -- vulpera
(NULL, 6929, @HordePandaren, 10, 80), -- Horde pandaren
(NULL, 6929, @Undead, 20, 80), -- undead
(NULL, 6929, @BloodElf, 20, 80), -- blood elves
(NULL, 6929, @Goblin, 10, 80), -- goblins
(NULL, 6929, @MagharOrc, 10, 80), -- mag'har orcs
(NULL, 6929, @Ogre, 10, 80), -- ogres
--
-- Innkeeper Pala, Thunder Bluff, Mulgore
(NULL, 6746, @Tauren, 10, 80), -- tauren
(NULL, 6746, @Vulpera, 10, 80), -- vulpera
(NULL, 6746, @HordePandaren, 10, 80), -- Horde pandaren
--
-- Innkeeper Norman, Undercity
(NULL, 6741, @Undead, 10, 80), -- undead
(NULL, 6741, @BloodElf, 20, 80), -- blood elves
--
-- Innkeeper Velandra Silvermoon
(NULL, 16618, @BloodElf, 10, 80), -- blood elves
-- Innkeeper Jovia Silvermoon
(NULL, 17630, @Orc, 60, 80), -- orcs
(NULL, 17630, @Undead, 60, 80), -- undead
(NULL, 17630, @Tauren, 60, 80), -- tauren
(NULL, 17630, @Vulpera, 60, 80), -- vulpera
(NULL, 17630, @HordePandaren, 60, 80), -- Horde pandaren
(NULL, 17630, @Troll, 60, 80), -- trolls
(NULL, 17630, @ZandalariTroll, 60, 80), -- Zandalari trolls
(NULL, 17630, @Goblin, 60, 80), -- goblins
(NULL, 17630, @MagharOrc, 60, 80), -- mag'har orcs
(NULL, 17630, @Ogre, 60, 80), -- ogres
-- Innkeeper Delaniel Silvermoon Entrance
(NULL, 15433, @BloodElf, 5, 7), -- blood elves
--
--       HORDE CONTESTED LOCATIONS
--
-- Innkeeper Boorand Plainswind, Crossroads, Barrens
(NULL, 3934, @Orc, 10, 25), -- orcs
(NULL, 3934, @Tauren, 10, 25), -- tauren
(NULL, 3934, @Vulpera, 10, 25), -- vulpera
(NULL, 3934, @HordePandaren, 10, 25), -- Horde pandaren
(NULL, 3934, @Troll, 10, 25), -- trolls
(NULL, 3934, @ZandalariTroll, 10, 25), -- Zandalari trolls
(NULL, 3934, @BloodElf, 20, 25), -- blood elves
-- (NULL, 3934, @Undead, 15, 25), -- undead
(NULL, 3934, @Goblin, 10, 25), -- goblins
(NULL, 3934, @MagharOrc, 10, 25), -- mag'har orcs
(NULL, 3934, @Ogre, 10, 25), -- ogres
--
-- Innkeeper Byula, Camp Taurajo, Barrens
(NULL, 7714, @Orc, 10, 25), -- orcs
(NULL, 7714, @Tauren, 10, 25), -- tauren
(NULL, 7714, @Vulpera, 10, 25), -- vulpera
(NULL, 7714, @HordePandaren, 10, 25), -- Horde pandaren
(NULL, 7714, @Troll, 10, 25), -- trolls
(NULL, 7714, @ZandalariTroll, 10, 25), -- Zandalari trolls
(NULL, 7714, @Goblin, 10, 25), -- goblins
(NULL, 7714, @MagharOrc, 10, 25), -- mag'har orcs
(NULL, 7714, @Ogre, 10, 25), -- ogres
--
-- Innkeeper Jayka, Stonetalon, Red Rock Retreat
(NULL, 7731, @Orc, 15, 27), -- orcs
(NULL, 7731, @Tauren, 15, 27), -- tauren
(NULL, 7731, @Vulpera, 15, 27), -- vulpera
(NULL, 7731, @HordePandaren, 15, 27), -- Horde pandaren
(NULL, 7731, @Troll, 15, 27), -- trolls
(NULL, 7731, @ZandalariTroll, 15, 27), -- Zandalari trolls
(NULL, 7731, @BloodElf, 20, 27), -- blood elves
(NULL, 7731, @Goblin, 15, 27), -- goblins
(NULL, 7731, @MagharOrc, 15, 27), -- mag'har orcs
(NULL, 7731, @Ogre, 15, 27), -- ogres
--
-- Innkeeper Abeqwa, Thousand Needles
(NULL, 11116, @Orc, 25, 35), -- orcs
(NULL, 11116, @Tauren, 25, 35), -- tauren
(NULL, 11116, @Vulpera, 25, 35), -- vulpera
(NULL, 11116, @HordePandaren, 25, 35), -- Horde pandaren
(NULL, 11116, @Troll, 25, 35), -- trolls
(NULL, 11116, @ZandalariTroll, 25, 35), -- Zandalari trolls
(NULL, 11116, @BloodElf, 25, 35), -- blood elves
(NULL, 11116, @Goblin, 25, 35), -- goblins
(NULL, 11116, @MagharOrc, 25, 35), -- mag'har orcs
(NULL, 11116, @Ogre, 25, 35), -- ogres
--
-- Innkeeper Shay, Tarren Mill, Hillsbrad
(NULL, 2388, @Undead, 20, 30), -- undead
(NULL, 2388, @BloodElf, 20, 30), -- blood elves
--
-- Innkeeper Greul, Feralas, Horde
(NULL, 7737, @Tauren, 40, 50), -- tauren
(NULL, 7737, @Vulpera, 40, 50), -- vulpera
(NULL, 7737, @HordePandaren, 40, 50), -- Horde pandaren
--
-- Innkeeper Kaylisk, Splitertree, Ashenvale
(NULL, 12196, @Orc, 18, 30), -- orcs
(NULL, 12196, @Troll, 18, 30), -- trolls
(NULL, 12196, @ZandalariTroll, 18, 30), -- Zandalari trolls
(NULL, 12196, @BloodElf, 20, 30), -- blood elves
(NULL, 12196, @Goblin, 18, 30), -- goblins
(NULL, 12196, @MagharOrc, 18, 30), -- mag'har orcs
(NULL, 12196, @Ogre, 18, 30), -- ogres
--
-- Marukai, Zoram'gar, Ashenvale
(NULL, 12719, @Orc, 18, 30), -- orcs
(NULL, 12719, @Troll, 18, 30), -- trolls
(NULL, 12719, @ZandalariTroll, 18, 30), -- Zandalari trolls
(NULL, 12719, @Goblin, 18, 30), -- goblins
(NULL, 12719, @MagharOrc, 18, 30), -- mag'har orcs
(NULL, 12719, @Ogre, 18, 30), -- ogres
--
-- Innkeeper Sikewa, Desolace
(NULL, 11106, @Orc, 30, 40), -- orcs
(NULL, 11106, @Tauren, 30, 40), -- tauren
(NULL, 11106, @Vulpera, 30, 40), -- vulpera
(NULL, 11106, @HordePandaren, 30, 40), -- Horde pandaren
(NULL, 11106, @Troll, 30, 40), -- trolls
(NULL, 11106, @ZandalariTroll, 30, 40), -- Zandalari trolls
(NULL, 11106, @Goblin, 30, 40), -- goblins
(NULL, 11106, @MagharOrc, 30, 40), -- mag'har orcs
(NULL, 11106, @Ogre, 30, 40), -- ogres
--
-- Innkeeper Adegwa, Arathi, Hammerfall
(NULL, 9501, @Orc, 30, 40), -- orcs
(NULL, 9501, @Undead, 30, 40), -- undead
(NULL, 9501, @Tauren, 30, 40), -- tauren
(NULL, 9501, @Vulpera, 30, 40), -- vulpera
(NULL, 9501, @HordePandaren, 30, 40), -- Horde pandaren
(NULL, 9501, @Troll, 30, 40), -- trolls
(NULL, 9501, @ZandalariTroll, 30, 40), -- Zandalari trolls
(NULL, 9501, @BloodElf, 30, 40), -- blood elves
(NULL, 9501, @Goblin, 30, 40), -- goblins
(NULL, 9501, @MagharOrc, 30, 40), -- mag'har orcs
(NULL, 9501, @Ogre, 30, 40), -- ogres
--
-- Innkeeper Lard, Revantusk Village , Hinterlands
(NULL, 14731, @Orc, 40, 50), -- orcs
(NULL, 14731, @Undead, 40, 50), -- undead
(NULL, 14731, @Tauren, 40, 50), -- tauren
(NULL, 14731, @Vulpera, 40, 50), -- vulpera
(NULL, 14731, @HordePandaren, 40, 50), -- Horde pandaren
(NULL, 14731, @Troll, 40, 50), -- trolls
(NULL, 14731, @ZandalariTroll, 40, 50), -- Zandalari trolls
(NULL, 14731, @BloodElf, 40, 50), -- blood elves
(NULL, 14731, @Goblin, 40, 50), -- goblins
(NULL, 14731, @MagharOrc, 40, 50), -- mag'har orcs
(NULL, 14731, @Ogre, 40, 50), -- ogres
--
-- Innkeeper Shul'kar, Kargath Outpost, Badlands
(NULL, 9356, @Orc, 35, 45), -- orcs
(NULL, 9356, @Undead, 35, 45), -- undead
(NULL, 9356, @Tauren, 35, 45), -- tauren
(NULL, 9356, @Vulpera, 35, 45), -- vulpera
(NULL, 9356, @HordePandaren, 35, 45), -- Horde pandaren
(NULL, 9356, @Troll, 35, 45), -- trolls
(NULL, 9356, @ZandalariTroll, 35, 45), -- Zandalari trolls
(NULL, 9356, @BloodElf, 35, 45), -- blood elves
(NULL, 9356, @Goblin, 35, 45), -- goblins
(NULL, 9356, @MagharOrc, 35, 45), -- mag'har orcs
(NULL, 9356, @Ogre, 35, 45), -- ogres
--
-- Innkeeper Karakul, Swamp of Sorrows
(NULL, 6930, @Orc, 35, 45), -- orcs
(NULL, 6930, @Undead, 35, 45), -- undead
(NULL, 6930, @Tauren, 35, 45), -- tauren
(NULL, 6930, @Vulpera, 35, 45), -- vulpera
(NULL, 6930, @HordePandaren, 35, 45), -- Horde pandaren
(NULL, 6930, @Troll, 35, 45), -- trolls
(NULL, 6930, @ZandalariTroll, 35, 45), -- Zandalari trolls
(NULL, 6930, @BloodElf, 35, 45), -- blood elves
(NULL, 6930, @Goblin, 35, 45), -- goblins
(NULL, 6930, @MagharOrc, 35, 45), -- mag'har orcs
(NULL, 6930, @Ogre, 35, 45), -- ogres
--
-- Innkeeper Thulbek, Grom Gol, Stranglethorn Vale
(NULL, 5814, @Orc, 30, 45), -- orcs
(NULL, 5814, @Undead, 30, 45), -- undead
(NULL, 5814, @Tauren, 30, 45), -- tauren
(NULL, 5814, @Vulpera, 30, 45), -- vulpera
(NULL, 5814, @HordePandaren, 30, 45), -- Horde pandaren
(NULL, 5814, @Troll, 30, 45), -- trolls
(NULL, 5814, @ZandalariTroll, 30, 45), -- Zandalari trolls
(NULL, 5814, @BloodElf, 30, 45), -- blood elves
(NULL, 5814, @Goblin, 30, 45), -- goblins
(NULL, 5814, @MagharOrc, 30, 45), -- mag'har orcs
(NULL, 5814, @Ogre, 30, 45), -- ogres
--
-- Overlord Mok'Morokk, Dustwallow Marsh
(NULL, 4500, @Orc, 35, 45), -- orcs
(NULL, 4500, @Tauren, 35, 45), -- tauren
(NULL, 4500, @Vulpera, 35, 45), -- vulpera
(NULL, 4500, @HordePandaren, 35, 45), -- Horde pandaren
(NULL, 4500, @Troll, 35, 45), -- trolls
(NULL, 4500, @ZandalariTroll, 35, 45), -- Zandalari trolls
(NULL, 4500, @Goblin, 35, 45), -- goblins
(NULL, 4500, @MagharOrc, 35, 45), -- mag'har orcs
(NULL, 4500, @Ogre, 35, 45), -- ogres
--
-- Jediga, Azshara horde camp
(NULL, 8587, @Orc, 45, 55), -- orcs
(NULL, 8587, @Troll, 45, 55), -- trolls
(NULL, 8587, @ZandalariTroll, 45, 55), -- Zandalari trolls
(NULL, 8587, @Tauren, 45, 55), -- tauren
(NULL, 8587, @Vulpera, 45, 55), -- vulpera
(NULL, 8587, @HordePandaren, 45, 55), -- Horde pandaren
(NULL, 8587, @BloodElf, 45, 55), -- blood elves
(NULL, 8587, @Goblin, 45, 55), -- goblins
(NULL, 8587, @MagharOrc, 45, 55), -- mag'har orcs
(NULL, 8587, @Ogre, 45, 55), -- ogres
--
-- Winna Hazzard, Felwood horde camp
(NULL, 9996, @Orc, 48, 55), -- orcs
(NULL, 9996, @Tauren, 48, 55), -- tauren
(NULL, 9996, @Vulpera, 48, 55), -- vulpera
(NULL, 9996, @HordePandaren, 48, 55), -- Horde pandaren
(NULL, 9996, @Troll, 48, 55), -- trolls
(NULL, 9996, @ZandalariTroll, 48, 55), -- Zandalari trolls
(NULL, 9996, @Undead, 48, 55), -- undead
(NULL, 9996, @BloodElf, 48, 55), -- blood elves
(NULL, 9996, @Goblin, 48, 55), -- goblins
(NULL, 9996, @MagharOrc, 48, 55), -- mag'har orcs
(NULL, 9996, @Ogre, 48, 55), -- ogres
--
-- Larion, Horde Q-giver, Un'Goro
(NULL, 9118, @Orc, 48, 55), -- orcs
(NULL, 9118, @Tauren, 48, 55), -- tauren
(NULL, 9118, @Vulpera, 48, 55), -- vulpera
(NULL, 9118, @HordePandaren, 48, 55), -- Horde pandaren
(NULL, 9118, @Troll, 48, 55), -- trolls
(NULL, 9118, @ZandalariTroll, 48, 55), -- Zandalari trolls
(NULL, 9118, @Undead, 48, 55), -- undead
(NULL, 9118, @BloodElf, 48, 55), -- blood elves
(NULL, 9118, @Goblin, 48, 55), -- goblins
(NULL, 9118, @MagharOrc, 48, 55), -- mag'har orcs
(NULL, 9118, @Ogre, 48, 55), -- ogres
--
-- Vahgruk, Horde Taxi, Burning Steppes
(NULL, 13177, @Orc, 50, 60), -- orcs
(NULL, 13177, @Undead, 50, 60), -- undead
(NULL, 13177, @Tauren, 50, 60), -- tauren
(NULL, 13177, @Vulpera, 50, 60), -- vulpera
(NULL, 13177, @HordePandaren, 50, 60), -- Horde pandaren
(NULL, 13177, @Troll, 50, 60), -- trolls
(NULL, 13177, @ZandalariTroll, 50, 60), -- Zandalari trolls
(NULL, 13177, @BloodElf, 50, 60), -- blood elves
(NULL, 13177, @Goblin, 50, 60), -- goblins
(NULL, 13177, @MagharOrc, 50, 60), -- mag'har orcs
(NULL, 13177, @Ogre, 50, 60), -- ogres
--
-- General Kirika, Horde camp, Silithus
(NULL, 17079, @Orc, 55, 60), -- orcs
(NULL, 17079, @Undead, 55, 60), -- undead
(NULL, 17079, @Tauren, 55, 60), -- tauren
(NULL, 17079, @Vulpera, 55, 60), -- vulpera
(NULL, 17079, @HordePandaren, 55, 60), -- Horde pandaren
(NULL, 17079, @Troll, 55, 60), -- trolls
(NULL, 17079, @ZandalariTroll, 55, 60), -- Zandalari trolls
(NULL, 17079, @BloodElf, 55, 60), -- blood elves
(NULL, 17079, @Goblin, 55, 60), -- goblins
(NULL, 17079, @MagharOrc, 55, 60), -- mag'har orcs
(NULL, 17079, @Ogre, 55, 60), -- ogres
--
--        OUTLAND
--
-- Lieutenant General Orion, Dark Portal
(NULL, 19253, @Orc, 58, 59), -- orcs
(NULL, 19253, @Undead, 58, 59), -- undead
(NULL, 19253, @Tauren, 58, 59), -- tauren
(NULL, 19253, @Vulpera, 58, 59), -- vulpera
(NULL, 19253, @HordePandaren, 58, 59), -- Horde pandaren
(NULL, 19253, @Troll, 58, 59), -- trolls
(NULL, 19253, @ZandalariTroll, 58, 59), -- Zandalari trolls
(NULL, 19253, @BloodElf, 58, 59), -- blood elves
(NULL, 19253, @Goblin, 58, 59), -- goblins
(NULL, 19253, @MagharOrc, 58, 59), -- mag'har orcs
(NULL, 19253, @Ogre, 58, 59), -- ogres
--
-- Floyd Pinkus, Thrallmar, Hellfire
(NULL, 16602, @Orc, 58, 63), -- orcs
(NULL, 16602, @Undead, 58, 63), -- undead
(NULL, 16602, @Tauren, 58, 63), -- tauren
(NULL, 16602, @Vulpera, 58, 63), -- vulpera
(NULL, 16602, @HordePandaren, 58, 63), -- Horde pandaren
(NULL, 16602, @Troll, 58, 63), -- trolls
(NULL, 16602, @ZandalariTroll, 58, 63), -- Zandalari trolls
(NULL, 16602, @BloodElf, 58, 63), -- blood elves
(NULL, 16602, @Goblin, 58, 63), -- goblins
(NULL, 16602, @MagharOrc, 58, 63), -- mag'har orcs
(NULL, 16602, @Ogre, 58, 63), -- ogres
--
-- Innkeeper Bazil, Falcon Watch, Hellfire
(NULL, 18905, @Orc, 60, 63), -- orcs
(NULL, 18905, @Undead, 60, 63), -- undead
(NULL, 18905, @Tauren, 60, 63), -- tauren
(NULL, 18905, @Vulpera, 60, 63), -- vulpera
(NULL, 18905, @HordePandaren, 60, 63), -- Horde pandaren
(NULL, 18905, @Troll, 60, 63), -- trolls
(NULL, 18905, @ZandalariTroll, 60, 63), -- Zandalari trolls
(NULL, 18905, @BloodElf, 60, 63), -- blood elves
(NULL, 18905, @Goblin, 60, 63), -- goblins
(NULL, 18905, @MagharOrc, 60, 63), -- mag'har orcs
(NULL, 18905, @Ogre, 60, 63), -- ogres
--
-- Innkeeper Merajit, Zabra'jin, Zangarmarsh
(NULL, 18245, @Orc, 60, 64), -- orcs
(NULL, 18245, @Undead, 60, 64), -- undead
(NULL, 18245, @Tauren, 60, 64), -- tauren
(NULL, 18245, @Vulpera, 60, 64), -- vulpera
(NULL, 18245, @HordePandaren, 60, 64), -- Horde pandaren
(NULL, 18245, @Troll, 60, 64), -- trolls
(NULL, 18245, @ZandalariTroll, 60, 64), -- Zandalari trolls
(NULL, 18245, @BloodElf, 60, 64), -- blood elves
(NULL, 18245, @Goblin, 60, 64), -- goblins
(NULL, 18245, @MagharOrc, 60, 64), -- mag'har orcs
(NULL, 18245, @Ogre, 60, 64), -- ogres
--
-- Innkeeper Grilka, Terrokar
(NULL, 18957, @Orc, 62, 65), -- orcs
(NULL, 18957, @Undead, 62, 65), -- undead
(NULL, 18957, @Tauren, 62, 65), -- tauren
(NULL, 18957, @Vulpera, 62, 65), -- vulpera
(NULL, 18957, @HordePandaren, 62, 65), -- Horde pandaren
(NULL, 18957, @Troll, 62, 65), -- trolls
(NULL, 18957, @ZandalariTroll, 62, 65), -- Zandalari trolls
(NULL, 18957, @BloodElf, 62, 65), -- blood elves
(NULL, 18957, @Goblin, 62, 65), -- goblins
(NULL, 18957, @MagharOrc, 62, 65), -- mag'har orcs
(NULL, 18957, @Ogre, 62, 65), -- ogres
--
-- Matron Tikkit, Garadar, Nagrand
(NULL, 18913, @Orc, 62, 65), -- orcs
(NULL, 18913, @Undead, 62, 65), -- undead
(NULL, 18913, @Tauren, 62, 65), -- tauren
(NULL, 18913, @Vulpera, 62, 65), -- vulpera
(NULL, 18913, @HordePandaren, 62, 65), -- Horde pandaren
(NULL, 18913, @Troll, 62, 65), -- trolls
(NULL, 18913, @ZandalariTroll, 62, 65), -- Zandalari trolls
(NULL, 18913, @BloodElf, 62, 65), -- blood elves
(NULL, 18913, @Goblin, 62, 65), -- goblins
(NULL, 18913, @MagharOrc, 62, 65), -- mag'har orcs
(NULL, 18913, @Ogre, 62, 65), -- ogres
--
-- Innkeeper Matron Varah, Mok'Nathal, Blade's Edge
(NULL, 21088, @Orc, 65, 68), -- orcs
(NULL, 21088, @Undead, 65, 68), -- undead
(NULL, 21088, @Tauren, 65, 68), -- tauren
(NULL, 21088, @Vulpera, 65, 68), -- vulpera
(NULL, 21088, @HordePandaren, 65, 68), -- Horde pandaren
(NULL, 21088, @Troll, 65, 68), -- trolls
(NULL, 21088, @ZandalariTroll, 65, 68), -- Zandalari trolls
(NULL, 21088, @BloodElf, 65, 68), -- blood elves
(NULL, 21088, @Goblin, 65, 68), -- goblins
(NULL, 21088, @MagharOrc, 65, 68), -- mag'har orcs
(NULL, 21088, @Ogre, 65, 68), -- ogres
--
-- Innkeeper Gholah, Thunderlord, Blade's Edge
(NULL, 19470, @Orc, 65, 68), -- orcs
(NULL, 19470, @Undead, 65, 68), -- undead
(NULL, 19470, @Tauren, 65, 68), -- tauren
(NULL, 19470, @Vulpera, 65, 68), -- vulpera
(NULL, 19470, @HordePandaren, 65, 68), -- Horde pandaren
(NULL, 19470, @Troll, 65, 68), -- trolls
(NULL, 19470, @ZandalariTroll, 65, 68), -- Zandalari trolls
(NULL, 19470, @BloodElf, 65, 68), -- blood elves
(NULL, 19470, @Goblin, 65, 68), -- goblins
(NULL, 19470, @MagharOrc, 65, 68), -- mag'har orcs
(NULL, 19470, @Ogre, 65, 68), -- ogres
--
-- Innkeeper Darg Bloodclaw, Shadowmoon Village
(NULL, 19319, @Orc, 67, 70), -- orcs
(NULL, 19319, @Undead, 67, 70), -- undead
(NULL, 19319, @Tauren, 67, 70), -- tauren
(NULL, 19319, @Vulpera, 67, 70), -- vulpera
(NULL, 19319, @HordePandaren, 67, 70), -- Horde pandaren
(NULL, 19319, @Troll, 67, 70), -- trolls
(NULL, 19319, @ZandalariTroll, 67, 70), -- Zandalari trolls
(NULL, 19319, @BloodElf, 67, 70), -- blood elves
(NULL, 19319, @Goblin, 67, 70), -- goblins
(NULL, 19319, @MagharOrc, 67, 70), -- mag'har orcs
(NULL, 19319, @Ogre, 67, 70), -- ogres
--
--        NORTHREND
--
-- Uda the Beast, Dalaran
(NULL, 31557, @Orc, 72, 80), -- orcs
(NULL, 31557, @Undead, 72, 80), -- undead
(NULL, 31557, @Tauren, 72, 80), -- tauren
(NULL, 31557, @Vulpera, 72, 80), -- vulpera
(NULL, 31557, @HordePandaren, 72, 80), -- Horde pandaren
(NULL, 31557, @Troll, 72, 80), -- trolls
(NULL, 31557, @ZandalariTroll, 72, 80), -- Zandalari trolls
(NULL, 31557, @BloodElf, 72, 80), -- blood elves
(NULL, 31557, @Goblin, 72, 80), -- goblins
(NULL, 31557, @MagharOrc, 72, 80), -- mag'har orcs
(NULL, 31557, @Ogre, 72, 80), -- ogres
--
-- Williamson, Warsong Hold, Borean Tundra
(NULL, 25278, @Orc, 68, 72), -- orcs
(NULL, 25278, @Undead, 68, 72), -- undead
(NULL, 25278, @Tauren, 68, 72), -- tauren
(NULL, 25278, @Vulpera, 68, 72), -- vulpera
(NULL, 25278, @HordePandaren, 68, 72), -- Horde pandaren
(NULL, 25278, @Troll, 68, 72), -- trolls
(NULL, 25278, @ZandalariTroll, 68, 72), -- Zandalari trolls
(NULL, 25278, @BloodElf, 68, 72), -- blood elves
(NULL, 25278, @Goblin, 68, 72), -- goblins
(NULL, 25278, @MagharOrc, 68, 72), -- mag'har orcs
(NULL, 25278, @Ogre, 68, 72), -- ogres
--
-- Pahu Frosthoof, Taunka'le Village, Borean Tundra
(NULL, 26709, @Orc, 69, 72), -- orcs
(NULL, 26709, @Undead, 69, 72), -- undead
(NULL, 26709, @Tauren, 69, 72), -- tauren
(NULL, 26709, @Vulpera, 69, 72), -- vulpera
(NULL, 26709, @HordePandaren, 69, 72), -- Horde pandaren
(NULL, 26709, @Troll, 69, 72), -- trolls
(NULL, 26709, @ZandalariTroll, 69, 72), -- Zandalari trolls
(NULL, 26709, @BloodElf, 69, 72), -- blood elves
(NULL, 26709, @Goblin, 69, 72), -- goblins
(NULL, 26709, @MagharOrc, 69, 72), -- mag'har orcs
(NULL, 26709, @Ogre, 69, 72), -- ogres
--
-- Matron Magah, Bor'Gorok Outpost, Borean Tundra
(NULL, 26709, @Orc, 70, 72), -- orcs
(NULL, 26709, @Undead, 70, 72), -- undead
(NULL, 26709, @Tauren, 70, 72), -- tauren
(NULL, 26709, @Vulpera, 70, 72), -- vulpera
(NULL, 26709, @HordePandaren, 70, 72), -- Horde pandaren
(NULL, 26709, @Troll, 70, 72), -- trolls
(NULL, 26709, @ZandalariTroll, 70, 72), -- Zandalari trolls
(NULL, 26709, @BloodElf, 70, 72), -- blood elves
(NULL, 26709, @Goblin, 70, 72), -- goblins
(NULL, 26709, @MagharOrc, 70, 72), -- mag'har orcs
(NULL, 26709, @Ogre, 70, 72), -- ogres
--
-- Basil Osgood, New Agamand, Howling Fjord
(NULL, 24149, @Orc, 68, 72), -- orcs
(NULL, 24149, @Undead, 68, 72), -- undead
(NULL, 24149, @Tauren, 68, 72), -- tauren
(NULL, 24149, @Vulpera, 68, 72), -- vulpera
(NULL, 24149, @HordePandaren, 68, 72), -- Horde pandaren
(NULL, 24149, @Troll, 68, 72), -- trolls
(NULL, 24149, @ZandalariTroll, 68, 72), -- Zandalari trolls
(NULL, 24149, @BloodElf, 68, 72), -- blood elves
(NULL, 24149, @Goblin, 68, 72), -- goblins
(NULL, 24149, @MagharOrc, 68, 72), -- mag'har orcs
(NULL, 24149, @Ogre, 68, 72), -- ogres
--
-- Timothy Holland, Vengeance Landing, Howling Fjord
(NULL, 24342, @Orc, 69, 72), -- orcs
(NULL, 24342, @Undead, 69, 72), -- undead
(NULL, 24342, @Tauren, 69, 72), -- tauren
(NULL, 24342, @Vulpera, 69, 72), -- vulpera
(NULL, 24342, @HordePandaren, 69, 72), -- Horde pandaren
(NULL, 24342, @Troll, 69, 72), -- trolls
(NULL, 24342, @ZandalariTroll, 69, 72), -- Zandalari trolls
(NULL, 24342, @BloodElf, 69, 72), -- blood elves
(NULL, 24342, @Goblin, 69, 72), -- goblins
(NULL, 24342, @MagharOrc, 69, 72), -- mag'har orcs
(NULL, 24342, @Ogre, 69, 72), -- ogres
--
-- Bori Wintertotem, Camp Winterhoof, Howling Fjord
(NULL, 24033, @Orc, 70, 72), -- orcs
(NULL, 24033, @Undead, 70, 72), -- undead
(NULL, 24033, @Tauren, 70, 72), -- tauren
(NULL, 24033, @Vulpera, 70, 72), -- vulpera
(NULL, 24033, @HordePandaren, 70, 72), -- Horde pandaren
(NULL, 24033, @Troll, 70, 72), -- trolls
(NULL, 24033, @ZandalariTroll, 70, 72), -- Zandalari trolls
(NULL, 24033, @BloodElf, 70, 72), -- blood elves
(NULL, 24033, @Goblin, 70, 72), -- goblins
(NULL, 24033, @MagharOrc, 70, 72), -- mag'har orcs
(NULL, 24033, @Ogre, 70, 72), -- ogres
--
-- Barracks Master Rhekku, Conquest Hold, Grizzly Hills
(NULL, 27125, @Orc, 70, 74), -- orcs
(NULL, 27125, @Undead, 70, 74), -- undead
(NULL, 27125, @Tauren, 70, 74), -- tauren
(NULL, 27125, @Vulpera, 70, 74), -- vulpera
(NULL, 27125, @HordePandaren, 70, 74), -- Horde pandaren
(NULL, 27125, @Troll, 70, 74), -- trolls
(NULL, 27125, @ZandalariTroll, 70, 74), -- Zandalari trolls
(NULL, 27125, @BloodElf, 70, 74), -- blood elves
(NULL, 27125, @Goblin, 70, 74), -- goblins
(NULL, 27125, @MagharOrc, 70, 74), -- mag'har orcs
(NULL, 27125, @Ogre, 70, 74), -- ogres
--
-- Aiyan Coldwind, Capm Onequah, Grizzly Hills
(NULL, 26680, @Orc, 70, 74), -- orcs
(NULL, 26680, @Undead, 70, 74), -- undead
(NULL, 26680, @Tauren, 70, 74), -- tauren
(NULL, 26680, @Vulpera, 70, 74), -- vulpera
(NULL, 26680, @HordePandaren, 70, 74), -- Horde pandaren
(NULL, 26680, @Troll, 70, 74), -- trolls
(NULL, 26680, @ZandalariTroll, 70, 74), -- Zandalari trolls
(NULL, 26680, @BloodElf, 70, 74), -- blood elves
(NULL, 26680, @Goblin, 70, 74), -- goblins
(NULL, 26680, @MagharOrc, 70, 74), -- mag'har orcs
(NULL, 26680, @Ogre, 70, 74), -- ogres
--
-- Mrs. Winterby, Venomspite, Dragonblight
(NULL, 27027, @Orc, 71, 75), -- orcs
(NULL, 27027, @Undead, 71, 75), -- undead
(NULL, 27027, @Tauren, 71, 75), -- tauren
(NULL, 27027, @Vulpera, 71, 75), -- vulpera
(NULL, 27027, @HordePandaren, 71, 75), -- Horde pandaren
(NULL, 27027, @Troll, 71, 75), -- trolls
(NULL, 27027, @ZandalariTroll, 71, 75), -- Zandalari trolls
(NULL, 27027, @BloodElf, 71, 75), -- blood elves
(NULL, 27027, @Goblin, 71, 75), -- goblins
(NULL, 27027, @MagharOrc, 71, 75), -- mag'har orcs
(NULL, 27027, @Ogre, 71, 75), -- ogres
--
-- Barracks Master Harga, Agmar's Hammer, Dragonblight
(NULL, 26985, @Orc, 71, 75), -- orcs
(NULL, 26985, @Undead, 71, 75), -- undead
(NULL, 26985, @Tauren, 71, 75), -- tauren
(NULL, 26985, @Vulpera, 71, 75), -- vulpera
(NULL, 26985, @HordePandaren, 71, 75), -- Horde pandaren
(NULL, 26985, @Troll, 71, 75), -- trolls
(NULL, 26985, @ZandalariTroll, 71, 75), -- Zandalari trolls
(NULL, 26985, @BloodElf, 71, 75), -- blood elves
(NULL, 26985, @Goblin, 71, 75), -- goblins
(NULL, 26985, @MagharOrc, 71, 75), -- mag'har orcs
(NULL, 26985, @Ogre, 71, 75), -- ogres
--
-- Wabada Whiteflower, Camp Tunka'lo, Storm Peaks
(NULL, 29971, @Orc, 77, 80), -- orcs
(NULL, 29971, @Undead, 77, 80), -- undead
(NULL, 29971, @Tauren, 77, 80), -- tauren
(NULL, 29971, @Vulpera, 77, 80), -- vulpera
(NULL, 29971, @HordePandaren, 77, 80), -- Horde pandaren
(NULL, 29971, @Troll, 77, 80), -- trolls
(NULL, 29971, @ZandalariTroll, 77, 80), -- Zandalari trolls
(NULL, 29971, @BloodElf, 77, 80), -- blood elves
(NULL, 29971, @Goblin, 77, 80), -- goblins
(NULL, 29971, @MagharOrc, 77, 80), -- mag'har orcs
(NULL, 29971, @Ogre, 77, 80), -- ogres
--
-- Jarin Dawnglow, Argent Tournament, Icecrown
(NULL, 33971, @Orc, 80, 80), -- orcs
(NULL, 33971, @Undead, 80, 80), -- undead
(NULL, 33971, @Tauren, 80, 80), -- tauren
(NULL, 33971, @Vulpera, 80, 80), -- vulpera
(NULL, 33971, @HordePandaren, 80, 80), -- Horde pandaren
(NULL, 33971, @Troll, 80, 80), -- trolls
(NULL, 33971, @ZandalariTroll, 80, 80), -- Zandalari trolls
(NULL, 33971, @BloodElf, 80, 80), -- blood elves
(NULL, 33971, @Goblin, 80, 80), -- goblins
(NULL, 33971, @MagharOrc, 80, 80), -- mag'har orcs
(NULL, 33971, @Ogre, 80, 80), -- ogres
--
--        NEUTRAL AREAS
--
-- Innkeeper Skindle, Booty Bay 6807 (Neutral)
(NULL, 6807, 0, 30, 45),
-- Innkeeper Wiley, Ratchet 6791 (Neutral)
(NULL, 6791, @Orc, 10, 25), -- orcs
(NULL, 6791, @Troll, 10, 25), -- trolls
(NULL, 6791, @ZandalariTroll, 10, 25), -- Zandalari trolls
(NULL, 6791, @Goblin, 10, 25), -- goblins
(NULL, 6791, @MagharOrc, 10, 25), -- mag'har orcs
(NULL, 6791, @Ogre, 10, 25), -- ogres
-- Innkeeper Fizzgrimble, Tanaris 7733 (Neutral)
(NULL, 7733, 0, 40, 50),
-- Master Smith Burninate, Searing Gorge
(NULL, 14624, 0, 45, 50),
-- Marin Noggenfogger 7564 (Neutral)
-- Innkeeper Vizzie, Everlook 11118 (Neutral)
(NULL, 11118, 0, 53, 60),
-- Calandrath, Silithus 15174 (Neutral)
(NULL, 15174, 0, 55, 60),
-- Jessica Chambers, East Plaguelands 16256 (Neutral)
(NULL, 16256, 0, 53, 60),
--
--           OUTLAND
--
-- Innkeeper Coryth Stoktron, Cenarion Refuge (Neutral)
(NULL, 18907, 0, 60, 64),
-- Minalei, Aldors, Shattrath
(NULL, 19046, 0, 65, 70),
-- Innkeeper Haelthol, Scryers, Shattrath
(NULL, 19232, 0, 65, 70),
-- Shaarubo, World End Tavern
(NULL, 19182, 0, 65, 70),
-- Innkeeper Aelerya, Blade's Edge (Neutral)
(NULL, 22922, 0, 65, 68),
-- Innkeeper Eyonix, Stormspire, Netherstorm
(NULL, 19531, 0, 67, 70),
-- Innkeeper Remi Dodoso, Area 52, Netherstorm
(NULL, 19571, 0, 67, 70),
-- Caregiver Inaara, Isle of Quel'Danas
(NULL, 25036, 0, 69, 70),
--
--           NORTHREND
--
-- Amisi Azuregaze, Dalaran Inn
(NULL, 28687, 0, 72, 80),
-- Afsaneh Asrar, Dalaran Underbelly
(NULL, 32411, 0, 77, 80),
-- Caregiver Poallu, Kaluak Camp, Borean Tundra
(NULL, 27187, 0, 68, 72),
-- Caregiver Iqniq, Kamagua, Howling Fjord
(NULL, 27187, 0, 68, 72),
-- Caregiver Mumik, Mo'Aki Harbor, Dragonblight
(NULL, 27174, 0, 71, 73),
-- Marissa Everwatch, The Argent Stand, Zul'Drak
(NULL, 28791, 0, 73, 75),
-- Pan'ya, Zim'Torga, Zul'Drak
(NULL, 29583, 0, 75, 77),
-- Purser Boulian, Nesingwary Base Camp, Sholazar Basin
(NULL, 29583, 0, 75, 79),
-- Smilin' Slirk Brassknob, K3, The Storm Peaks
(NULL, 29904, 0, 77, 80),
-- Magorn, Snow Drift Plains, The Storm Peaks
(NULL, 29963, 0, 77, 80),
-- Initiate Brenners, The Argent Stand, Zul'Drak
-- (NULL, 30308, 0, 77, 80),
--
--
--       UNUSED
--
--
-- Bashana Runetotem, Thunder Bluff (Tauren npc in TB)
-- (NULL, 9087, 6),
--
-- Alchemist Arbington, West Plaguelands, Human
-- (NULL, 11056, 1),
-- (NULL, 11056, 3),
-- (NULL, 11056, 4),
-- (NULL, 11056, 7),
--
-- Lokhtos Darkbargainer, Blackrock Depths, 12944
--
-- Gregan Brewspewer, Feralas, Dwarf (Some swarf Q-giver in Feralas)
-- (NULL, 7775, 3),
--
-- Augustus the Touched, East Plaguelands, Undead (Some undead vendor near stratholme)
-- (NULL, 12384, 5),
--
-- ENDING PLACEHOLDER
(NULL, 6807, 35, 90, 90)
;
