CREATE FUNCTION CheckPasswordPolicy(@AccountID INT)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @Result NVARCHAR(100);
    DECLARE @Password NVARCHAR(128);

    SELECT @Password = A.password FROM tbl_accounts A WHERE A.id = @AccountID;

    IF LEN(@Password) < 8
    BEGIN
        SET @Result = 'Password harus memiliki minimal 8 karakter.';
    END
    ELSE IF NOT @Password LIKE '%[0-9]%'
    BEGIN
        SET @Result = 'Password harus memiliki setidaknya 1 angka.';
    END
	ELSE IF NOT @Password LIKE '%[A-Z]%'
	BEGIN 
		SET @Result = 'Password harus memiliki setidaknya 1 huruf kapital.';
	END
    ELSE IF NOT @Password LIKE '%[a-z]%'
    BEGIN
        SET @Result = 'Password harus memiliki setidaknya 1 huruf.';
    END
	ELSE IF NOT @Password LIKE '%[!-~]%'
	BEGIN
		SET @Result = 'Password harus memiliki setidaknya 1 simbol'
		END
    ELSE
    BEGIN
        SET @Result = 'Password memenuhi kebijakan.';
    END

    RETURN @Result;
END;

SELECT dbo.CheckPasswordPolicy (100005)
