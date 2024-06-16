CREATE FUNCTION CheckEmployeeStatus(@Employeeid INT) 
RETURNS VARCHAR(50)
BEGIN
    DECLARE @first_name VARCHAR (20);
	DECLARE @last_name VARCHAR (20);
	DECLARE @status VARCHAR(50);
	DECLARE @full_name VARCHAR (30);
	DECLARE @full_status VARCHAR (50);

    SELECT @status = JH.status, @first_name = E.first_name, @last_name = E.last_name
    FROM tbl_job_histories JH , tbl_employees E
    WHERE @Employeeid = E.id AND E.id = JH.employee;
	
	SET @full_name = CONCAT(@first_name, ' ', @last_name);

    IF @status IS NULL 
        SET @full_status = CONCAT('Karyawan dengan ID ', @Employeeid, ' tidak ditemukan.');
    ELSE 
        SET @full_status = CONCAT(@full_name, '  [status kaeryawan ini]  ' , @status);
   
	RETURN @full_status ;
END

SELECT dbo.CheckEmployeeStatus (100006)