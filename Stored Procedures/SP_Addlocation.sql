CREATE PROCEDURE AddLocation (
    @street_address VARCHAR(40),
    @postal_code VARCHAR(12),
    @city VARCHAR(30),
    @state_province VARCHAR(25),
    @country CHAR(3)
)
AS
BEGIN
    INSERT INTO tbl_locations (street_address, postal_code, city, state_province, country)
    VALUES (@street_address, @postal_code, @city, @state_province, @country);
END;

EXEC AddLocation 'jl.merdeka raya', 45000, 'Kuala Selangor', Selangor, MYS 