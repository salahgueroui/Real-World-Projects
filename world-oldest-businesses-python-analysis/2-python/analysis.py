# Import necessary libraries
import pandas as pd

# Load the data
businesses = pd.read_csv("data/businesses.csv")
new_businesses = pd.read_csv("data/new_businesses.csv")
countries = pd.read_csv("data/countries.csv")
categories = pd.read_csv("data/categories.csv")

# What is the oldest business on every continent?
businesses_countries = businesses.merge(countries, on="country_code")
continent = businesses_countries.groupby("continent").agg({"year_founded":"min"})
merged_continent = continent.merge(businesses_countries, on=["continent", "year_founded"])
oldest_business_continent = merged_continent[["continent", "country", "business", "year_founded"]]
print(oldest_business_continent)


# How many countries per continent lack data on the oldest businesses? 
# Does including the `new_businesses` data change this?
all_businesses = pd.concat([new_businesses, businesses])
new_all_countries = all_businesses.merge(countries, on="country_code", how="outer",  indicator=True)
new_missing_countries = new_all_countries[new_all_countries["_merge"] != "both"]
count_missing = new_missing_countries.groupby("continent").agg({"country":"count"})
count_missing.columns = ["count_missing"]
print(count_missing)


# Which business categories are best suited to last over the course of centuries?
businesses_categories = businesses.merge(categories, on="category_code")
businesses_categories_countries = businesses_categories.merge(countries, on="country_code")
oldest_by_continent_category = businesses_categories_countries.groupby(["continent", "category"]).agg({"year_founded":"min"})
oldest_by_continent_category.head()