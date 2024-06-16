------------------------------------
--	AUTHOR	: pram45
--	DATE	: 16 - 06 - 24
--  DESCRIPT: SP add job
-----------------------------------

CREATE PROCEDURE AddJob (
    @id varchar(10), 
    @title varchar(35), 
    @min_salary int, 
    @max_salary int
)
AS
BEGIN
    DECLARE @errorMessage nvarchar(500);

    BEGIN TRY
        INSERT INTO tbl_jobs (id, title, min_salary, max_salary)
        VALUES (@id, @title, @min_salary, @max_salary);
    END TRY
    BEGIN CATCH
        SET @errorMessage = ERROR_MESSAGE();
        RAISERROR ('Error adding job: %s', 16, 1, @errorMessage);
    END CATCH;
END;


EXEC AddJob 
    @id = 'ADS', 
    @title = 'Manager advertising', 
    @min_salary = 1500000, 
    @max_salary = 10000000;
