-- Get avg total assistance requests class
SELECT cohorts.name as class, avg(completed_at::timestamp - started_at::timestamp) as average_assistance_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_duration;