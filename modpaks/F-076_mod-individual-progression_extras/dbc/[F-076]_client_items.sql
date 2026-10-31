-- Four items IP's patch-S/patch-V Item.dbc adds: recipes (class 9) with a book icon (display 1134). Neither IP's SQL
-- nor AzerothCore has item templates for them, so they do nothing on their own; kept so the DBCs have all of IP's rows.
DELETE FROM `item` WHERE `id` BETWEEN 101784 AND 101787;
INSERT INTO `item` (`id`, `class`, `subclass`, `sound_override_subclass`, `material`, `display_id`, `inventory_type`, `sheath`) VALUES
    (101784, 9, 0, -1, -1, 1134, 0, 0),
    (101785, 9, 0, -1, -1, 1134, 0, 0),
    (101786, 9, 0, -1, -1, 1134, 0, 0),
    (101787, 9, 0, -1, -1, 1134, 0, 0);
