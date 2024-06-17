------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View country
------------------------------------

CREATE VIEW vw_countries
AS 
SELECT c.id, c.name, r.name AS region_name
FROM tbl_countries c
INNER JOIN tbl_regions r ON c.region = r.id;
 
 SELECT * FROM vw_countries