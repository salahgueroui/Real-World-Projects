-- avg_exam_score_by_hours_studied_range
SELECT
    CASE
        WHEN hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
        WHEN hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
        WHEN hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
        WHEN hours_studied >= 16 THEN '16+ hours'
    END AS hours_studied_range,
    AVG(exam_score) AS avg_exam_score
FROM student_performance
GROUP BY
    CASE
        WHEN hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
        WHEN hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
        WHEN hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
        WHEN hours_studied >= 16 THEN '16+ hours'
    END
ORDER BY avg_exam_score DESC;
