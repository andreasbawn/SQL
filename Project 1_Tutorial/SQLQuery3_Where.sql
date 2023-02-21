/*
Select Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/


SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'jim'

SELECT *
FROM EmployeeDemographics
WHERE Age < 30

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age > 30 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics2
WHERE Age is null

SELECT *
FROM EmployeeDemographics2
WHERE Age is not null

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Toby', 'Kevin')