--Using HAVING allows to create condition that the WHERE statement could not on the aggregate function 
--SELECT COLUMN_NAME, AGG(COLUMN_NAME) FROM TABLE_NAME
--GROUP BY COLUMN_NAME
--HAVING condition for AGG(COLUMN_NAME)

--Example grouping the sum of amount greater than 100 by customer_id from the payment datatable
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;
