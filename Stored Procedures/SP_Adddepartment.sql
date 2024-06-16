------------------------------------
--	AUTHOR	: pram45
--	DATE	: 16 - 06 - 24
--  DESCRIPT: SP add department
-----------------------------------

CREATE PROCEDURE AddDepartment (@name varchar(30), @location int)
AS
BEGIN
  DECLARE @errorMessage nvarchar(500);

  BEGIN TRY
    INSERT INTO tbl_departments (name, location)
    VALUES (@name, @location);
  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error adding department: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC AddDepartment advertising, 16