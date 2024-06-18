CREATE VIEW vw_DetailEmployee
AS
SELECT 
    tbl_employees.id, 
    tbl_employees.first_name, 
    tbl_employees.last_name, 
    tbl_employees.gender, 
    tbl_employees.email, 
    tbl_employees.phone, 
    tbl_employees.hire_date, 
    tbl_employees.salary, 
    tbl_employees.manager, 
    tbl_employees.job, 
    tbl_employees.department
FROM 
    tbl_departments 
INNER JOIN 
    tbl_employees ON tbl_departments.id = tbl_employees.department 
INNER JOIN 
    tbl_jobs ON tbl_employees.job = tbl_jobs.id;
GO
