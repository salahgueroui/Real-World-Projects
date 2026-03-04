# 🌍 The World's Oldest Businesses – SQL Analysis

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-green)
![Project](https://img.shields.io/badge/Project-Exploratory%20Analysis-orange)

---

# 📌 Project Overview

Some businesses manage to survive for centuries despite wars, economic crises, and political changes.

For example, **Staffelter Hof Winery in Germany**, founded in **862**, is considered one of the oldest businesses still operating today.

This project analyzes a global dataset of the **oldest businesses in different countries** to understand what characteristics help companies survive for centuries.

Using SQL, we explore patterns related to:

* Geography
* Business categories
* Historical longevity

---

# 🎯 Research Questions

This project answers three key questions:

1️⃣ What is the **oldest business on each continent**?

2️⃣ How many countries **lack data about their oldest businesses**?

3️⃣ Which **business categories survive the longest**, and on which continents?

---

# 🗂 Dataset

The dataset contains information about the oldest businesses across multiple countries.

The data is stored across several tables and must be combined using **SQL joins**.

### Tables

| Table          | Description                       |
| -------------- | --------------------------------- |
| businesses     | Oldest businesses per country     |
| new_businesses | Additional business records       |
| countries      | Country and continent information |
| categories     | Business category definitions     |

---

# 📚 Data Dictionary

### businesses / new_businesses

| Column        | Description                   |
| ------------- | ----------------------------- |
| business      | Business name                 |
| year_founded  | Year the business was founded |
| category_code | Category identifier           |
| country_code  | ISO country code              |

### countries

| Column       | Description    |
| ------------ | -------------- |
| country_code | Country code   |
| country      | Country name   |
| continent    | Continent name |

### categories

| Column        | Description          |
| ------------- | -------------------- |
| category_code | Category identifier  |
| category      | Category description |

---

# 🔎 Analysis Approach

The analysis required combining multiple datasets using SQL joins.

Main techniques used:

* SQL JOIN
* UNION
* Aggregation
* GROUP BY
* CTE (Common Table Expressions)

---

# 📊 Key Analyses

## 1️⃣ Oldest Business on Each Continent

This analysis identifies the earliest founded company on each continent.

---

## 2️⃣ Countries Without Oldest Business Data

This query identifies countries that lack information about their oldest businesses.

---

## 3️⃣ Longest Lasting Business Categories

This analysis identifies which business categories have survived the longest across continents.

---

# 💡 Key Insights

Some interesting observations from the analysis:

• Certain industries such as **hospitality, food, and alcohol production** appear frequently among the oldest surviving businesses.

• Many of the oldest businesses originated in **Europe and Asia**, reflecting long historical trade traditions.

• Several countries lack documented information about their oldest companies.

These patterns highlight how **traditional industries and cultural heritage businesses often survive for centuries**.

---

# 🛠 Skills Demonstrated

This project demonstrates the following skills:

* SQL Data Analysis
* Data Joining and Data Integration
* Exploratory Data Analysis
* Data Aggregation
* Analytical Thinking
* Data Storytelling

---

# 📌 Conclusion

By analyzing global data on the world's oldest businesses, this project explores patterns in corporate longevity.

The analysis shows that certain industries and regions have a strong tradition of long-lasting businesses, highlighting the importance of cultural heritage, specialization, and adaptability in business survival.
