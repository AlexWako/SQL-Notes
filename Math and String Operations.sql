--Mathematical operators can be used 
--Operations can be found online in the documentations
--SELECT math operation FROM TABLE_NAME

--Example finding the percentage of rental_rate in comparison to replacement_cost from film datatable
SELECT rental_rate/replacement_cost FROM film;

--String operators can also be used
--Operators can also be found online in the documentations
--SELECT string operation FROM TABLE_NAME

--Example concatenating first_name and last_name together from customer datatable
SELECT first_name || ' ' || last_name AS full_name FROM customer;