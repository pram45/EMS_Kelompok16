
CREATE FUNCTION CheckPhoneNumber(@phone VARCHAR(20))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @Result VARCHAR(100);
	-- mengecek jika @phone hanya berisi karakter yang di izinkan
    IF NOT @phone LIKE '%[^0-9]%'
    BEGIN
        SET @Result = 'Nomor telepon valid.';
    END
    ELSE
    BEGIN
        SET @Result = 'Nomor telepon mengandung karakter non-angka.';
    END

    RETURN @Result;
END;

SELECT dbo.CheckPhoneNumber ('0329409304b')

