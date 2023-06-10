-- DATA CLEANING STRATEGIES

-- NORMALIZATION OF DATA BASICALLY
	-- STANDARDIZING OR CLEANING UP A COLUMN
    
-- WHAT DO WE NEED
-- CHECK DATA TYPES
-- HOW WILL YOU DATA CLEAN
-- HOW WILL YOU ANALYSE

-- PARSING INFO
-- RETURN WHERE INFO LIVES
-- CHANGING DATA TYPE

USE COMPANYDB;

SELECT * FROM EMPLOYEE;

SELECT RIGHT(FNAME,4)  AS NAME FROM EMPLOYEE;

SELECT -- SUBSTR(FROM START FOR LENGTH)
    SUBSTR(FNAME, 1, 3) AS NAME
FROM
    EMPLOYEE;
    
SELECT CONCAT(FNAME,' ',LNAME) AS NAME 
FROM EMPLOYEE;


-- CHANGING DATATYPE
SELECT CAST(BDATE AS DATE) AS DATED
FROM EMPLOYEE;

-- ADVANCED CLEANING

-- POSITIO 

SELECT BDATE, POSITION("19" IN BDATE)
AS NINETYSKID FROM EMPLOYEE;

-- COALESCE
-- RETURNS THE FIRST NON NULL VALUE

SELECT SSN, COALESCE(SUPER_SSN) AS MANAGERS FROM EMPLOYEE;    
 