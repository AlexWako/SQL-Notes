--Self join combines the same table together
--SELECT TABLE_NAME_A.COLUMN_NAME, TABLE_NAME_B.COLUMN_NAME
--FROM TABLE_NAME AS TABLE_NAME_A
--JOIN TABLE_NAME AS TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME

--Example finding films that have the same run time in the films data table
SELECT f1.title, f2.title, f1.length FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length;