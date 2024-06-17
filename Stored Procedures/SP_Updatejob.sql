------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update department
-----------------------------------

CREATE PROCEDURE Updatejob
    @id VARCHAR(10),
    @title VARCHAR(100),
    @min_salary INT,
    @max_salary INT
AS
BEGIN
  DECLARE @rowsAffected INT;
  DECLARE @errorMessage NVARCHAR(500);

  BEGIN TRY
    SELECT @rowsAffected = COUNT(*) FROM tbl_jobs WHERE id = @id;

    IF @rowsAffected = 0
    BEGIN
      SET @errorMessage = 'Data dengan ID ' + CAST(@id AS VARCHAR (10)) + ' tidak di temukan.';
      RAISERROR (@errorMessage, 16, 1);
    END;

        -- Validasi nilai min_salary
        IF @min_salary < 1500000
        BEGIN
            RAISERROR ('Minimum salary must be at least 1,500,000.', 16, 1);
        END

        -- Validasi nilai max_salary
        IF @max_salary < 10000000
        BEGIN
            RAISERROR ('Maximum salary must be at least 10,000,000.', 16, 1);
        END

        -- Perbarui data di tabel jobs
        UPDATE tbl_jobs
        SET title = @title,
            min_salary = @min_salary,
            max_salary = @max_salary
        WHERE id = @id;

        -- Periksa apakah ada baris yang diperbarui
		END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error updating job: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC Updatejob ADS, NULL ,5000000,1000000