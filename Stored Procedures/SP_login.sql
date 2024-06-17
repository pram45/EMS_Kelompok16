CREATE PROCEDURE sp_Login
    @username VARCHAR(25),
    @password VARCHAR(255)
AS
BEGIN
    -- Deklarasikan variabel untuk menampung hasilnya
    DECLARE @id INT;
    DECLARE @otp INT;
    DECLARE @is_expired DATETIME;
    DECLARE @is_used BIT;

    -- memeriksa kredensial login
    SELECT 
        @id = id,
        @otp = otp,
        @is_expired = is_expired,
        @is_used = is_used
    FROM tbl_accounts
    WHERE username = @username AND password = @password;

    -- jika cocok dan datanya ditemukan
    IF @id IS NOT NULL
    BEGIN
        SELECT 
            id,
            username,
            otp,
            is_expired,
            is_used
        FROM tbl_accounts
        WHERE id = @id;
    END
    ELSE
    BEGIN
        -- jika tidak cocok
        SELECT 
            'Error' AS Status, 
            'Invalid username or password' AS Message;
    END
END;

-- input username & passwor
EXEC sp_Login @username = 'rafi', @password = 'rfiKl@123';

-- input username atau password salah
EXEC sp_Login @username = 'rafqi', @password = 'rfiKl@123';
