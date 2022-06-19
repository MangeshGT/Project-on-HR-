--2)Average hourly rate of male research scientist---
select * from Merged$


create view vwavghourlyrate_of_male_researchscientist as
select Gender,ROUND(avg(hourlyrate),0,1) as avg_hourlyrate_male_research_scientist

from Merged$
where JobRole='research scientist'
group by Gender

