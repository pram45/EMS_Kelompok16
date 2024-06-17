CREATE TRIGGER tr_update_employee
ON tbl_employees
AFTER UPDATE
AS
BEGIN
    DECLARE @employeeId int;
    DECLARE @hireDate datetime;
    DECLARE @status varchar(255);
    DECLARE @job varchar(255);
    DECLARE @department varchar(255);

    SELECT 
        @employeeId = inserted.id,
        @hireDate = inserted.hire_date,
        @status = 'hand over',
        @job = inserted.job,
        @department = inserted.department
    FROM 
        inserted;


    INSERT INTO tbl_job_histories (
        employee,
        start_date,
        end_date,
        status,
        job,
        department
    )
    VALUES (
        @employeeId,
        @hireDate, -- Using hire_date as start_date
        DATEADD(year, 1, @hireDate), -- Setting end_date to 1 year after hire_date
        @status,
        @job,
        @department
    );
END;

EXEC UpdateEmployee 100031, Kamila, Janah, Female, 'KamilaJ@gmial.com', '07873487', '12-06-2024',NULL, NULL,HRM,5