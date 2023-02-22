--BETWEEN can be used instead of > x AND < y
--NOT can be added before between to denote any value not within the parameters
--Dates can also be used in the format year-month-date
--SELECT COLUMN_NAME FROM TABLE_NAME
--WHERE COLUMN_NAME BETWEEN x AND y;

--Example to find the number of rows from payment where the amount is between 8 and 9
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

--Example to find the number of rows from payment where the amount is not between 8 and 9
SELECT COUNT(*) FROM payment 
WHERE amount NOT BETWEEN 8 AND 9;

--Example to find the rows from payment where the payment date is between 02-01 and 02-15 in 2007
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
--Note that the two parameters are not inclusive and only go upto the 00:00 hour mark of that day

