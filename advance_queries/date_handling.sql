SELECT
    job_title_short AS title,
    job_location AS location,
    -- job_posted_date::date AS date
    -- job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date
    EXTRACT(DAY FROM job_posted_date) AS month
FROM
job_postings_fact
LIMIT 10;/