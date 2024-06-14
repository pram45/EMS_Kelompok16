------------------------------------
-- AUTHOR	: pram45
-- DATE		: 14-06-2024
-- DESCRIPT	: memasukan data ke table
------------------------------------


INSERT INTO tbl_regions ( name ) 
VALUES ('ASIA'), ('AUSTRALIA'), ('AFRICA'), ('EUROPA'), ('NORTH AMERICA'), ('SOUTH AMERICA')

SELECT * FROM tbl_regions


INSERT INTO tbl_countries (id, name, region) 
VALUES ( 'AFG', 'Afghanistan', 1 ), ('IDN', 'Indonesia', 1), ( 'AUS', 'Australia', 2 ), ('PSE', 'Palestine', 1), ( 'AGO', 'Angola', 3 ), ('BIH', 'Bosnia and Herzegovina', 4), ('CAN', 'Canada', 5 ),
('IRL', 'Ireland', 4), ('NOR', 'Norway', 4), ('VEN', 'Venezuela', 6), ('ARG', 'Argentina', 6), ('ESP', 'Spain', 4), ('EGY', 'Egypt', 3), ('SOM', 'Somalia', 3), ('MDV', 'Maldives', 1)

SELECT * FROM tbl_countries 

SELECT * 
FROM tbl_countries
JOIN tbl_regions ON tbl_countries.region = tbl_regions.id;

INSERT INTO tbl_locations (street_address, postal_code, city, state_province, country)
VALUES 
('Remedios Escalada De San Mart N 4438', '10730', 'Buenos Aires', 'Buenos Aires', 'ARG' ), -- Argentina
('1826 Tchesinkut Lake Rd', 'V0J 2N0', 'Smithers', 'British Columbia', 'CAN'), -- Canada
('76 Hisham Labib - 8th District' , '10730', 'NASR CITY', 'Cairo', 'EGY'), -- Egypt
('Jalan Mangga Emas No. 5', '80263', 'Denpasar', 'Bali', 'IDN'), -- Indonesia
('Charlemont Pl', 'D02 A893', 'Saint Kevins', 'Dublin','IRL'), -- Ireland
('Calle Aduana 66', '01307', 'Leza', 'Álava','ESP'), -- Spain
('3a Kninska', '71123', 'Lukavica', 'Istočno Novo Sarajevo','BIH'), -- Bosnia and Herzegovina
('Omar Mukhtar Street', '09010', 'KISMAYU', 'KISMAYU','SOM'), -- Somalia
('Piso Urbanización Los Dos Caminos', '10730', 'Caracas', 'Distrito Capital','VEN'), -- Venezuela
('12/78 Kangaroo Street', '3456', 'Koalaford', 'New South Wales','AUS'), -- Australia
('Sabudheli Magu M. Vethi', '20316', 'Malé City', 'Male', 'MDV'), -- Maldives
('Torggata 16', '0181', 'Oslo', 'Oslo', 'NOR'), -- Norway
('Janet Adan', '012919', 'Beit Hanina Main St' , 'Jerusalem', 'PSE'),-- Palestine
('Kulola Pashta', '014891', 'Kabul', 'Kabul', 'AFG'), -- Afganistan
('R. Dr. José Pereira do Nascimento 13', '741283', 'Luanda', 'Luanda', 'AGO') -- Angola

SELECT * FROM tbl_locations

INSERT INTO tbl_departments (name, location) VALUES ('Human Resources',22), ('Marketing',23), ('Customer Service', 28), ('Production', 30), 
('Research and Development', 29), ('Quality Assurance', 31), ('Human Resources', 32), ('Marketing', 33), ('Finance', 34), ('Sales', 35), ('Information Technology', 36),
('Finance',24),('Sales',25),('Information Technology',26),('Operations',27)

SELECT * FROM tbl_departments

INSERT INTO tbl_jobs (id,title, min_salary, max_salary) VALUES ('HRM','HR Manager',3500000,10000000),
('MS','Marketing Specialist',2500000,10000000),
('FA','Financial Analyst',2500000,10000000),
('SR','Sales Representative',4000000,10000000),
('ITS','IT Specialist',2500000,10000000),
('OM','Operations Manager',3000000,10000000),
('CSR','Customer Service Representative',2500000,10000000),
('RDE','R&D Engineer',2500000,10000000),
('PS','Production Supervisor',2500000,10000000),
('QAA','QA Analyst',2500000,10000000),
('HRC','HR Coordinator',3500000,10000000),
('MM','Marketing Manager',2500000,10000000),
('FM','Finance Manager',2500000,10000000),
('SM','Sales Manager',2500000,10000000),
('ITM','IT Manager',4000000,10000000)

SELECT * FROM tbl_jobs





