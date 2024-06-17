CREATE PROCEDURE sp_GenerateOTP
    @username VARCHAR(25)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @otp INT;
    DECLARE @expirationTime DATETIME;

    -- Menghasilkan OTP antara 100000 dan 999999
    SET @otp = FLOOR(RAND() * (999999 - 100000 + 1)) + 100000;

    -- Mengatur waktu kadaluarsa OTP (misalnya 10 menit dari sekarang)
    SET @expirationTime = DATEADD(MINUTE, 10, GETDATE());

    -- Memperbarui tabel dengan OTP yang dihasilkan
    UPDATE tbl_accounts
    SET otp = @otp,
        is_expired = @expirationTime,
        is_used = 0
    WHERE username = @username;

    -- Mengembalikan OTP yang dihasilkan sebagai output
    SELECT @otp AS GeneratedOTP;
END;

EXEC sp_GenerateOTP @username = 'rafi';
