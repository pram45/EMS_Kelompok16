------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: SP update employee
-----------------------------------

CREATE PROCEDURE UpdateEmployee
	@id int,
	@firstName varchar(25),
	@lastName varchar(25),
	@gender varchar(10),
	@email varchar(25),
	@phone varchar(20),
	@hireDate date,
	@salary int,
	@managerId int,
	@jobId varchar(10), 
	@departmentId int

AS
BEGIN
  DECLARE @rowsAffected INT;
  DECLARE @errorMessage NVARCHAR(500);

  BEGIN TRY
    SELECT @rowsAffected = COUNT(*) FROM tbl_employees WHERE id = @id;

    IF @rowsAffected = 0
    BEGIN
      SET @errorMessage = 'Data dengan ID ' + CAST(@id AS VARCHAR (10)) + ' tidak di temukan.';
      RAISERROR (@errorMessage, 16, 1);
    END;


        -- Perbarui data di tabel jobs
       UPDATE tbl_employees
    SET first_name = @firstName,
		last_name = @lastName,
		gender = @gender,
		email = @email,
		phone = @phone,
		hire_date = @hireDate,
		salary = @salary,
		manager = @managerId,
		job = @jobId,
		department = @departmentId
    WHERE id = @id;

        -- Periksa apakah ada baris yang diperbarui
		END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error updating job: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC UpdateEmployee 100031, Kamila, Janah, Female, 'KamilaJ@gmial.com', '07873487', '12-06-2024',NULL, NULL,HRM,5