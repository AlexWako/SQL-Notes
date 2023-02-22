--Subquerys can help create a temporary datatable to use 
--SELECT COLUMN_NAME FROM TABLE_NAME
--WHERE condition including subquery

--Example all titles of film with rental_rate greater than the average on the film datatable
SELECT title, rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

