/* Call Pet, Revive Pet, Dismiss Pet and Feed Pet from level 1, for the pet hunters now start with */
UPDATE `spell` SET `base_level` = 1, `spell_level` = 1 WHERE `id` IN (883, 982, 2641, 6991);
