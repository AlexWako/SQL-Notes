--The COALESCE searches for NULL values in a list of arguments and returns the next value
--COALESCE(arg1, arg2, arg3, ...)

--Useful for one when operations are being done to a column and NULL values may ruin the operations
--SELECT COLUMN_NAME, (COLUMN_NAME - COALESCE(COLUMN_NAME, 0)) FROM TABLE_NAME
