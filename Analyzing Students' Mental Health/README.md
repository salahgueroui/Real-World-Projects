Project Overview

Studying abroad offers exciting opportunities but also introduces psychological challenges.

A Japanese international university conducted a survey in 2018 to investigate the mental health of its students. The research found that international students may face higher risks of depression due to cultural adjustment and social challenges.

This project analyzes student survey data using SQL to explore how the length of stay in Japan affects mental health indicators among international students.

Research Questions

The analysis focuses on the following questions:

Does the length of stay affect depression levels?

Do students become more socially connected over time?

Does acculturative stress decrease as students adapt?

Dataset

The dataset contains survey responses from students enrolled in a Japanese international university.

Each row represents one student and includes demographic and psychological diagnostic scores.

Total records:

201 students
Data Dictionary
Column	Description
inter_dom	Student type (international or domestic)
stay	Length of stay in Japan (years)
todep	Depression score (PHQ-9 test)
tosc	Social connectedness score
toas	Acculturative stress score
Analysis Approach

The analysis focuses specifically on international students.

Steps:

Filter international students

Group students by length of stay

Count number of students per stay duration

Calculate average mental health indicators

Compare how scores change over time

SQL Query
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

The analysis returns a table with the following structure:

stay	count_int	average_phq	average_scs	average_as
...	...	...	...	...

This table shows how mental health indicators vary based on the length of stay.

Key Insights

Possible interpretations include:

• Students who stay longer may experience lower acculturative stress as they adapt to the culture.

• Social connectedness may increase over time as students build relationships.

• Depression levels may fluctuate depending on adaptation and support systems.

These insights highlight the importance of social integration and support for international students.

Conclusion

This analysis demonstrates how SQL can be used to explore psychological and social factors affecting international students.

Understanding how length of stay influences mental health can help universities design better support systems for students studying abroad.