-- Get class longest assistance
SELECT cohorts.name as class, avg(completed_at::timestamp - started_at::timestamp) as avg_duration_assistance
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avg(completed_at::timestamp - started_at::timestamp) DESC
LIMIT 1;