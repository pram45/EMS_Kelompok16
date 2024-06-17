------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View department
------------------------------------

CREATE VIEW vw_department 
AS
SELECT d.id, d.name, l.street_address, l.postal_code, l.city
FROM tbl_departments d
INNER JOIN tbl_locations l ON d.location = l.id;

SELECT * FROM vw_department