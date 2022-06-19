--4)department wise total working years--

select * from [dbo].[Merged$]

select Department ,sum(table2#totalworkingyears) as total_working_year 
from Merged$
group by Department
