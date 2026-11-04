-- Alpha Worgen models: new model IDs, so NPCs on the Worgen models keep them
SET @AlphaWorgenMaleModel           = @NextModelID := @NextModelID +1;
SET @AlphaWorgenFemaleModel         = @NextModelID := @NextModelID +1;
SET @AlphaWorgenMaleModelPath       = 'Character\\AlphaWorgen\\Male\\AlphaWorgenMale.mdx';
SET @AlphaWorgenFemaleModelPath     = 'Character\\AlphaWorgen\\Female\\AlphaWorgenFemale.mdx';
