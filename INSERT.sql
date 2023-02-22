--INSERT allows the user to add rows into existing tables
--The inserted rows must match including constraints
--Adding from another table is also possible
--INSERT INTO TABLE_NAME_A(COLUMN_NAME, COLUMN_NAME, ...)
--SELECT COLUMN_NAME, COLUMN_NAME, ... FROM TABLE_NAME_B
--WHERE condition;

--Example of inserting data into the accounts and job table
INSERT INTO accounts(user_name, password, email, created_on)
VALUES ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES ('astronaut');

INSERT INTO job(job_name)
VALUES ('president');

--Using foreign keys to insert data into account_job
INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (1, 1, CURRENT_TIMESTAMP);