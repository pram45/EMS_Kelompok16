------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

tbl_employees

GO

-- Membuat stored procedure untuk insert data ke dalam tabel tbl_employees
CREATE PROCEDURE sp_InsertEmployee
    @first_name VARCHAR(25),
    @last_name VARCHAR(25),
    @gender VARCHAR(10),
    @email VARCHAR(25),
    @phone VARCHAR(20),
    @hire_date INT,
    @salary INT,
    @manager INT,
    @job VARCHAR(10),
    @department INT
AS
BEGIN
    INSERT INTO tbl_employees (first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department)
    VALUES (@first_name, @last_name, @gender, @email, @phone, @hire_date, @salary, @manager, @job, @department);
END
GO


