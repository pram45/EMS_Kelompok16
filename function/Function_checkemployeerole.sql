-- fungsi scalar valued
CREATE FUNCTION dbo.GetEmployeeRole (@employee_id INT)
RETURNS NVARCHAR(100)  -- Mengembalikan nama depan karyawan dan role nya
AS
BEGIN
    DECLARE @result NVARCHAR(100);

    SELECT @result = e.first_name + ' - ' + r.name
    FROM tbl_employees e
    INNER JOIN tbl_accounts a ON e.id = a.id
    INNER JOIN tbl_account_roles ar ON a.id = ar.account
    INNER JOIN tbl_roles r ON ar.role = r.id
    WHERE e.id = @employee_id;

    RETURN @result;
END;
GO


SELECT [dbo].[GetEmployeeRole] (100004)
