/*
Updating, Deleting Data
*/

SELECT *
FROM Tutorial.dbo.EmployeeDemographics2

UPDATE Tutorial.dbo.EmployeeDemographics2
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE Tutorial.dbo.EmployeeDemographics2
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

DELETE FROM Tutorial.dbo.EmployeeDemographics2
WHERE EmployeeID = 1005

/* BIAR LEBIH AMAN DAN HATI-HATI DALAM MENGHAPUS*/
/* Step 1*/
SELECT *
FROM Tutorial.dbo.EmployeeDemographics2
WHERE EmployeeID = 1004

/* Step 2*/
DELETE
FROM Tutorial.dbo.EmployeeDemographics2
WHERE EmployeeID = 1004