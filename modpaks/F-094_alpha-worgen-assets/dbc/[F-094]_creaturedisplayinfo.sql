-- creaturedisplayinfo: 0 inserts, 2 updates, 0 deletes

-- Changed values
UPDATE `creaturedisplayinfo` SET `model_id` = @AlphaWorgenMaleModel   WHERE `id` = @WorgenMaleDisplay;
UPDATE `creaturedisplayinfo` SET `model_id` = @AlphaWorgenFemaleModel WHERE `id` = @WorgenFemaleDisplay;
