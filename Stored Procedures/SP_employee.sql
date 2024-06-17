-- add
CREATE PROCEDURE AddEmployee (
    @first_name VARCHAR(25),
    @last_name VARCHAR(25),
    @gender VARCHAR(10),
    @email VARCHAR(25),
    @phone VARCHAR(20),
    @hire_date date,
    @salary INT,
    @manager INT,
    @job VARCHAR(10),
    @department INT
)
AS
BEGIN
  INSERT INTO tbl_employees (first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department)
    VALUES (@first_name, @last_name, @gender, @email, @phone, @hire_date, @salary, @manager, @job, @department);
END;

EXEC AddEmployee Jian,NULL,Male,'Jian@gmail.com', '0854245', '01-06-2024', 5000000,NULL, MM,8


