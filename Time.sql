--Date and time information in postgres SQL
--TIME: Only time
--DATE: Only date
--TIMESTAMP: Contains date and time
--TIMSTAMPZ: Contains data, time, and timezone
--Information about time can be removed but not added

--Returning the specific timezone the computer is in
SHOW TIMEZONE;

--Returning the current time and date with timezone
SELECT NOW();

--Returning the current time and date with timezone as a string
SELECT TIMEOFDAY();

--Returning the current time
SELECT CURRENT_TIME;

--Returning the current date
SELECT CURRENT_DATE;

--Using EXTRACT() allows for extracting a component of the time and date from the data
--EXTRACT(YEAR FROM COLUMN_NAME)

--Using AGE() allows for calculating the age of the timestamp based on the difference between current time and the data
--AGE(COLUMN_NAME)

--Using TO_CHAR() converts data types into strings
--Using the documentation can help figure out what formats to be used
--TO_CHAR(COLUMN_NAME, 'format')

--Example extracting the years from payment_date in the payment data table
SELECT EXTRACT(YEAR FROM payment_date) FROM payment;

--Example finding how old each timestamp is from payment_date in the payment data table
SELECT AGE(payment_date) FROM payment;

--Example reformatting payment_date from payment datatable into just a full capitalized month and year
SELECT TO_CHAR(payment_date, 'MONTH-YYYY') FROM payment;

