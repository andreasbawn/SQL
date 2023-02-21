/*
Aliasing
*/

SELECT FirstName 
FROM EmployeeDemographics2

SELECT FirstName AS Fname
FROM EmployeeDemographics2

SELECT FirstName  Fname
FROM EmployeeDemographics2


SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics2


SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics2


SELECT Demo.EmployeeID
FROM EmployeeDemographics2 AS Demo


SELECT Demo.EmployeeID, Sal.EmployeeID
FROM EmployeeDemographics2 AS Demo
JOIN EmployeeSalary2 AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID


SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM EmployeeDemographics2 a
LEFT JOIN EmployeeSalary2 b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics2 c
	ON a.EmployeeID = c.EmployeeID