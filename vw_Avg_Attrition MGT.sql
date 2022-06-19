----1)Average attrition rate for all Department/---
Create view [dbo].[vw_Avg_Attrition] as 
With CTe2 AS(
select department,COUNT(Attrition) as Total_Member 
from		merged$
group by	department)
, Cte3 As (select department,COUNT(attrition) as yes_attrition 
from		merged$
where 		attrition='yes'
group by	department)

select A.Department, Cast(Cast(b.yes_attrition AS decimal(20,2))/
Cast(a.Total_Member AS Decimal(20,2)) AS decimal(20,2))*100 as Rate 
From CTe2 as a
inner join Cte3 as b on a.Department=b.Department

select * from [dbo].[vw_Avg_Attrition]
--------------------------------------------------------------

Create view vw_Avg_no_Attrition as 
With CTe4 AS(
select department,COUNT(Attrition) as Total_Member 
from		merged$
group by	department)
, Cte5 As (select department,COUNT(attrition) as no_attrition 
from		merged$
where 		attrition='no'
group by	department)

select A.Department, Cast(Cast(b.no_attrition AS decimal(20,2))/Cast(a.Total_Member AS Decimal(20,2)) AS decimal(20,2))*100 as Rate 
From CTe4 as a
inner join Cte5 as b on a.Department=b.Department

select * from vw_Avg_no_Attrition











--create view vw_avg_attrition_no as 
--with cte4 as (select department, count(attrition) as No_attrition
--from merged$
--where attrition='no'
--group by department)

--select a.department,CAST(cast(b.no_attrition as decimal(20,2)/cast(a.total_member as decimal(20,2)) as decimal(20,2))*100 as rate 
--from cte2 as a
--inner join cte4 as b on a.department=b.Department
