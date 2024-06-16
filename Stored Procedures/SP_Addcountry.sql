CREATE PROCEDURE AddCountriy (
@id CHAR (3),
@name VARCHAR(40),
@region INT
)
AS
BEGIN
	INSERT INTO tbl_countries (id, name , region) 
	VALUES (@id ,@name, @region);
END;

EXEC AddCountriy  MYS, Malaysia, 7