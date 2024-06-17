CREATE TRIGGER trgDeleteEmployee
ON tbl_employees
AFTER DELETE
AS 
BEGIN
    SET NOCOUNT ON;

    DELETE FROM tbl_job_histories
    WHERE EXISTS (
        SELECT 1 
        FROM deleted d
        JOIN tbl_job_histories jh ON jh.employee = d.id
    );
END;
