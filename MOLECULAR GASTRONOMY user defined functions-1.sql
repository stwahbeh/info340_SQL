--Sam, Victoria, Logan, Hannah
--MOLECULAR GASTRONOMY User defined functions



--Sam

CREATE FUNCTION	dbo.ufnCONVERTCELCIUS (@CompoundName varchar (50))
returns int

AS -- the temperature in farenheight
BEGIN

	DECLARE @ret int
	Select @ret = (c.CompoundBoilingPoint * 9/5) + 32
	FROM tblCOMPOUND c
	WHERE c.CompoundName = @CompoundName
	

return @ret;
END
GO





--Victoria

-- view find composites that contains ingredients from an input location
CREATE FUNCTION udfRegionalComposites(@locale varchar(50))
RETURNS TABLE
AS RETURN(
	SELECT CompositeName
	FROM tblComposite c
	JOIN tblCOMPOSITE_INGREDIENT ci
	ON c.CompositeID = ci.CompositeID
	JOIN tblINGREDIENT i
	ON ci.IngredientID = i.IngredientID
	JOIN tblGEOGRAPHY_INGREDIENT gi
	ON i.IngredientID = gi.IngredientID
	JOIN tblGEOGRAPHY g
	ON gi.GeographyID = g.GeographyID
	WHERE (g.GeographyName like '%'+ @locale + '%'))
GO



--Logan

--Returns the number of compounds the ingredients have in common.
CREATE FUNCTION fnGetCommonCompoundNumber(@IngredientNameOne int, @IngredientNameTwo int)
RETURNS INT
AS
	BEGIN
		DECLARE @ret DECIMAL;
		SELECT @ret = COUNT(CompoundID)
		FROM tblINGREDIENT i
			JOIN tblINGREDIENT_COMPOUND ic
				ON ic.IngredientID = i.IngredientID
		WHERE ic.IngredientName LIKE @IngredientNameOne 
			OR ic.IngredientName LIKE @IngredientNameTwo
		GROUP BY IngredientCompoundID
		RETURN @ret;
	END
GO





--Hannah