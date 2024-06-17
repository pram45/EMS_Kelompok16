------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk insert data ke dalam tabel tbl_roles
CREATE PROCEDURE sp_InsertRole
    @role VARCHAR(50)
AS
BEGIN
    INSERT INTO tbl_roles (role)
    VALUES (@role);
END
GO

-- Membuat stored procedure untuk mengupdate data dalam tabel tbl_roles
CREATE PROCEDURE sp_UpdateRole
    @id INT,
    @role VARCHAR(50)
AS
BEGIN
    UPDATE tbl_roles
    SET role = @role
    WHERE id = @id;
END
GO

-- Membuat stored procedure untuk menghapus data dari tabel tbl_roles berdasarkan ID
CREATE PROCEDURE sp_DeleteRole
    @id INT
AS
BEGIN
    DELETE FROM tbl_roles
    WHERE id = @id;
END
GO

-- Membuat stored procedure untuk mengambil data role berdasarkan ID
CREATE PROCEDURE sp_GetRoleById
    @id INT
AS
BEGIN
    SELECT id, role
    FROM tbl_roles
    WHERE id = @id;
END
GO

-- Membuat stored procedure untuk mengambil semua data roles
CREATE PROCEDURE sp_GetAllRoles
AS
BEGIN
    SELECT id, role
    FROM tbl_roles;
END
GO