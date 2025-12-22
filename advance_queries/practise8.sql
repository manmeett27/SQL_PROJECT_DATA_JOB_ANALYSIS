SELECT 
    quater1_jobs_postings.job_title_short,
    quater1_jobs_postings.job_location,
    quater1_jobs_postings.job_via,
    quater1_jobs_postings.job_posted_date::DATE,
    quater1_jobs_postings.salary_year_avg
FROM (
    SELECT *
    FROM jan_jobs
    UNION ALL
    SELECT *
    FROM fab_jobs
    UNION ALL
    SELECT *
    FROM mar_jobs
) AS quater1_jobs_postings
WHERE
    quater1_jobs_postings.salary_year_avg >70000 AND quater1_jobs_postings.job_title_short = 'Data Analyst'
ORDER BY
    quater1_jobs_postings.salary_year_avg DESC;