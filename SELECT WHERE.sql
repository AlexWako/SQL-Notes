--Comparison operators
--Equal: =
--Greater than: >
--Less than: <
--Greater than or equal to: >=
--Less than or equal to: <=
--Not equal: !=

--Logical operators: AND, OR, NOT

--Using WHERE with the operators can narrow down the data
--SELECT COLUMN_NAME FROM TABLE_NAME WHERE operator

--Example selecting row of people named 'Jared' in the customer table
SELECT * FROM customer
WHERE first_name = 'Jared';

--Example of using logical operators to select rows with rental_rate greater than 4 and replacement_cost greater than or equal to 19.99 in the film table
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

--Adding COUNT with the operators will display the number of rows that meet the operators condition
--SELECT COUNT(COLUMN_NAME) FROM TABLE_NAME WHERE operator

-- Example finding the number of rows that fit the previous example's conditions
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;