--Using GROUP BY splits a categorical column into different categories
--Columns called in the SELECT statements that do not have an aggregate function must be called in the GROUP BY statement
--WHERE statements should not be refer to the aggregated data
--Using ORDER BY can help with sorting results based on the aggregate function but make sure to state the entire aggregate function
--SELECT category_column_name, AGG(data_col)
--FROM table_name
--WHERE (condition)
--GROUP BY category_column_name

--Example grouping the sum of amount by customer_id from the payment datatable
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

--Example grouping the sum of amount by staff_id and customer_id from the payment datatable
SELECT staff_id, customer_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;

--Using DATE(COLUMN_NAME_WITH_DATE_TYPE) will convert any dates with timestamp to just year-month-day
--SELECT DATE(COLUMN_NAME) FROM TABLE_NAME