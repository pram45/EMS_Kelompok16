CREATE TABLE tbl_regions(
	id int PRIMARY KEY NOT NULL,
	[name] VARCHAR(25) NOT NULL
);

CREATE TABLE tbl_countries(
	id char(3) PRIMARY KEY NOT NULL,
	[name] VARCHAR(40) NOT NULL,
	region int NOT NULL,
	FOREIGN KEY (region) REFERENCES tbl_regions(id)
);

CREATE TABLE tbl_locations(
	id int PRIMARY KEY NOT NULL,
	street_address varchar(40) NULL,
	postal_code varchar(12) NULL,
	city varchar(30) NOT NULL,
	state_province varchar(25) NULL,
	country char(3) NOT NULL,
	FOREIGN KEY (country) REFERENCES tbl_countries(id)
);

CREATE TABLE tbl_departments(
	id int PRIMARY KEY NOT NULL,
	[name] varchar(30) NOT NULL,
	[location] int NOT NULL,
	FOREIGN KEY (location) REFERENCES tbl_locations(id)
);

CREATE TABLE tbl_jobs(
	id varchar(10) PRIMARY KEY NOT NULL,
	title VARCHAR(35) NOT NULL,
);

CREATE TABLE tbl_job_histories(
	employee int (6) PRIMARY KEY NOT NULL,
	[start_date] DATE,
	end_date DATE NULL,
	status varchar(10) NOT NULL,
	job varchar(10) NOT NULL,
	department int NOT NULL,
	FOREIGN KEY (job) REFERENCES tbl_jobs(id),
	FOREIGN KEY (department) REFERENCES tbl_departments(id),
	FOREIGN KEY (employee) REFERENCES tbl_employees(id),
);
