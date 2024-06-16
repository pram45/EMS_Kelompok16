CREATE FUNCTION EmployeDetail()
RETURNS TABLE
AS 
RETURN(
	SELECT E.id , CONCAT(E.first_name, ' ', E.last_name) AS 'Name', E.gender, J.title AS 'title job', D.[name] AS'Department'
	FROM tbl_employees E
	INNER JOIN tbl_jobs J ON E.job = J.id
	INNER JOIN tbl_departments D ON E.department = D.id
)

SELECT * FROM EmployeDetail()

