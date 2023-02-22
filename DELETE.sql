--Using DELETE removes row from tables
--DELETE FROM TABLE_NAME
--WHERE conditon;

--Example deleting a row from the job table
DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

