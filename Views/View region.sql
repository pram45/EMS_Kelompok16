------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View account role
------------------------------------

CREATE VIEW vw_region AS
SELECT id, name AS region
FROM tbl_regions;

SELECT * FROM vw_region