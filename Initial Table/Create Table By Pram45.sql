-------------------------------
-- AUTHOR	: pram45
-- TIME		: 12 - 06 - 24
-- PEMBUATAN TABLE
-------------------------------

CREATE TABLE tbl_regions(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] VARCHAR(25) NOT NULL
);

CREATE TABLE tbl_countries(
	id char(3) PRIMARY KEY NOT NULL,
	[name] VARCHAR(40) NOT NULL,
	region int NOT NULL,
	FOREIGN KEY (region) REFERENCES tbl_regions(id)
);

CREATE TABLE tbl_locations(
	id int IDENTITY PRIMARY KEY NOT NULL,
	street_address varchar(40) NULL,
	postal_code varchar(12) NULL,
	city varchar(30) NOT NULL,
	state_province varchar(25) NULL,
	country char(3) NOT NULL,
	FOREIGN KEY (country) REFERENCES tbl_countries(id)
);

CREATE TABLE tbl_departments(
	id int IDENTITY PRIMARY KEY NOT NULL,
	[name] varchar(30) NOT NULL,
	[location] int NOT NULL,
	FOREIGN KEY (location) REFERENCES tbl_locations(id)
);

CREATE TABLE tbl_jobs(
	id varchar(10) PRIMARY KEY NOT NULL,
	title VARCHAR(35) NOT NULL,
	min_salary int NULL,
	max_salary int NULL

);

-------------------------------
-- AUTHOR	: rafi446
-- TIME		: 12 - 06 - 24
-- PEMBUATAN TABLE
-------------------------------

CREATE TABLE tbl_employees (
	id int IDENTITY(100000,1) PRIMARY KEY CHECK (ID BETWEEN 100000 AND 999999) NOT NULL,
	first_name varchar (25),
	last_name varchar (25) NULL,
	gender varchar (10) CHECK (gender IN ('Male', 'Female')),
	email varchar (25) NOT NULL,
	phone varchar (20) NULL,
	hire_date date NOT NULL,
	salary int NULL,
	manager int NULL,
	job varchar(10) NOT NULL,
	department int NOT NULL,
	FOREIGN KEY (manager) REFERENCES tbl_employees(id),
	FOREIGN KEY (job) REFERENCES tbl_jobs(id),
	FOREIGN KEY (department) REFERENCES tbl_departments
);

-------------------------------
-- AUTHOR	: pram45
-- TIME		: 12 - 06 - 24
-- PEMBUATAN TABLE
-------------------------------


CREATE TABLE tbl_job_histories(
	employee int PRIMARY KEY NOT NULL,
	[start_date] DATE,
	end_date DATE NULL,
	[status] varchar(10) NOT NULL,
	job varchar(10) NOT NULL,
	department int NOT NULL,
	FOREIGN KEY (job) REFERENCES tbl_jobs(id),
	FOREIGN KEY (department) REFERENCES tbl_departments(id),
	FOREIGN KEY (employee) REFERENCES tbl_employees(id),
);

-------------------------------
-- AUTHOR	: rafi446
-- TIME		: 12 - 06 - 24
-- PEMBUATAN TABLE
-------------------------------

CREATE TABLE tbl_permissions(
	id int PRIMARY KEY,
	name varchar(100) NOT NULL
);

CREATE TABLE tbl_roles(
	id int PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE tbl_role_permissions(
	id int PRIMARY KEY,
	role int NOT NULL,
	permission int NOT NULL,
	FOREIGN KEY (role) REFERENCES tbl_roles(id),
	FOREIGN KEY (permission) REFERENCES tbl_permissions(id)
);

CREATE TABLE tbl_accounts(
	id int IDENTITY(100000,1) PRIMARY KEY CHECK (ID BETWEEN 100000 AND 999999), -- PK, FK
	username varchar(25),
	password varchar(255) NOT NULL,
	otp int NOT NULL,
	is_expired datetime NOT NULL,
	is_used bit NOT NULL,
	FOREIGN KEY (id) REFERENCES tbl_employees(id)
);

CREATE TABLE tbl_account_roles(
	id int PRIMARY KEY,
	account int NOT NULL,
	role int NOT NULL,
	FOREIGN KEY (account) REFERENCES tbl_accounts(id),
	FOREIGN KEY (role) REFERENCES tbl_roles(id)
);
