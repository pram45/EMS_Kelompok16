
------------------------------------
--	AUTHOR	: pram45
--	DATE	: 16 - 06 - 24
--  DESCRIPT: SP delete country
-----------------------------------

CREATE PROCEDURE DeleteCountry (
  @id INT
)
AS
BEGIN
  DELETE FROM tbl_regions
  WHERE id = @id;
END;

EXEC DeleteCountry 
	@id = 16