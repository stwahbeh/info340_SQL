--Sam, Victoria, Logan, Hannah
--MOLECULAR GASTRONOMY View

USE MOLECULAR_GASTRONOMYS

--Sam
CREATE VIEW vwLocalVegetables
AS
SELECT it.IngredientTypeName, g.GeographyName
FROM tblINGREDIENT_TYPE it 
	Join tblINGREDIENT i
		ON it.IngredientTypeID = i.IngredientTypeID
	join tblGEOGRAPHY_Ingredient ig
		ON i.IngredientID = ig.IngredientID
	join tblGEOGRAPHY g
		ON g.GeographyID = ig.GeographyID 
Where (it.IngredientTypeName like 'Vegetable') AND (g.GeographyName = '%Licton Springs%')
GO

--Victoria

-- view to find all ingredients of a popular compound


CREATE VIEW vwIngredientsOfCompound
AS
	SELECT i.IngredientName
	FROM tblCOMPOUND c 
	JOIN tblCOMPOUND_PERCENTAGE cp
	ON c.CompoundID = cp.CompoundID 
	JOIN tblINGREDIENT i 
	ON cp.IngredientID = i.IngredientID
	WHERE CompoundName like '%Pizza%'
GO




--Logan

--Returns the top 50 most common compounds

CREATE VIEW vwCommonCompounds
AS	
	SELECT TOP 50 c.CompoundName, COUNT(CompoundPercentageID) as ct
	FROM tblINGREDIENT i
		JOIN tblCOMPOUND_PERCENTAGE ic
			ON i.IngredientId = ic.IngredientId
		JOIN tblCOMPOUND c
			ON c.CompoundID = ic.CompoundID
	GROUP BY ic.CompoundPercentageId, c.CompoundName
	ORDER BY ct DESC
GO




--Hannah

