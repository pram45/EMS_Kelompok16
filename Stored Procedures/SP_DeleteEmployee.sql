CREATE PROCEDURE deleteEmployee (@id int)
AS
BEGIN
  DECLARE @errorMessage nvarchar(500);
  DECLARE @rowsAffected int;

  BEGIN TRY
    DELETE FROM tbl_employees
    WHERE id = @id;

    SET @rowsAffected = @@ROWCOUNT;

    IF @rowsAffected = 0
      BEGIN
        RAISERROR ('Employee with ID %d not found.', 10, 1, @id);
      END;
  END TRY
  BEGIN CATCH
    SET @errorMessage = ERROR_MESSAGE();
    RAISERROR ('Error deleting employee: %s', 16, 1, @errorMessage);
  END CATCH;
END;

EXEC deleteEmployee 100033


---- jika constrain konflik 
ALTER TABLE dbo.tbl_job_histories
DROP CONSTRAINT FK__tbl_job_h__emplo__114A936A;

ALTER TABLE dbo.tbl_job_histories
ADD CONSTRAINT FK__tbl_job_h__emplo__114A936A
FOREIGN KEY (employee) REFERENCES dbo.tbl_employees(id)
ON DELETE CASCADE;