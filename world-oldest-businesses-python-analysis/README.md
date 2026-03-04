# 🌍 World Oldest Businesses Analysis (Python)

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Processing-green)
![Project](https://img.shields.io/badge/Project-Exploratory%20Analysis-orange)

---

# 📌 Project Overview

Some businesses manage to survive for centuries despite wars, economic crises, and political changes.

For example, **Staffelter Hof Winery in Germany**, founded in **862**, is one of the oldest companies still operating today.

This project analyzes a global dataset of the **oldest businesses still in operation across different countries** using **Python and Pandas**.

The goal is to explore patterns that help businesses survive for long periods of time.

---

# 🎯 Research Questions

This analysis answers three main questions:

1️⃣ What is the **oldest business on each continent**?

2️⃣ How many countries **lack data about their oldest businesses**?

3️⃣ Which **business categories survive the longest**, and on which continents?

---

# 🗂 Dataset

The dataset contains information about the oldest businesses across the world.

It is split into multiple CSV files:

| Table          | Description                             |
| -------------- | --------------------------------------- |
| businesses     | Oldest businesses per country           |
| new_businesses | Additional business records             |
| countries      | Country names and continent information |
| categories     | Business category definitions           |

---

# 📚 Data Dictionary

### businesses / new_businesses

| Column        | Description                  |
| ------------- | ---------------------------- |
| business      | Business name                |
| year_founded  | Year the company was founded |
| category_code | Category identifier          |
| country_code  | ISO country code             |

### countries

| Column       | Description    |
| ------------ | -------------- |
| country_code | Country code   |
| country      | Country name   |
| continent    | Continent name |

### categories

| Column        | Description         |
| ------------- | ------------------- |
| category_code | Category identifier |
| category      | Business category   |

---

# 🔎 Analysis Approach

The analysis is performed using **Python and Pandas**.

Main steps:

1. Load multiple datasets.
2. Merge tables using `merge()`.
3. Combine datasets using `concat()`.
4. Perform aggregations using `groupby()`.
5. Identify the oldest businesses and categories by continent.

---

# 📊 Key Analyses

## 1️⃣ Oldest Business by Continent

Identify the earliest founded company on each continent.

---

## 2️⃣ Countries Missing Business Data

Determine which countries lack information about their oldest businesses.

---

## 3️⃣ Longest Lasting Business Categories

Analyze which business categories tend to survive the longest across continents.

---

# 📈 Results

The analysis produces three result tables:

| Result                        | Description                            |
| ----------------------------- | -------------------------------------- |
| oldest_business_per_continent | Oldest company in each continent       |
| missing_business_data         | Countries missing business information |
| oldest_categories             | Oldest business category per continent |

These results can be found in the **results** folder.

---

# 🛠 Tools Used

* Python
* Pandas
* Data Analysis

---

# 🧠 Skills Demonstrated

This project demonstrates:

* Data merging with Pandas
* Multi-table data analysis
* GroupBy aggregation
* Exploratory data analysis
* Analytical thinking

---

# 📌 Conclusion

This project explores the world's oldest businesses to understand how certain industries and regions maintain companies that survive for centuries.

The results highlight how traditional industries such as hospitality, food production, and alcohol manufacturing frequently appear among the oldest businesses.
