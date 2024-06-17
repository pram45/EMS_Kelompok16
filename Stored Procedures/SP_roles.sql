-- Add
CREATE PROCEDURE AddRole
    @name VARCHAR(50)
AS
BEGIN
    INSERT INTO tbl_roles (name)
    VALUES (@name);
END;

-- select
CREATE PROCEDURE SelectRoleById
    @id INT
AS
BEGIN
    SELECT * FROM tbl_roles WHERE id = @id;
END;

-- select all
CREATE PROCEDURE SelectAllRoles
AS
BEGIN
    SELECT * FROM tbl_roles;
END;

-- update
CREATE PROCEDURE UpdateRole
    @id INT,
    @name VARCHAR(50)
AS
BEGIN
    UPDATE tbl_roles
    SET name = @name
    WHERE id = @id;
END;


-- delete
CREATE PROCEDURE sp_DeleteRole
    @id INT
AS
BEGIN
    DELETE FROM tbl_roles WHERE id = @id;
END;
