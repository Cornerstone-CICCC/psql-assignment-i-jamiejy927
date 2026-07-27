-- Get enrolled students average time completion less estimated
SELECT students.name as student_name, 
       avg(assignment_submissions.duration) as average_time, 
       avg(assignments.duration) as average_estimated_time
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_time;