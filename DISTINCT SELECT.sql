--Adding DISTINCT before the column being printed returns only the unique values in the column
--SELECT DISTINCT COLUMN_NAME FROM TABLE_NAME

--Example to find all the unique years a film was published in the film table
SELECT DISTINCT release_year FROM film;

SELECT DISTINCT rating FROM film;