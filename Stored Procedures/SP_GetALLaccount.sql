------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk mengambil semua data akun
CREATE PROCEDURE GetAllAccounts
AS
BEGIN
    SELECT id, username, password, otp, is_expired, is_used
    FROM tbl_accounts;
END
GO