------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View role
------------------------------------

CREATE VIEW vw_role
AS
SELECT
    id AS role_id,
    name AS role_name
FROM tbl_roles;

SELECT * FROM vw_role