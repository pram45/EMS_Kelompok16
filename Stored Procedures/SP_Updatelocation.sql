------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update location
-----------------------------------

CREATE PROCEDURE Updatelocation (
  @id INT,
  @street_address VARCHAR(40),
  @postal_code VARCHAR(12),
  @city VARCHAR(30),
  @state_province VARCHAR(25),
  @country CHAR(3) )
AS
BEGIN
  DECLARE @rowsAffected INT;
  DECLARE @errorMessage NVARCHAR(500);

  BEGIN TRY
    SELECT @rowsAffected = COUNT(*) FROM tbl_locations WHERE id = @id;

    IF @rowsAffected = 0
    BEGIN
      SET @errorMessage = 'Data Location ID ' + CAST(@id AS VARCHAR (3)) + ' tidak di temukan.';
      RAISERROR (@errorMessage, 16, 1);
    END;

    -- Check if new locatin exists
    IF EXISTS (SELECT 1 FROM tbl_locations WHERE country = @country)
    BEGIN
      SET @errorMessage = 'Data dengan ID ' + CAST(@country AS CHAR(3)) + ' Sudah ada.';
      RAISERROR (@errorMessage, 16, 1);
    END;

      -- Update location
    UPDATE tbl_locations
    SET 
      street_address = ISNULL(@street_address, street_address),
      postal_code = ISNULL(@postal_code, postal_code),
      city = ISNULL(@city, city),
      state_province = ISNULL(@state_province, state_province),
      country = ISNULL(@country, country)
    WHERE id = @id;
  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error updating location: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC Updatelocation 27, null, null, 'Kismayu city', Kismayu, SOM