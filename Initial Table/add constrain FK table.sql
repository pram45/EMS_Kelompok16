ALTER TABLE tbl_countries
ADD CONSTRAINT fk_regionid 
FOREIGN KEY (region) REFERENCES tbl_regions(id)

ALTER TABLE tbl_locations
ADD CONSTRAINT fk_country
FOREIGN KEY (country) REFERENCES tbl_countries(id)

ALTER TABLE tbl_departments
ADD CONSTRAINT fk_location
FOREIGN KEY (location) REFERENCES tbl_locations(id)

ALTER TABLE tbl_job_histories
ADD CONSTRAINT fk_job
FOREIGN KEY (job) REFERENCES tbl_jobs(id)

ALTER TABLE tbl_job_histories
ADD CONSTRAINT fk_department
FOREIGN KEY (department) REFERENCES tbl_departments(id)

ALTER TABLE tbl_job_histories
ADD CONSTRAINT fk_employee
FOREIGN KEY (employee) REFERENCES tbl_employees(id)
