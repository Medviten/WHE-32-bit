-- namegen: the random names of @QuillboarKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Quillboar;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Quillboar, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @QuillboarKin ORDER BY `id`) AS `kin`;
