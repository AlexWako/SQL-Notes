--CREATE helps with creating a new table for the database
--CREATE TABLE TABLE_NAME(
--COLUMN_NAME TYPE CONSTRAINT,
--COLUMN_NAME TYPE CONSTRAINT,
--..., TABLE_CONSTRAINT TABLE_CONSTRAINT ...)
--INHERITS EXISTING_TABLE_NAME
--Using TYPE = SERIAL which is a sequence of number from 1 to the limit can make sure the column is a primary key

--Example of creating a table called account, job
CREATE TABLE accounts(
user_id SERIAL PRIMARY KEY,
user_name VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(250) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP);

CREATE TABLE job(
job_id SERIAL PRIMARY KEY,
job_name VARCHAR(200) UNIQUE NOT NULL);

--Example of creating a table with foreign key
--The foreign key is constrained with REFERENCES and a reference to the primary key is written after
CREATE TABLE account_job(
user_id INTEGER REFERENCES accounts(user_id),
job_id INTEGER REFERENCES job(job_id),
hire_date TIMESTAMP);

