/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT *
FROM EmployeeDemographics

SELECT distinct(EmployeeID)
FROM EmployeeDemographics


SELECT count(EmployeeID)
FROM EmployeeDemographics

SELECT count(EmployeeID) AS count_id
FROM EmployeeDemographics

SELECT max(age)
FROM EmployeeDemographics

SELECT min(age)
FROM EmployeeDemographics

SELECT avg(age)
FROM EmployeeDemographics