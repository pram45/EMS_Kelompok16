CREATE FUNCTION dbo.CheckRolePermissions()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        tbl_role_permissions.id, 
        tbl_roles.name AS role_name, 
        tbl_permissions.name AS permission
    FROM 
        tbl_role_permissions 
    INNER JOIN
        tbl_roles ON tbl_role_permissions.role = tbl_roles.id 
    INNER JOIN
        tbl_permissions ON tbl_role_permissions.permission = tbl_permissions.id
);

SELECT * FROM [dbo].[CheckRolePermissions]();
