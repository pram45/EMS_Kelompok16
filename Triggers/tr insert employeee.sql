USE [db_test]
GO
/****** Object:  Trigger [dbo].[tr_insert_employee]    Script Date: 18/06/2024 00.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_insert_employee]
  ON [dbo].[tbl_employees]
  FOR INSERT 
  AS
BEGIN
  
  INSERT INTO tbl_job_histories (
    employee,
    start_date,
    end_date,
    status,
    job,
    department
  )
  SELECT 
    inserted.id,
    GETDATE(),
    NULL,
    'Active',
    inserted.job,
    inserted.department
  FROM inserted;

END;