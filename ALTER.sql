--The ALTER statement can make many changes to the table
--Adding, dropping, or renaming columns
--Changing a columns data type
--Set default values for a column
--Add CHECK constraint
--Rename table
--ALTER TABLE TABLE_NAME action

--Example changing names of a table
ALTER TABLE information
RENAME TO new_info;

--Example changing name of a column
ALTER TABLE new_info
RENAME COLUMN person TO people;

--Example changing constraint of a column
ALTER TABLE new_info
ALTER COLUMN people DROP NOT null;

