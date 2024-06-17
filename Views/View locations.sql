------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View locations
------------------------------------

CREATE VIEW vw_location 
AS
SELECT 
  l.id, l.street_address, l.postal_code, l.city, l.state_province, l.country AS countryID, c.name AS country_name  
FROM tbl_locations l
LEFT JOIN tbl_countries c ON l.country = c.id;

SELECT * FROM vw_location