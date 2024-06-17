------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk mengupdate data dalam tabel tbl_accounts
CREATE PROCEDURE UpdateAccount
    @id INT,
    @username VARCHAR(25),
    @password VARCHAR(255),
    @otp INT,
    @is_expired DATETIME,
    @is_used BIT
AS
BEGIN
    UPDATE tbl_accounts
    SET username = @username,
        password = @password,
        otp = @otp,
        is_expired = @is_expired,
        is_used = @is_used
    WHERE id = @id;
END
GO