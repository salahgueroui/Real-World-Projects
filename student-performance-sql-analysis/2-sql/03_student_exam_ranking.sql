-- student_exam_ranking
select attendance,hours_studied,sleep_hours,tutoring_sessions,
		DENSE_RANK() over (order by exam_score desc) as exam_rank
from student_performance
limit 30