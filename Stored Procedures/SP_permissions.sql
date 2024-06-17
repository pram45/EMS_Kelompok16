-- Add
CREATE PROCEDURE AddPermission
    @name VARCHAR(100)
AS
BEGIN
    INSERT INTO tbl_permissions (name)
    VALUES (@name);
END;

-- select
CREATE PROCEDURE SelectPermissionById
    @id INT
AS
BEGIN
    SELECT * FROM tbl_permissions WHERE id = @id;
END;

-- select all
CREATE PROCEDURE SelectAllPermissions
AS
BEGIN
    SELECT * FROM tbl_permissions;
END;

-- update
CREATE PROCEDURE sp_UpdatePermission
    @id INT,
    @name VARCHAR(100)
AS
BEGIN
    UPDATE tbl_permissions
    SET name = @name
    WHERE id = @id;
END;

-- delete
CREATE PROCEDURE sp_DeletePermission
    @id INT
AS
BEGIN
    DELETE FROM tbl_permissions WHERE id = @id;
END;
