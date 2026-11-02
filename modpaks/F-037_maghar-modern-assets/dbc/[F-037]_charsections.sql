-- charsections: modern Mag'har skin, face and underwear textures (replaces F-007's WotLK-era rows)
-- Textures in the stock atlas layout, made by tools/models/maghar_modern_prep.py (faces split into lower and upper).

DELETE FROM `charsections` WHERE `race` = @MagharOrc AND `base_section` IN (@Skin, @Face, @Underwear);
SET @CharSectionsID = (SELECT COALESCE(MAX(id), 0) FROM `charsections`);
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`) VALUES
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_04.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_05.blp', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_06.blp', '', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_07.blp', '', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_08.blp', '', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_09.blp', '', '', 17, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Skin,      'Character\\magharorc\\male\\orcmaleclanskin00_10.blp', '', '', 17, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_00.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_00.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_01.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_01.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_02.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_02.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_03.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_03.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_04.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_04.blp', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_05.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_05.blp', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_06.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_06.blp', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_07.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_07.blp', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_08.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_08.blp', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_09.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_09.blp', '', 17, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Underwear, 'Character\\magharorc\\male\\orcmaleclannakedpelvisskin00_10.blp', 'Character\\magharorc\\male\\orcmaleclannakedtorsoskin00_10.blp', '', 17, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_00.blp', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_01.blp', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_02.blp', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_03.blp', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_04.blp', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_05.blp', '', 1, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_06.blp', '', 1, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_07.blp', '', 1, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_08.blp', '', 1, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_09.blp', '', 1, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower00_10.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper00_10.blp', '', 1, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_00.blp', '', 1, 1, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_01.blp', '', 1, 1, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_02.blp', '', 1, 1, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_03.blp', '', 1, 1, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_04.blp', '', 1, 1, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_05.blp', '', 1, 1, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_06.blp', '', 1, 1, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_07.blp', '', 1, 1, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_08.blp', '', 1, 1, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_09.blp', '', 1, 1, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower01_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper01_09.blp', '', 1, 1, 10), -- no male face 01 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_00.blp', '', 1, 2, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_01.blp', '', 1, 2, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_02.blp', '', 1, 2, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_03.blp', '', 1, 2, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_04.blp', '', 1, 2, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_05.blp', '', 1, 2, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_06.blp', '', 1, 2, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_07.blp', '', 1, 2, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_08.blp', '', 1, 2, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_09.blp', '', 1, 2, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower02_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper02_09.blp', '', 1, 2, 10), -- no male face 02 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_00.blp', '', 1, 3, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_01.blp', '', 1, 3, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_02.blp', '', 1, 3, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_03.blp', '', 1, 3, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_04.blp', '', 1, 3, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_05.blp', '', 1, 3, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_06.blp', '', 1, 3, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_07.blp', '', 1, 3, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_08.blp', '', 1, 3, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_09.blp', '', 1, 3, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower03_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper03_09.blp', '', 1, 3, 10), -- no male face 03 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_00.blp', '', 1, 4, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_01.blp', '', 1, 4, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_02.blp', '', 1, 4, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_03.blp', '', 1, 4, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_04.blp', '', 1, 4, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_05.blp', '', 1, 4, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_06.blp', '', 1, 4, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_07.blp', '', 1, 4, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_08.blp', '', 1, 4, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_09.blp', '', 1, 4, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower04_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper04_09.blp', '', 1, 4, 10), -- no male face 04 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_00.blp', '', 1, 5, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_01.blp', '', 1, 5, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_02.blp', '', 1, 5, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_03.blp', '', 1, 5, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_04.blp', '', 1, 5, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_05.blp', '', 1, 5, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_06.blp', '', 1, 5, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_07.blp', '', 1, 5, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_08.blp', '', 1, 5, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_09.blp', '', 1, 5, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower05_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper05_09.blp', '', 1, 5, 10), -- no male face 05 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_00.blp', '', 1, 6, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_01.blp', '', 1, 6, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_02.blp', '', 1, 6, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_03.blp', '', 1, 6, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_04.blp', '', 1, 6, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_05.blp', '', 1, 6, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_06.blp', '', 1, 6, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_07.blp', '', 1, 6, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_08.blp', '', 1, 6, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_09.blp', '', 1, 6, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower06_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper06_09.blp', '', 1, 6, 10), -- no male face 06 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_00.blp', '', 1, 7, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_01.blp', '', 1, 7, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_02.blp', '', 1, 7, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_03.blp', '', 1, 7, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_04.blp', '', 1, 7, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_05.blp', '', 1, 7, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_06.blp', '', 1, 7, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_07.blp', '', 1, 7, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_08.blp', '', 1, 7, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_09.blp', '', 1, 7, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower07_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper07_09.blp', '', 1, 7, 10), -- no male face 07 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_00.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_00.blp', '', 1, 8, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_01.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_01.blp', '', 1, 8, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_02.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_02.blp', '', 1, 8, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_03.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_03.blp', '', 1, 8, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_04.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_04.blp', '', 1, 8, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_05.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_05.blp', '', 1, 8, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_06.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_06.blp', '', 1, 8, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_07.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_07.blp', '', 1, 8, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_08.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_08.blp', '', 1, 8, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_09.blp', '', 1, 8, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Male, @Face,      'Character\\magharorc\\male\\orcmaleclanfacelower08_09.blp', 'Character\\magharorc\\male\\orcmaleclanfaceupper08_09.blp', '', 1, 8, 10), -- no male face 08 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_00.blp', '', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_01.blp', '', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_02.blp', '', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_03.blp', '', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_04.blp', '', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_05.blp', '', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_06.blp', '', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_07.blp', '', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_08.blp', '', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_09.blp', '', '', 17, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Skin,      'Character\\magharorc\\female\\orcfemaleclanskin00_10.blp', '', '', 17, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_00.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_00.blp', '', 17, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_01.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_01.blp', '', 17, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_02.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_02.blp', '', 17, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_03.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_03.blp', '', 17, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_04.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_04.blp', '', 17, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_05.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_05.blp', '', 17, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_06.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_06.blp', '', 17, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_07.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_07.blp', '', 17, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_08.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_08.blp', '', 17, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_09.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_09.blp', '', 17, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Underwear, 'Character\\magharorc\\female\\orcfemaleclannakedpelvisskin00_10.blp', 'Character\\magharorc\\female\\orcfemaleclannakedtorsoskin00_10.blp', '', 17, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_00.blp', '', 1, 0, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_01.blp', '', 1, 0, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_02.blp', '', 1, 0, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_03.blp', '', 1, 0, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_04.blp', '', 1, 0, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_05.blp', '', 1, 0, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_06.blp', '', 1, 0, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_07.blp', '', 1, 0, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_08.blp', '', 1, 0, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_09.blp', '', 1, 0, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower00_10.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper00_10.blp', '', 1, 0, 10),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_00.blp', '', 1, 1, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_01.blp', '', 1, 1, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_02.blp', '', 1, 1, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_03.blp', '', 1, 1, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_04.blp', '', 1, 1, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_05.blp', '', 1, 1, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_06.blp', '', 1, 1, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_06.blp', '', 1, 1, 7), -- no female face 01 colour 07, uses 06
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_08.blp', '', 1, 1, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_09.blp', '', 1, 1, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower01_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper01_09.blp', '', 1, 1, 10), -- no female face 01 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_00.blp', '', 1, 2, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_01.blp', '', 1, 2, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_02.blp', '', 1, 2, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_03.blp', '', 1, 2, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_04.blp', '', 1, 2, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_05.blp', '', 1, 2, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_06.blp', '', 1, 2, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_07.blp', '', 1, 2, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_08.blp', '', 1, 2, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_09.blp', '', 1, 2, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower02_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper02_09.blp', '', 1, 2, 10), -- no female face 02 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_00.blp', '', 1, 3, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_01.blp', '', 1, 3, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_02.blp', '', 1, 3, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_03.blp', '', 1, 3, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_04.blp', '', 1, 3, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_05.blp', '', 1, 3, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_06.blp', '', 1, 3, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_07.blp', '', 1, 3, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_08.blp', '', 1, 3, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_09.blp', '', 1, 3, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower03_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper03_09.blp', '', 1, 3, 10), -- no female face 03 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_00.blp', '', 1, 4, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_01.blp', '', 1, 4, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_02.blp', '', 1, 4, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_03.blp', '', 1, 4, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_04.blp', '', 1, 4, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_05.blp', '', 1, 4, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_06.blp', '', 1, 4, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_07.blp', '', 1, 4, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_08.blp', '', 1, 4, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_09.blp', '', 1, 4, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower04_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper04_09.blp', '', 1, 4, 10), -- no female face 04 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_00.blp', '', 1, 5, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_01.blp', '', 1, 5, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_02.blp', '', 1, 5, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_03.blp', '', 1, 5, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_04.blp', '', 1, 5, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_05.blp', '', 1, 5, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_06.blp', '', 1, 5, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_07.blp', '', 1, 5, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_08.blp', '', 1, 5, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_09.blp', '', 1, 5, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower05_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper05_09.blp', '', 1, 5, 10), -- no female face 05 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_00.blp', '', 1, 6, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_01.blp', '', 1, 6, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_02.blp', '', 1, 6, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_03.blp', '', 1, 6, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_04.blp', '', 1, 6, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_05.blp', '', 1, 6, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_06.blp', '', 1, 6, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_07.blp', '', 1, 6, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_08.blp', '', 1, 6, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_09.blp', '', 1, 6, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower06_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper06_09.blp', '', 1, 6, 10), -- no female face 06 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_00.blp', '', 1, 7, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_01.blp', '', 1, 7, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_02.blp', '', 1, 7, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_03.blp', '', 1, 7, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_04.blp', '', 1, 7, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_05.blp', '', 1, 7, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_06.blp', '', 1, 7, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_07.blp', '', 1, 7, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_08.blp', '', 1, 7, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_09.blp', '', 1, 7, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower07_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper07_09.blp', '', 1, 7, 10), -- no female face 07 colour 10, uses 09
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_00.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_00.blp', '', 1, 8, 0),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_01.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_01.blp', '', 1, 8, 1),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_02.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_02.blp', '', 1, 8, 2),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_03.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_03.blp', '', 1, 8, 3),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_04.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_04.blp', '', 1, 8, 4),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_05.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_05.blp', '', 1, 8, 5),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_06.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_06.blp', '', 1, 8, 6),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_07.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_07.blp', '', 1, 8, 7),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_08.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_08.blp', '', 1, 8, 8),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_09.blp', '', 1, 8, 9),
(@CharSectionsID := @CharSectionsID +1, @MagharOrc, @Female, @Face,      'Character\\magharorc\\female\\orcfemaleclanfacelower08_09.blp', 'Character\\magharorc\\female\\orcfemaleclanfaceupper08_09.blp', '', 1, 8, 10); -- no female face 08 colour 10, uses 09

-- Colour 10 is near-black in the source textures and only face 0 has a matching face: not a usable skin. Males lose it;
-- females get the source's otherwise unused skin 00_100 instead, with colour 5's faces and underwear (closest head tone).
DELETE FROM `charsections` WHERE `race` = @MagharOrc AND `base_section` IN (@Skin, @Face, @Underwear) AND `color_index` = 10 AND `gender` = @Male;
DELETE FROM `charsections` WHERE `race` = @MagharOrc AND `base_section` IN (@Face, @Underwear) AND `color_index` = 10 AND `gender` = @Female;
UPDATE `charsections` SET `texture_1` = 'Character\\magharorc\\female\\orcfemaleclanskin00_100.blp'
WHERE `race` = @MagharOrc AND `gender` = @Female AND `base_section` = @Skin AND `color_index` = 10;
INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`)
SELECT @CharSectionsID := @CharSectionsID +1, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, 10
FROM (
    SELECT * FROM `charsections`
    WHERE `race` = @MagharOrc AND `gender` = @Female AND `base_section` IN (@Face, @Underwear) AND `color_index` = 5
    ORDER BY `base_section`, `type`
) AS `colour5`;

-- Hair: colours 0-7 get the modern textures (one texture per colour, no scalp textures), colour 8 is new and copied
-- from colour 7's styles, and the death knight colours move from 8-10 to 9-11. Bald styles keep their empty rows.
UPDATE `charsections` SET `color_index` = `color_index` + 1
WHERE `race` = @MagharOrc AND `base_section` = @Hair AND `color_index` >= 8
ORDER BY `color_index` DESC;

UPDATE `charsections`
SET `texture_1` = CONCAT('Character\\magharorc\\orcclanhair00_', LPAD(`color_index`, 2, '0'), '.blp'), `texture_2` = '', `texture_3` = ''
WHERE `race` = @MagharOrc AND `base_section` = @Hair AND `color_index` <= 7 AND `texture_1` <> '';

INSERT INTO `charsections` (`id`, `race`, `gender`, `base_section`, `texture_1`, `texture_2`, `texture_3`, `flags`, `type`, `color_index`)
SELECT @CharSectionsID := @CharSectionsID +1, `race`, `gender`, `base_section`,
       IF(`texture_1` = '', '', 'Character\\magharorc\\orcclanhair00_08.blp'), '', '', `flags`, `type`, 8
FROM (
    SELECT * FROM `charsections`
    WHERE `race` = @MagharOrc AND `base_section` = @Hair AND `color_index` = 7
    ORDER BY `gender`, `type`
) AS `colour7`;

-- The stock scalp and beard textures are painted for the stock head, and the heads are in the stock rectangles but not
-- its shape: death knight hair colours keep their hair texture but no scalp, and no beards (those are geometry here)
UPDATE `charsections` SET `texture_2` = '', `texture_3` = ''
WHERE `race` = @MagharOrc AND `base_section` = @Hair AND `color_index` >= 9;
UPDATE `charsections` SET `texture_1` = '', `texture_2` = '', `texture_3` = ''
WHERE `race` = @MagharOrc AND `base_section` = @FacialHair;
