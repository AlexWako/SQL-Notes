--Using AS with the SELECT statement can assign a new name to the selected column
--The new name is assigned at the very end, so the new name cannot be called withing the 
--SELECT COLUMN_NAME AS NEW_NAME FROM TABLE_NAME

--Example finding the number of rows in the paymenet datatable as num_transaction
SELECT COUNT(*) AS num_transaction FROM payment;

