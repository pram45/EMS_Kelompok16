CREATE TABLE tbl_regions(
	id int PRIMARY KEY,
	name VARCHAR(25) NOT NULL
);

CREATE TABLE tbl_countries(
	id char(3) PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	region int NOT NULL,
	FOREIGN KEY (region) REFERENCES tbl_regions(id)
);

CREATE TABLE tbl_locations(
	id int PRIMARY KEY,
	street_address varchar(40),
	postal_code varchar(12),
	city varchar(30) NOT NULL,
	state_province varchar(25),
	country char(3),
	FOREIGN KEY (country) REFERENCES tbl_countries(id)
);

CREATE TABLE tbl_departments(
	id int PRIMARY KEY,
	name varchar(30) NOT NULL,
	location int NOT NULL,
	FOREIGN KEY (location) REFERENCES tbl_locations(id)
)

CREATE TABLE tbl_jobs(
	id varchar(10) PRIMARY KEY,
	title VARCHAR(35) NOT NULL,
	min_salary int,
	max_salary int
);
