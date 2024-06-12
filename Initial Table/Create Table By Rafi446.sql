CREATE TABLE tbl_employees (
	id int PRIMARY KEY CHECK (ID BETWEEN 100000 AND 999999),
	first_name varchar (25),
	last_name varchar (25) NULL,
	gender varchar (10) CHECK (gender IN ('Male', 'Female')),
	email varchar (25),
	phone varchar (20) NULL,
	hire_date date,
	salary int NULL
);

CREATE TABLE tbl_accounts (
	id int PRIMARY KEY,
	username varchar (25) NULL,
	password varchar (255),
	otp int,
	is_expired date,
	is_used bit -- 1 for active and 0 for expired
);

CREATE TABLE tbl_account_roles (
	id int PRIMARY KEY,
	account int,
	role int
);

CREATE TABLE tbl_roles (
	id int PRIMARY KEY,
	name varchar (50)
);

CREATE TABLE tbl_role_permissions (
	id int PRIMARY KEY,
	role int,
	permission int
);

CREATE TABLE tbl_permissions (
	id int PRIMARY KEY,
	name varchar (100)
);

