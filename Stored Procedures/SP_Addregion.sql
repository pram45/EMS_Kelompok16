CREATE PROCEDURE AddRegion (
  @name VARCHAR(25)
)
AS
BEGIN
  INSERT INTO tbl_regions (name)
  VALUES (@name);
END;

EXEC AddRegion @name = 'SEA'