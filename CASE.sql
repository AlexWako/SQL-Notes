--CASE statements return a result based on if a condition is met
--CASE 
--WHEN condition THEN result
--ELSE result
--END

--CASE expression is similar to a statement just that a expression is added to the beginning of CASE in which the conditions are possible values for that expression 
--CASE expression
--WHEN value THEN result
--ELSE result
--END

--Example of using CASE to sort customers as 'Premium,' 'Plus,' and 'Normal'
SELECT customer_id,
CASE
WHEN customer_id <= 100 THEN 'Premium'
WHEN customer_id BETWEEN 100 AND 200 THEN 'Plus'
ELSE 'Normal'
END
FROM customer;

--Example of using CASE expression to sort certain customers into raffle winners
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer;

--Operations can be done to the case columns

--Example of finding the number of bargains based on the number of rental_rate at $0.99
SELECT
SUM(CASE rental_rate
   		WHEN 0.99 THEN 1
   		ELSE 0
	END) AS number_of_bargains
FROM film;

