--ORDER BY orders a specific column and is ascending by default
--The order is alphabetical if strings and numerical if integer
--Use ASC for ascending order and DESC for descending order
--SELECT COLUMN_NAME FROM TABLE_NAME
--ORDER BY COLUMN_NAME ASC/DESC

--ORDER BY can sort multiple columns
--The order it is ordered is dependant on how the columns are listed
--SELECT COLUMN_NAME1, COLUMN_NAME2 FROM TABLE_NAME
--ORDER BY COLUMN_NAME1, COLUMN_NAME2 (Orders by 1 then 2)

--Example ordering the customer table by first_name
SELECT * FROM customer
ORDER BY first_name ASC;

--Example ordering the customer table by store_id 
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id ASC;

--Ordering by one column does not order any other columns and the rest of the columns are shown by random
--Example ordering the customer table by store_id, first_name, last_name
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id, first_name, last_name ASC;
