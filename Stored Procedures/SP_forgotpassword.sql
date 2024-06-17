-- Sp forgot password

CREATE PROCEDURE sp_forgot_password
    @username VARCHAR(25)
AS
BEGIN
    -- Deklarasi variabel
    DECLARE @otp INT;
    DECLARE @expiration DATETIME;
    DECLARE @userExists INT;

    -- Cek apakah pengguna ada di database
    SELECT @userExists = COUNT(*)
    FROM tbl_accounts
    WHERE username = @username;

    IF @userExists = 0
    BEGIN
        -- Jika pengguna tidak ditemukan, keluar dengan pesan error
        RAISERROR ('User not found', 16, 1);
        RETURN;
    END

    -- Generate OTP (angka acak 6 digit)
    SET @otp = FLOOR(RAND() * 900000) + 100000;
    -- Set waktu kedaluwarsa OTP (misalnya 15 menit dari sekarang)
    SET @expiration = DATEADD(MINUTE, 15, GETDATE());

    -- Update tabel dengan OTP, waktu kedaluwarsa, dan status penggunaan
    UPDATE tbl_accounts
    SET otp = @otp,
        is_expired = @expiration,
        is_used = 0
    WHERE username = @username;

    -- Mengirim OTP ke pengguna (implementasi pengiriman disini adalah placeholder)
    -- Di aplikasi nyata, Anda perlu mengganti ini dengan kode pengiriman email/sms
    PRINT 'OTP has been sent to the user: ' + CAST(@otp AS VARCHAR(6));
END;

-- user ditemukan di database
EXEC sp_forgot_password @username = 'rafi';

-- user tidak ditemukann di database
EXEC sp_forgot_password @username = 'rafi';
