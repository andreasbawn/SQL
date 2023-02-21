SELECT *
FROM Tutorial.dbo.EmployeeDemographics2

SELECT *
FROM Tutorial.dbo.EmployeeSalary2

SELECT TOP 5 *
FROM Tutorial.dbo.EmployeeDemographics2

SELECT DISTINCT(Age)
FROM Tutorial.dbo.EmployeeDemographics2

SELECT COUNT(Age)
FROM Tutorial.dbo.EmployeeDemographics2

SELECT COUNT(LastName) LastName
FROM Tutorial.dbo.EmployeeDemographics2

SELECT MAX(Salary)
FROM Tutorial.dbo.EmployeeSalary2

SELECT MIN(Salary)
FROM Tutorial.dbo.EmployeeSalary2

SELECT AVG(Salary)
FROM Tutorial.dbo.EmployeeSalary2

SELECT Salary
FROM Tutorial.dbo.EmployeeSalary2

SELECT *
FROM EmployeeDemographics2
WHERE FirstName = 'Angela'

SELECT *
FROM EmployeeDemographics2
WHERE FirstName <> 'Angela'

SELECT FirstName, Age, Gender
FROM EmployeeDemographics2
WHERE Age < 35 AND Gender = 'Male'
