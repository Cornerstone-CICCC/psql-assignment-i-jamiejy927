-- Get total assistance requests class
SELECT cohorts.name as class, sum(completed_at::timestamp - started_at::timestamp) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;