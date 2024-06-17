------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk mengupdate data dalam tabel tbl_employees
CREATE PROCEDURE sp_UpdateEmployee
    @id INT,
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
    UPDATE tbl_employees
    SET first_name = @first_name,
        last_name = @last_name,
        gender = @gender,
        email = @email,
        phone = @phone,
        hire_date = @hire_date,
        salary = @salary,
        manager = @manager,
        job = @job,
        department = @department
    WHERE id = @id;
END
GO
