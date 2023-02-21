/*
String Function - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

--Drop table EmployeeErrors;


CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flederson - Fired')

SELECT *
FROM EmployeeErrors

--Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) IDTRIM
FROM EmployeeErrors


-- Using Replace

SELECT LastName, REPLACE(LastName, '- Fired','') AS LastNameFixed
FROM EmployeeErrors

SELECT FirstName, REPLACE(FirstName, 'O','o')
FROM EmployeeErrors

-- Using Substring

SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT SUBSTRING(err.FirstName,1,3) , SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics2 dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3) , dem.FirstName, SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics2 dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

-- Using Upper and Lower

SELECT FirstName, LOWER(FIrstName)
FROM EmployeeErrors


SELECT FirstName, UPPER(FIrstName)
FROM EmployeeErrors


SELECT FirstName, LOWER(FIrstName)
FROM EmployeeErrors