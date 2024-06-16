CREATE FUNCTION CheckEmailFormat(@Employeeid int)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @email VARCHAR(100);
	DECLARE @Result NVARCHAR(100);

	SELECT @Email = E.email FROM tbl_employees E WHERE E.id = @Employeeid;

    IF @Email LIKE '%@%'
    BEGIN
        SET @Result = 'Format email valid.';
    END
    ELSE
    BEGIN
        SET @Result = 'Format email tidak valid.';
    END

    RETURN @Result;
END;

SELECT dbo.CheckEmailFormat (100002)