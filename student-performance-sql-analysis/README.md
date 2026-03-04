# 🎓 Student Performance Analysis – SQL Project

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-green)
![Education Analytics](https://img.shields.io/badge/Project-Education%20Analytics-orange)

---

# 📌 Project Overview

Understanding what drives student success is essential for improving educational outcomes.

This project analyzes a dataset containing various aspects of student life such as study habits, sleep patterns, attendance, and extracurricular activities to identify factors that influence exam performance.

Using SQL, we explore how study hours, extracurricular participation, and other variables affect student results.

---

# 🎯 Research Questions

This project answers three key questions:

1️⃣ Do students who study **more than 10 hours per week** and participate in **extracurricular activities** perform better?

2️⃣ Is there an **optimal study hour range** that leads to better exam performance?

3️⃣ How can we **rank students by exam performance** without revealing their actual scores?

---

# 🗂 Dataset

The dataset contains information about students and their academic habits.

Each row represents a student and includes:

* Study hours
* Sleep patterns
* Attendance
* Tutoring sessions
* Teacher quality
* Exam score

---

# 📚 Data Dictionary

| Column                     | Description                                 |
| -------------------------- | ------------------------------------------- |
| attendance                 | Percentage of classes attended              |
| extracurricular_activities | Participation in extracurricular activities |
| sleep_hours                | Average hours of sleep per night            |
| tutoring_sessions          | Monthly tutoring sessions                   |
| teacher_quality            | Teacher quality rating                      |
| exam_score                 | Final exam score                            |

---

# 🔎 Analysis Approach

The analysis uses SQL queries to explore relationships between study behavior and exam performance.

Main SQL techniques used:

* Filtering
* Aggregation
* CASE statements
* GROUP BY
* Window Functions

---

# 📊 Key Analyses

## 1️⃣ Study Hours and Extracurricular Activities

This analysis investigates whether studying more than 10 hours per week while participating in extracurricular activities leads to better exam performance.

---

## 2️⃣ Optimal Study Hour Range

Students are categorized into four study ranges:

* 1–5 hours
* 6–10 hours
* 11–15 hours
* 16+ hours

We then calculate the average exam score for each group.

---

## 3️⃣ Student Ranking

A window function is used to rank students based on their exam performance without revealing the actual exam scores.

Students with the same score share the same rank.

---

# 💡 Key Insights

Potential observations from the analysis:

• Students who study more hours tend to achieve higher exam scores.

• There may be an optimal study range where performance peaks.

• Factors like sleep and tutoring sessions can also influence student success.

These insights can help educators design better learning strategies.

---

# 🛠 Skills Demonstrated

This project demonstrates the following skills:

* SQL Data Analysis
* Data Aggregation
* Window Functions
* Data Exploration
* Analytical Thinking
* Data Storytelling

---


# 📌 Conclusion

This project demonstrates how SQL can be used to analyze educational data and uncover patterns that influence student performance.

By analyzing study habits and academic behaviors, educators and students can better understand what drives academic success.
