CREATE VIEW vw_DetailEmployee
AS
SELECT 
    e.id, 
    e.first_name + ' ' + e.last_name AS full_name, 
    e.gender, 
    e.email, 
    e.phone, 
    e.hire_date, 
    e.salary, 
    e.manager, 
    e.job, 
    e.department, 
    r.name AS name_role, 
    l.street_address, 
    l.postal_code, 
    l.city, 
    jh.status
FROM 
    tbl_account_roles ar
INNER JOIN 
    tbl_accounts a ON ar.account = a.id
INNER JOIN 
    tbl_departments d ON ar.id = d.id
INNER JOIN 
    tbl_employees e ON a.id = e.id
INNER JOIN 
    tbl_job_histories jh ON d.id = jh.department AND e.id = jh.employee
INNER JOIN 
    tbl_jobs j ON jh.job = j.id
INNER JOIN 
    tbl_locations l ON d.location = l.id
INNER JOIN 
    tbl_countries c ON l.country = c.id
INNER JOIN 
    tbl_permissions p ON ar.id = p.id
INNER JOIN 
    tbl_regions rg ON c.region = rg.id
INNER JOIN 
    tbl_role_permissions rp ON p.id = rp.permission
INNER JOIN 
    tbl_roles r ON ar.role = r.id AND rp.role = r.id;
GO
