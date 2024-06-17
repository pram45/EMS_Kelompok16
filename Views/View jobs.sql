------------------------------------
--	AUTHOR	: pram45
--	DATE	: 17 - 06 - 24
--  DESCRIPT: View job
------------------------------------

CREATE VIEW vw_job 
AS
SELECT 
j.id AS jobID,
j.title,
j.min_salary,
j.max_salary

FROM tbl_jobs j;


SELECT * FROM vw_job