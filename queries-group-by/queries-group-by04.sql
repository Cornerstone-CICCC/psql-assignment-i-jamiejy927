-- Get total submissions per class
SELECT classes.name as class_name, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN classes ON classes.id = class_id
GROUP BY classes.name
ORDER BY total_submissions DESC;