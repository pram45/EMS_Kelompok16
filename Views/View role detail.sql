------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View role permission
------------------------------------

CREATE VIEW vw_role_details
AS
SELECT 
    rp.id AS role_id,
    r.name AS [role],
	p.name AS permission
FROM tbl_role_permissions rp
INNER JOIN tbl_permissions p ON rp.permission = p.id
INNER JOIN tbl_roles r ON rp.role = r.id

SELECT * FROM vw_role_details
