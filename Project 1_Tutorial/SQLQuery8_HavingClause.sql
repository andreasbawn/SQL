/*
Having Clause
*/

SELECT JobTitle, AVG(Salary) AS AVGSalary
FROM Tutorial.dbo.EmployeeDemographics2
JOIN Tutorial.dbo.EmployeeSalary2
	ON EmployeeDemographics2.EmployeeID = EmployeeSalary2.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVGSalary 

