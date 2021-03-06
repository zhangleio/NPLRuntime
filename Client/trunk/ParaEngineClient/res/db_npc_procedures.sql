/** @author LiXizhi  */

/* Get NPC count */
SELECT     count(*) FROM         NPC

/* Get Name by ID */
SELECT     [Name] FROM         NPC WHERE     ([ID] = @ID)

/* Get ID by Name */
SELECT     [ID] FROM         NPC WHERE     ([Name] = @Name)

/* Select by ID */
SELECT     [Name], AssetName, IsGlobal, Facing, SnapToTerrain, Radius, Scaling, posX, posY, posZ, CharacterType, MentalState0, MentalState1, MentalState2, 
                      MentalState3, LifePoint, Age, Height, Weight, Occupation, RaceSex, Strength, Dexterity, Intelligence, BaseDefense, Defense, Defenseflat, 
                      DefenseMental, BaseAttack, AttackMelee, AttackRanged, AttackMental, MaxLifeLoad, HeroPoints, PerceptiveRadius, SentientRadius, GroupID, 
                      SentientField, OnLoadScript,CustomAppearance
FROM         NPC
WHERE     (ID = @ID)
  
/* update item */
UPDATE    NPC
SET     AssetName = @AssetName, IsGlobal = @IsGlobal, SnapToTerrain = @SnapToTerrain, Radius = @Radius, Facing = @Facing, Scaling = @Scaling, posX = @posX, posY = @posY, posZ = @posZ, CharacterType = @CharacterType, MentalState0 = @MentalState0, 
        MentalState1 = @MentalState1, MentalState2 = @MentalState2, MentalState3 = @MentalState3, LifePoint = @LifePoint, Age = @Age, Height = @Height, Weight = @Weight, Occupation = @Occupation, RaceSex = @RaceSex, Strength = @Strength, Dexterity = @Dexterity, Intelligence = @Intelligence, 
        BaseDefense = @BaseDefense, Defense = @Defense, Defenseflat = @Defenseflat, DefenseMental = @DefenseMental, BaseAttack = @BaseAttack, AttackMelee = @AttackMelee, AttackRanged = @AttackRanged, AttackMental = @AttackMental, MaxLifeLoad = @MaxLifeLoad, 
        HeroPoints = @HeroPoints, PerceptiveRadius = @PerceptiveRadius, SentientRadius = @SentientRadius, GroupID = @GroupID, SentientField = @SentientField, OnLoadScript = @OnLoadScript, CustomAppearance = @CustomAppearance
WHERE     ([ID] = @ID) OR ([Name] = @Name)
                      
/* insert new item */
INSERT INTO NPC
            ([ID], [Name], AssetName, IsGlobal, SnapToTerrain, Radius, Facing, Scaling, posX, posY, posZ, CharacterType, MentalState0, MentalState1, MentalState2, 
            MentalState3, LifePoint, Age, Height, Weight, Occupation, RaceSex, Strength, Dexterity, Intelligence, BaseDefense, Defense, Defenseflat, 
            DefenseMental, BaseAttack, AttackMelee, AttackRanged, AttackMental, MaxLifeLoad, HeroPoints, PerceptiveRadius, SentientRadius, GroupID, 
            SentientField, OnLoadScript, CustomAppearance)
     VALUES
           (NULL, @Name,
           @AssetName,
           @IsGlobal,
           @SnapToTerrain,
           @Radius,
           @Facing,
           @Scaling,
           @posX, 
           @posY, 
           @posZ, 
           @CharacterType, 
           @MentalState0, 
           @MentalState1, 
           @MentalState2, 
           @MentalState3, 
           @LifePoint, 
           @Age, 
           @Height, 
           @Weight, 
           @Occupation, 
           @RaceSex, 
           @Strength, 
           @Dexterity, 
           @Intelligence, 
           @BaseDefense, 
           @Defense, 
           @Defenseflat, 
           @DefenseMental, 
           @BaseAttack, 
           @AttackMelee, 
           @AttackRanged, 
           @AttackMental, 
           @MaxLifeLoad, 
           @HeroPoints, 
           @PerceptiveRadius, 
           @SentientRadius, 
           @GroupID, 
           @SentientField, 
           @OnLoadScript,
           @CustomAppearance)