-- Get avg duration assistance per class
SELECT avg(completed_at::timestamp - started_at::timestamp) as average_assistance_request_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration;