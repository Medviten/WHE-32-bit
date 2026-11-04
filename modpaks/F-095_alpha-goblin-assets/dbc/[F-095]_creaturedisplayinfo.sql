-- creaturedisplayinfo: 0 inserts, 2 updates, 0 deletes

-- Changed values
UPDATE `creaturedisplayinfo` SET `model_id` = @AlphaGoblinMaleModel   WHERE `id` = @GoblinMaleDisplay;
UPDATE `creaturedisplayinfo` SET `model_id` = @AlphaGoblinFemaleModel WHERE `id` = @GoblinFemaleDisplay;
