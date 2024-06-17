------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk mengambil data akun berdasarkan ID
CREATE PROCEDURE GetAccountById
    @id INT
AS
BEGIN
    SELECT id, username, password, otp, is_expired, is_used
    FROM tbl_accounts
    WHERE id = @id;
END
GO