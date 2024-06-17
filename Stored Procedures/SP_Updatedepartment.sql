------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update department
-----------------------------------

CREATE PROCEDURE Updatedepartment (
  @id INT,
  @name VARCHAR(30),
  @location INT
)
AS
BEGIN
  DECLARE @rowsAffected INT;
  DECLARE @errorMessage NVARCHAR(500);

  BEGIN TRY
    SELECT @rowsAffected = COUNT(*) FROM tbl_departments WHERE id = @id;

    IF @rowsAffected = 0
    BEGIN
      SET @errorMessage = 'Data dengan ID ' + CAST(@id AS VARCHAR (10)) + ' tidak di temukan.';
      RAISERROR (@errorMessage, 16, 1);
    END;

    -- Check if new locatin exists
    IF EXISTS (SELECT 1 FROM tbl_departments WHERE [name] = @name)
    BEGIN
      SET @errorMessage = 'Data dengan ID ' + CAST(@name AS VARCHAR(30)) + ' Sudah ada.';
      RAISERROR (@errorMessage, 16, 1);
    END;

       -- Update department
    UPDATE tbl_departments
    SET name = @name,
	location = @location
	WHERE id = @id;

  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error updating department: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC Updatedepartment 18, PO, 37