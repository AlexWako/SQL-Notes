--VIEW is a database object that is a query table
--In other words, it is a copy of the query table; it is not added into the database
--SELECT * FROM VIEW 

--Creating a view table using first_name, last_name, address from customer and address
CREATE VIEW customer_info AS
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

--Now the queried table can be referenced
SELECT * FROM customer_info

--A view table can be replaced using CREATE OR REPLACE VIEW
--CREATE OR REPLACE VIEW view_name AS ...

--Replacing the customer_info view by adding the district column
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

--A view table can also have its name changed using ALTER
--ALTER VIEW view_name RENAME TO new_view_name


