CREATE FUNCTION dbo.CheckPasswordMatch(
    @username VARCHAR(255),
    @password VARCHAR(255)
)
RETURNS BIT
AS
BEGIN
    DECLARE @isMatch BIT;
    
    -- Cek kecocokan username dan password
    IF EXISTS (
        SELECT 1 
        FROM tbl_accounts 
        WHERE username = @username AND password = @password
    )
    BEGIN
        SET @isMatch = 1;
    END
    ELSE
    BEGIN
        SET @isMatch = 0;
    END

    RETURN @isMatch;
END;

SELECT dbo.CheckPasswordMatch('rafi', 'rfiKl@123') AS IsMatch;

SELECT dbo.CheckPasswordMatch('rafi', 'rfiKl@1234') AS IsMatch;
