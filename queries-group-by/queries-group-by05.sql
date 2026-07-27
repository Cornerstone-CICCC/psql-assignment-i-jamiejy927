-- Get enrolled students average time completion
SELECT students.name as student_name, avg(assignment_submissions.duration) as average_time
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_time DESC;