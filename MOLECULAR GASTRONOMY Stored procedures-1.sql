--Sam, Victoria, Logan, Hannah
--MOLECULAR GASTONOMY STORED PROCEDURES


USE MOLECULAR_GASTRONOMYS
--Sam

Create procedure usp_INSERT_INGREDIENT
	@IngredientName varchar (50),
	@IngredientDesc varchar (250)

AS

INSERT into tblINGREDIENT ([IngredientName],[IngredientDesc])
VALUES (@INGREDIENTNAME, @INGREDIENTDesc)
EXEC usp_INSERT_INGREDIENT 'Organic Heirloom Tomatoes', 'A deliciously sweet tomatoe' 
GO



--Victoria
GO

CREATE PROCEDURE uspNewCompound
@CompoundTypeID int,
@CompoundName varchar(50),
@BoilingPoint int,
@FreezingPoint int
AS

INSERT INTO tblCOMPOUND (CompoundTypeId, CompoundName, CompoundBoilingPoint, CompoundFreezingPoint)
VALUES(@CompoundTypeId, @CompoundName, @BoilingPoint, @FreezingPoint)
GO




--Logan

--Insert a new compound using names.
GO

CREATE PROCEDURE uspInsert_Compound
	@CompoundName VARCHAR(75),
	@CompoundTypeName VARCHAR(25),
	@FlavorName VARCHAR(25),
	@SensationName VARCHAR(25),
	@CompoundBoilingPoint DECIMAL,
	@CompoundFreezingPoint DECIMAL
AS
	DECLARE @CompoundTypeID INT;
	SELECT @CompoundTypeID = CompoundTypeID FROM tblCOMPOUND_TYPE WHERE CompoundTypeName = @CompoundTypeName;
	DECLARE @FlavorID INT;
	SELECT @FlavorID = FlavorID FROM tblFLAVOR WHERE FlavorName = @FlavorName;
	DECLARE @SenesationID INT;
	SELECT @SenesationID = SensationID FROM tblSENSATION WHERE SensationName = @SensationName;

	INSERT INTO tblCOMPOUND(CompoundName, CompoundTypeID, CompoundFlavorID,
				CompoundSensationID, CompoundBoilingPoint, CompoundFreezingPoint)

	VALUES(@CompoundName,@CompoundTypeID, @FlavorID, @SenesationID, @CompoundBoilingPoint, @CompoundFreezingPoint)
GO



--Hannah