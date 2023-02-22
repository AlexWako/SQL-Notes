--Types of data
--Boolean: True or False
--Character: char, varchar, or text
--Numeric: integer and floating-point number
--Temporal: data, time, timestamp, and interval
--UUID: Universally Unique Identifiers
--Array: Stores an array of data
--JSON
--Hstore key-value pair
--Looking at the documentation can help with figuring out what data type a data should be stored in

--A primary key is a set of attributes that uniquely identify each row
--A primary key is unique to each table in a relation

--A foreign key is/are attribute(s) that match with primary keys in another table

--On postgres SQL, clicking on the table information and clicking on the constraint helps with identifying primary and foreign keys

--Constraints are rules enforced on the data that can help with the reliability and accuracy of the data
--For column constraints:
--NOT NULL constraint prevents any data entered from being null
--UNIQUE constraint ensures that all data entered is unique
--PRIMARY KEY constraint ensures all rows are uniquely identified
--FOREIGN KEY constraints data based on columns in other tables
--CHECK constraints ensures that all data in a column follows a certain condition
--EXCLUSION constraints ensures if two rows are compared on a specific column, not all the comparisons will return TRUE
--For table constraints:
--CHECK(condition) constraint checks a condition when changing the data table
--REFERENCES constraint constrains the value stored in the column that exists in another table
--UNIQUE(column_list) constraint ensures that all data in the specified columns is unique
--PRIMARY KEY(column_list) constraint makes all the specified columns become primary keys
