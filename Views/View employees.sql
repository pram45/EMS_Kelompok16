------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View employees
------------------------------------

CREATE VIEW vw_employees AS
SELECT e.id AS EmployeeID,
       e.first_name,
       e.last_name,
       e.gender,
       e.email,
       e.phone,
       e.hire_date,
       e.salary,
       m.id,
       j.title AS job_title,  
       d.name AS department_name  
FROM tbl_employees e
LEFT JOIN tbl_employees m ON e.manager = m.id
LEFT JOIN tbl_jobs j ON e.job = j.id  
LEFT JOIN tbl_departments d ON e.department = d.id;


SELECT * FROM vw_employees