/*
Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age = 38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Young'
--END
--FROM Tutorial.dbo.EmployeeDemographics2
--WHERE Age is not null
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM Tutorial.dbo.EmployeeDemographics2
INNER JOIN Tutorial.dbo.EmployeeSalary2
	ON EmployeeDemographics2.EmployeeID = EmployeeSalary2.EmployeeID