------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View Permission
------------------------------------

CREATE VIEW vw_Permission 
AS
SELECT id, name
FROM tbl_permissions;

SELECT * FROM vw_Permission