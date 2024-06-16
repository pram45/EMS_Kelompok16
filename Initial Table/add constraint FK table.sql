-- FK_id_from_tbl_employees
ALTER TABLE tbl_accounts 
ADD CONSTRAINT FK_id_from_tbl_employees
FOREIGN KEY (id) REFERENCES tbl_employees (id);

-- FK_account_from_tbl_accounts
ALTER TABLE tbl_account_roles
ADD CONSTRAINT FK_account_from_tbl_accounts
FOREIGN KEY (account) REFERENCES tbl_accounts (id);

-- FK_role_from_tbl_roles
ALTER TABLE tbl_account_roles
ADD CONSTRAINT FK_role_from_tbl_roles
FOREIGN KEY (role) REFERENCES tbl_roles (id);

-- FK_role_from_tbl_roles
ALTER TABLE tbl_role_permissions
ADD CONSTRAINT FK_role_from_tbl_roles_id
FOREIGN KEY (role) REFERENCES tbl_roles (id);

-- FK_permissions_from_tbl_permissions
ALTER TABLE tbl_role_permissions
ADD CONSTRAINT FK_permission_from_tbl_permissions_id
FOREIGN KEY (permission) REFERENCES tbl_permissions (id);
