------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk menghapus data dari tabel tbl_accounts berdasarkan ID
CREATE PROCEDURE DeleteAccount
    @id INT
AS
BEGIN
    DELETE FROM tbl_accounts
    WHERE id = @id;
END
GO