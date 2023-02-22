--LIMIT shows only the first x rows 
--SELECT COLUMN_NAME FROM TABLE_NAME
--ORDER BY COLUMN_NAME
--LIMIT X;

--Example showing the first five rows of the payment table orderd by payment_date descending
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

