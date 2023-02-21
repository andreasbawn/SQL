/*
Grup By, Order By
*/

SELECT *
FROM EmployeeDemographics2
ORDER BY 4 DESC, 5 DESC

SELECT DISTINCT(Gender), COUNT(Gender) AS JumlahGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY JumlahGender ASC

SELECT DISTINCT(Gender), COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT DISTINCT(Gender),Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age