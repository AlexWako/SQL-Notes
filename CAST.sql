--CAST operator changes one data type into another
--SELECT CAST('STRING' AS INTEGER)
--PostgreSQL has a sepcialized operator for CAST
--SELECT 'STRING'::INTEGER

--Example finding the digits of inventory_id from rental by changing the INTEGER into a STRING
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;

