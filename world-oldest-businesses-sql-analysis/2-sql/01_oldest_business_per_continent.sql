-- What is the oldest business on each continent?
WITH oldest_year AS (
    SELECT 
        c.continent,
        MIN(b.year_founded) AS year_founded
    FROM businesses b
    INNER JOIN countries c
        ON b.country_code = c.country_code
    GROUP BY c.continent
)

SELECT 
    c.continent,
    c.country,
    b.business,
    b.year_founded
FROM businesses b
INNER JOIN countries c
    ON b.country_code = c.country_code
INNER JOIN oldest_year o
    ON c.continent = o.continent
   AND b.year_founded = o.year_founded;