/*
Inner Joins, Full/Left/Right Outer Joins
*/

--Select *
--FROM Tutorial.dbo.EmployeeDemographics2

--Select *
--FROM Tutorial.dbo.EmployeeSalary2

SELECT Gender, AVG(Salary) AS AVGSalary
FROM Tutorial.dbo.EmployeeDemographics2
Inner Join Tutorial.dbo.EmployeeSalary2
	ON EmployeeDemographics2.EmployeeID = EmployeeSalary2.EmployeeID
WHERE Gender IN ('Male','Female')
Group by Gender