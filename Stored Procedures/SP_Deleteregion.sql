
------------------------------------
--	AUTHOR	: pram45
--	DATE	: 16 - 06 - 24
--  DESCRIPT: SP delete region
-----------------------------------

CREATE PROCEDURE DeleteRegion (
  @id INT
)
AS
BEGIN
  DELETE FROM tbl_regions
  WHERE id = @id;
END;