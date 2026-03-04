-- Which business categories are best suited to last over the course of centuries?
SELECT
    c.continent,
    ca.category,
    MIN(b.year_founded) AS year_founded
FROM businesses b
INNER JOIN countries c
    ON b.country_code = c.country_code
INNER JOIN categories ca
    ON b.category_code = ca.category_code
GROUP BY
    c.continent,
    ca.category;
