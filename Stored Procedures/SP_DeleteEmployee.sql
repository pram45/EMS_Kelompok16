------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk menghapus data dari tabel tbl_employees berdasarkan ID
CREATE PROCEDURE sp_DeleteEmployee
    @id INT
AS
BEGIN
    DELETE FROM tbl_employees
    WHERE id = @id;
END
GO

-- Membuat stored procedure untuk mengambil data karyawan berdasarkan ID
CREATE PROCEDURE sp_GetEmployeeById
    @id INT
AS
BEGIN
    SELECT id, first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department
    FROM tbl_employees
    WHERE id = @id;
END
GO

-- Membuat stored procedure untuk mengambil semua data karyawan
CREATE PROCEDURE sp_GetAllEmployees
AS
BEGIN
    SELECT id, first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department
    FROM tbl_employees;
END
GO