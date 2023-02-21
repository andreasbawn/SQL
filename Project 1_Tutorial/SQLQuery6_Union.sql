/*
Union, Union All
*/

select *
from Tutorial.dbo.EmployeeDemographics2
union 
select *
from Tutorial.dbo.WareHouseEmployeeDemographics2
order by EmployeeID

select *
from Tutorial.dbo.EmployeeDemographics2
union all
select *
from Tutorial.dbo.WareHouseEmployeeDemographics2
order by EmployeeID

--select *
--from Tutorial.dbo.EmployeeDemographics2
--full outer join Tutorial.dbo.WareHouseEmployeeDemographics2
--	on EmployeeDemographics2.EmployeeID = WareHouseEmployeeDemographics2.EmployeeID