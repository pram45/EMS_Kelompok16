USE [db_test]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckSalary]    Script Date: 15/06/2024 21.59.40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[fn_CheckSalary](@EmployeeID INT, @Salary INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Result NVARCHAR(100);
    DECLARE @MinSalary INT, @MaxSalary INT;

    SELECT @MinSalary = J.min_salary, @MaxSalary = J.max_salary, @Salary = E.salary
    FROM tbl_jobs J , tbl_employees E
    WHERE  E.id = @EmployeeID;

    IF @Salary < @MinSalary
    BEGIN
        SET @Result = 'Gaji kurang dari batas minimum.';
    END
    ELSE IF @Salary > @MaxSalary
    BEGIN
        SET @Result = 'Gaji lebih dari batas maksimum.';
    END
    ELSE
    BEGIN
        SET @Result = 'Gaji dalam rentang yang diizinkan.';
    END

    RETURN @Result;
END;

SELECT dbo.fn_CheckSalary (100004,4000000)