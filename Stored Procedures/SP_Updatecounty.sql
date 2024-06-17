------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update country
-----------------------------------

CREATE PROCEDURE Updatecountry (
  @id CHAR(3),
  @new_name VARCHAR(40),
  @new_region INT
)
AS
BEGIN
  DECLARE @rowsAffected INT;
  DECLARE @errorMessage NVARCHAR(500);

  BEGIN TRY
    SELECT @rowsAffected = COUNT(*) FROM tbl_countries WHERE id = @id;

    IF @rowsAffected = 0
    BEGIN
      SET @errorMessage = 'Data Country ID ' + CAST(@id AS VARCHAR (3)) + ' tidak di temukan.';
      RAISERROR (@errorMessage, 16, 1);
    END;

    -- Check if new region exists
    IF EXISTS (SELECT 1 FROM tbl_regions WHERE id = @new_region)
    BEGIN
      SET @errorMessage = 'Data Region ID ' + CAST(@new_region AS VARCHAR(40)) + ' Sudah ada.';
      RAISERROR (@errorMessage, 16, 1);
    END;

    -- Update country
    UPDATE tbl_countries
    SET name = @new_name,
      region = @new_region
    WHERE id = @id;
  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Gagal mengubah data country: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC Updatecountry MYA, Malaysia, 7