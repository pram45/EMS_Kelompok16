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

-- select by id
CREATE PROCEDURE ViewloyeeById
    @id INT
AS
BEGIN
    SELECT * FROM tbl_employees WHERE id = @id;
END;
-- select all
CREATE PROCEDURE ViewAllEmployees
AS
BEGIN
    SELECT * FROM tbl_employees;
END;

-- update
CREATE PROCEDURE UpdateEmployee
    @id INT,
    @first_name VARCHAR(25),
    @last_name VARCHAR(25),
    @gender VARCHAR(10),
    @email VARCHAR(25),
    @phone VARCHAR(20),
    @hire_date DATE,
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
END;

-- delete
CREATE PROCEDURE DeleteEmployee
    @id INT
AS
BEGIN
    DELETE FROM tbl_employees WHERE id = @id;
END;
