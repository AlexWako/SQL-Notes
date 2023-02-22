--To select a column of data from a table in the database
--SELECT COLUMN_NAME FROM TABLE_NAME

--For multiple columns, seperate the multiple column names by commas
--Prints out the columns by the order they are listed
--SELECT COLUMN_NAME1, COLUMN_NAME2 FROM TABLE_NAME

--To get all columns from a table, use *
--SELECT * FROM TABLE_NAME

--Example to get all columns in the actor table:
SELECT * FROM actor;

--Example to print the columns in different order:
SELECT last_name, first_name FROM actor;
