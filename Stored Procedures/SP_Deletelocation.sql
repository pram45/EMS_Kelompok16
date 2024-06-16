------------------------------------
--	AUTHOR	: pram45
--	DATE	: 16 - 06 - 24
--  DESCRIPT: SP delete location
-----------------------------------
CREATE PROCEDURE DeleteLocation (@id INT)
AS
BEGIN
  DECLARE @errorMessage nvarchar(500);
  DECLARE @rowsAffected int;

  BEGIN TRY
    DELETE FROM tbl_locations
	WHERE id = @id;

    SET @rowsAffected = @@ROWCOUNT;

    IF @rowsAffected = 0
      BEGIN
        RAISERROR ('Location with ID %s not found.', 10, 1, @id);
      END;
  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error deleting Location: %s', 16, 1, @errorMessage);
  END CATCH;
END;

-- USE DELETE DATA JOB
EXEC DeleteLocation
    @id = 37;


