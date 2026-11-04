-- Alpha Goblin models: new model IDs, so NPCs on the Goblin models keep them
SET @AlphaGoblinMaleModel           = @NextModelID := @NextModelID +1;
SET @AlphaGoblinFemaleModel         = @NextModelID := @NextModelID +1;
SET @AlphaGoblinMaleModelPath       = 'Character\\AlphaGoblin\\Male\\AlphaGoblinMale.mdx';
SET @AlphaGoblinFemaleModelPath     = 'Character\\AlphaGoblin\\Female\\AlphaGoblinFemale.mdx';
