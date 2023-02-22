--Aggregate functions
--AVG(): Returns average values
--Returns at an infinite amount of decimal points
--Using ROUND(number, decimal places) will help with finding the average in smaller decimal places
--COUNT(): Returns number of values
--MAX(): Returns maximum value
--MIN(): Returns minimum value
--SUM(): Returns the sum of all values

--Example finding the minimum replacement cost from film datatable
SELECT MIN(replacement_cost) FROM film;

--Example finding the average replacement cost from film datatable
SELECT ROUND(AVG(replacement_cost), 2) FROM film;

--Example finding the sum of all replacement cost from fil datatable
SELECT SUM(replacement_cost) FROM film;