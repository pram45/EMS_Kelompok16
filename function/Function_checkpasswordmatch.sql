CREATE FUNCTION dbo.CheckPasswordMatch(
    @username VARCHAR(255),
    @password VARCHAR(255)
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @result VARCHAR(20);
    
    -- Cek kecocokan username dan password
    IF EXISTS (
        SELECT 1 
        FROM tbl_accounts 
        WHERE username = @username AND password = @password
    )
    BEGIN
        SET @result = 'match';
    END
    ELSE
    BEGIN
        SET @result = 'tidak match';
    END

    RETURN @result;
END;

SELECT dbo.CheckPasswordMatch('rafi', 'rfiKl@123') AS PasswordCheckResult;

SELECT dbo.CheckPasswordMatch('rafi', 'rfiKl@1234') AS PasswordCheckResult;
