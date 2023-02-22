--INSTEAD of using multiple operators, IN can be used to print rows with values equaling a list of different options
--SELECT COLUMN_NAME FROM TABLE_NAME
--WHERE VALUE IN (list of options)

--Example showing the rows that have values equaling the amount 0.99, 1.98, 1.99 in the payment datatable
SELECT * FROM payment
WHERE amount IN (0.99, 1.98, 1.99)