--Using LIKE matches characters and is case sensetive
--Adding a % before or after letters fills the word with anything
--Adding a _ before or after letters fills the word with any one character
--Using ILIKE makes LIKE case insensetive
--Adding NOT before LIKE/ILIKE matchers everything that does not match with the string
--SELECT COLUMN_NAME FROM TABLE_NAME
--WHERE COLUMN_NAME LIKE

--Example finding the first_name starting with the letter J in the customer datatable
SELECT * FROM customer
WHERE first_name LIKE 'J%';
