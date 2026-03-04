-- How many countries per continent lack data on the oldest businesses
-- Does including the `new_businesses` data change this?
select  c.continent,count(c.country) countries_without_businesses
from
	(
	select country_code from businesses 
	union 
	select country_code from new_businesses	
	) as bs
right join countries c
on bs.country_code = c.country_code
WHERE bs.country_code IS NULL
group by  c.continent