/*
Partition By
*/

SELECT *
FROM EmployeeDemographics2

SELECT *
FROM EmployeeSalary2

SELECT *
FROM EmployeeDemographics2 dem 
JOIN EmployeeSalary2 sal
	ON dem.EmployeeID = sal.EmployeeID



SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) TotalGender
FROM EmployeeDemographics2 dem 
JOIN EmployeeSalary2 sal
	ON dem.EmployeeID = sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM EmployeeDemographics2 dem 
JOIN EmployeeSalary2 sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary