--INNER JOIN joins two tables together with data that matches in both tables
--SELECT * FROM TABLE_NAME_A 
--INNER JOIN TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME
--Switching around the order of naming of the two tables will result in the same data
--Using TABLE_NAME.COLUMN_NAME will specify which table the column is from

--Example of joining payment and customer datatable on customer_id
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--FULL OUTER JOIN joins two tables together regardless of the data
--SELECT * FROM TABLE_NAME_A
--FULL OUTER JOIN TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME
--Data in columns that do not match will have part of its table null

--Using FULL OUTER JOIN, all data not shown in INNER JOIN can be shown
--SELECT * FROM TABLE_NAME_A
--FULL OUTER JOIN TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME
--WHERE TABLE_NAME_A.COLUMN_NAME is null OR TABLE_NAME_B.COLUMN_NAME is null

--Example finding customers without payment_ids
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null OR payment.payment_id IS null;

--LEFT OUTER JOIN grabs all data from the TABLE_NAME_A called in the SELECT statement with any data found in TABLE_NAME_B that matches also being added to the result
--Be careful since order does matter
--SELECT * FROM TABLE_NAME_A
--LEFT OUTER JOIN TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME

--Using LEFT OUTER JOIN can also result in a datatable that has data only exclusive to TABLE_NAME_A
--SELECT * FROM TABLE_NAME_A
--LEFT OUTER JOIN TABLE_NAME_B
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME
--WHERE TABLE_NAME_B.COLUMN_NAME IS null

--Example using LEFT OUTER JOIN to find the inventory_id and store_id from the inventory datatable using the different film_id from the film datatable
SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id;

--Example using LEFT OUTER JOIN to find films from the film datatable that is not in inventory
SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

--Using RIGHT OUTER JOIN is essentially a LEFT OUTER JOIN just that the TABLE_NAME_A stated in the SELECT statement will become the data being added to TABLE_NAME_B
--Be careful since order does matter
--SELECT * FROM TABLE_NAME_B
--RIGHT OUTER JOIN TABLE_NAME_A
--ON TABLE_NAME_A.COLUMN_NAME = TABLE_NAME_B.COLUMN_NAME

--UNION just combines the results of two select statements together
--SELECT * FROM TABLE_NAME_A
--UNION
--SELECT * FROM TABLE_NAME_B

SELECT email FROM customer
LEFT OUTER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

SELECT title, first_name, last_name FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';