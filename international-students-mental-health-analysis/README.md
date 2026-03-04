# 📊 Analyzing International Students' Mental Health

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-green)
![Project](https://img.shields.io/badge/Project-Exploratory%20Data%20Analysis-orange)

## 📌 Project Overview

Studying abroad provides valuable academic and cultural opportunities, but it may also introduce psychological challenges as students adapt to a new environment.

A Japanese international university conducted a survey in 2018 to investigate the mental health of its students. The research found that international students may face higher risks of depression due to cultural adjustment and social challenges.

This project analyzes the student survey dataset using **SQL** to explore how the **length of stay in Japan affects mental health indicators among international students**.

---

# 🎯 Research Questions

The analysis aims to answer the following questions:

1. Does the **length of stay** affect depression levels?
2. Do international students become **more socially connected over time**?
3. Does **acculturative stress decrease** as students adapt to the culture?

---

# 🗂 Dataset

The dataset contains survey responses from students enrolled at a Japanese international university.

Each row represents **one student** and includes demographic information and psychological diagnostic scores.

**Total records:** 201 students

---

# 📚 Data Dictionary

| Column    | Description                              |
| --------- | ---------------------------------------- |
| inter_dom | Student type (International or Domestic) |
| stay      | Length of stay in Japan (years)          |
| todep     | Depression score (PHQ-9 test)            |
| tosc      | Social connectedness score               |
| toas      | Acculturative stress score               |

---

# 🔎 Analysis Approach

The analysis focuses specifically on **international students**.

Steps performed in the analysis:

1. Filter only international students.
2. Group students by **length of stay in Japan**.
3. Count the number of students per stay duration.
4. Calculate average mental health indicators:

   * Depression score (PHQ-9)
   * Social connectedness score
   * Acculturative stress score
5. Compare how these indicators change across different stay durations.

---

# 🧠 SQL Analysis

```sql
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
```

This query calculates the number of international students and the average mental health diagnostic scores for each length of stay.

---

# 📈 Results

The query produces a table with the following structure:

| stay | count_int | average_phq | average_scs | average_as |
| ---- | --------- | ----------- | ----------- | ---------- |
| ...  | ...       | ...         | ...         | ...        |

This table shows how mental health indicators vary depending on how long students have stayed in Japan.

---

# 💡 Key Insights

Potential observations from the analysis:

• Students who stay longer may experience **lower acculturative stress** as they adapt to the culture.

• **Social connectedness may increase over time** as students build friendships and support networks.

• Depression levels may fluctuate depending on adaptation challenges and support systems.

These insights highlight the importance of **providing social support and cultural integration programs for international students.**

---

# 🛠 Skills Demonstrated

This project demonstrates the following skills:

* SQL Data Analysis
* Data Aggregation
* Exploratory Data Analysis
* Data Storytelling
* Analytical Thinking

---

# 📌 Conclusion

This project explores how the **length of stay in a foreign country influences the mental health of international students**.

By analyzing survey data using SQL, we can identify patterns in depression levels, social connectedness, and acculturative stress.

Understanding these patterns can help universities design better **support systems for international students adjusting to new cultural environments.**
