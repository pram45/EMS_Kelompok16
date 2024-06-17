
------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update region
-----------------------------------

CREATE PROCEDURE Updateregion (
  @id INT,
  @new_name VARCHAR(25)
)
AS
BEGIN
  UPDATE tbl_regions
  SET name = @new_name
  WHERE id = @id;
END;

EXEC Updateregion 7 , 'SOUTHEAST ASIA'