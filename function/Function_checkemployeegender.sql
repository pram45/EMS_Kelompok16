CREATE FUNCTION CheckEmployeeGender (@id INT)
RETURNS NVARCHAR(200)
AS
BEGIN
    DECLARE @info NVARCHAR(200);

    SELECT @info = CONCAT(first_name, ' ', last_name, ', ', gender)
    FROM tbl_employees
    WHERE id = @id;

    RETURN @info;
END;
GO

SELECT [dbo].[CheckEmployeeGender] (100002)
