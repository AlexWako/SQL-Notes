--COUNT can be used to find the number of rows in a table
--SELECT COUNT(COLUMN_NAME) FROM TABLE_NAME;

--COUNT and DISTINCT can work together to find the number of unique values in a column
--SELECT COUNT(DISTINCT(COLUMN_NAME)) FROM TABLE_NAME;

--Example finding the number of rows in the payment table
SELECT COUNT(payment_id) FROM payment;

--Any column name in a table will give the same amount of rows 
SELECT COUNT(staff_id) FROM payment;

--Example finding the number of unique payment amount in payment table
SELECT COUNT(DISTINCT(amount)) FROM payment;