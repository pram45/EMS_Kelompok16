--------------------------------------
-- AUTHOR	: rafi446
-- TIME		: 13-06-2024
-- DESCRIPT	: Menambahkan data dalam tabel employee
--------------------------------------
-- EDITED BY: pram45
-- TIME		: 14-06-2024
-- DESCRIPT	: Menambahkan data job dan departmen dalam tabel employee
---------------------------------------

INSERT INTO tbl_employees 
(first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department) VALUES 
('rafi', '', 'Male', 'rafi@gmail.com', '0987654321', '2020-02-02', '5000000', '', 'CSR', '1'),
('fadila', ' ', 'Female', 'fdl@gmail.com', '091236457', '2020-06-08', '4000000', '100000', 'FA','2'),
('aguero', 'sergio', 'Male', 'agr@gmail.com', '0987654432', '2021-09-01', '2000000', '100000', 'FM', '3'),
('ronaldo', '', 'Female', 'rnl@gmail.com', '0969954321', '2022-03-02', '7000000', '100000', 'HRC', '4'),
('putri', 'amelia', 'Female', 'ptr@gmail.com', '098767621', '2023-01-10', '4500000', '100000', 'HRM', '5'),
('Messi', 'lionel', 'Female', 'mess@gmail.com', '091324432', '2023-02-02', '1600000', '100001', 'ITM', '6'),
('putra', '', 'Male', 'ptr11@gmail.com', '098747568', '2024-07-03', '3400000', '100001', 'ITS', '7'),
('layla', 'kaila', 'Female', 'lyy77@gmail.com', '086374827', '2021-11-02', '1700000', '100001', 'MM', '8'),
('yuli', '', 'Female', 'lii99@gmail.com', '098774934', '2024-12-12', '7000000', '100001', 'MS', '9'),
('john', 'cena', 'Male', 'john12@gmail.com', '098374653', '2019-01-02', '6500000', '100002', 'OM', '10'),
('jabran', 'fadil', 'Male', 'bran88@gmail.com', '098345587', '2024-07-02', '4400000', '100002', 'PS', '11'),
('fatimah', 'azahra', 'Female', 'ft66@gmail.com', '0987463857', '2023-11-05', '2600000', '100002', 'QAA', '12'),
('Azzahra', '', 'Female', 'zhra@gmail.com', '098746395', '2024-12-11', '3300000', '100002', 'RDE', '13'),
('valdi', 'adam', 'Male', 'vll22@gmail.com', '098847392', '2018-02-02', '5600000', '100003', 'SM', '14'),
('rio', '', 'Male', 'rio78@gmail.com', '098344879', '2020-03-12', '3400000', '100003', 'SR', '15');


SELECT tbl_employees.* , tbl_jobs.title, tbl_job_histories.*
FROM tbl_employees
JOIN tbl_jobs ON tbl_employees.job = tbl_jobs.id
JOIN tbl_job_histories ON tbl_employees.id = tbl_job_histories.employee

SELECT tbl_accounts.*, tbl_account_roles.*, tbl_roles.name, tbl_role_permissions.permission
FROM tbl_accounts
JOIN tbl_account_roles ON tbl_accounts.id = tbl_account_roles.account
JOIN tbl_roles ON tbl_account_roles.role = tbl_roles.id
JOIN tbl_role_permissions ON tbl_roles.id = tbl_role_permissions.role
