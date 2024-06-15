CREATE FUNCTION EmployeDetail(@id INT)
RETURNS VARCHAR (100)
AS 
BEGIN RETURN(
	SELECT E.id , E.first_name AS 'Name', E.gender, J.title AS 'title job', D.[name] AS'Department'
	FROM tbl_employees E
	INNER JOIN tbl_jobs J ON E.job = J.id
	INNER JOIN tbl_departments D ON E.department = D.id
)END

SELECT * FROM EmployeDetail(100004)

