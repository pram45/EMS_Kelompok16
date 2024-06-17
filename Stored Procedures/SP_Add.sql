------------------------------------
--	AUTHOR	: Rafi446
--	DATE	: 17 - 06 - 24
--  DESCRIPT: STORED PROCEDURES
------------------------------------

-- Membuat stored procedure untuk insert data ke dalam tabel tbl_accounts
CREATE PROCEDURE AddAccount
    @username VARCHAR(25),
    @password VARCHAR(255),
    @otp INT,
    @is_expired DATETIME,
    @is_used BIT
AS
BEGIN
    INSERT INTO tbl_accounts (username, password, otp, is_expired, is_used)
    VALUES (@username, @password, @otp, @is_expired, @is_used);
END
GO





