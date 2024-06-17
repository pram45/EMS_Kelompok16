------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View account role
------------------------------------

CREATE VIEW view_account_roles AS
SELECT 
  ar.id, 
  a.username,  
  r.name AS role_name
FROM tbl_account_roles ar
INNER JOIN tbl_accounts a ON ar.account = a.id
INNER JOIN tbl_roles r ON ar.role = r.id;

SELECT * FROM view_account_roles