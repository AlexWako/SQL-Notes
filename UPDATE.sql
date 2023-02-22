--UPDATE allows for data to be changed 
--UPDATE TABLE_NAME
--SET change to table
--WHERE condition;

--Example changing last_login 
UPDATE accounts
SET last_login = CURRENT_TIMESTAMP;

--Example updating the account_job table using the accounts table
UPDATE account_job
SET hire_date = accounts.created_on
FROM accounts
WHERE account_job.user_id = accounts.user_id;

--Using RETURNING with the update statement can help with identifying the change
UPDATE accounts
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;