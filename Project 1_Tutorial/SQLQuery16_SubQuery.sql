/*
Subquery (in the Select, From, and Where Statement)
*/

SELECT *
FROM EmployeeSalary2

-- Subquery in Select

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary2) as ALLAvgSalary
FROM EmployeeSalary2

-- How to do it in Partition By

SELECT EmployeeID, Salary, AVG(Salary) over () as ALLAvgSalary
FROM EmployeeSalary2

-- Why GroupBy doesn't work

SELECT EmployeeID, Salary, AVG(Salary) as ALLAvgSalary
FROM EmployeeSalary2
GROUP BY EmployeeID, Salary
ORDER BY 1,2

-- Subquery in From

SELECT a.EmployeeID, ALLAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () as ALLAvgSalary
		FROM EmployeeSalary2) a

-- Subquery in Where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary2
WHERE EmployeeID in (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30
		)