WITH first_quarter_jobs AS (
    SELECT  *
    FROM january_jobs

    UNION ALL

    SELECT  *
    FROM february_jobs

    UNION ALL

    SELECT *
    FROM march_jobs
)

SELECT 
    job_title_short,
    job_location,
    job_via,
    job_posted_date::date,
    salary_year_avg
FROM first_quarter_jobs
WHERE salary_year_avg > 70000 AND
    job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC