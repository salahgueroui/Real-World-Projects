select stay,
	count(*)as count_int,
	round(avg(todep),2)as average_phq,
	round(avg(tosc),2)as average_scs,
	round(avg(toas),2)as average_as
from students
where inter_dom='Inter'
	and stay is not null	
group by stay 
order by stay desc
limit 9