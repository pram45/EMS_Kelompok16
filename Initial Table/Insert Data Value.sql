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

