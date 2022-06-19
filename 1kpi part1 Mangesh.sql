select * from Merged$

select department, COUNT(attrition) as Yes_attrition
from		merged$
where 		attrition='yes'
group by	department

select department, COUNT(attrition) as No_attrition
from		merged$
where 		attrition='no'
group by	department

select count(attrition) as total_Attrition_of_sales
from Merged$
where Department= 'sales'


