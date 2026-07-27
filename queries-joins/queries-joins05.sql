-- Get total time assignments per class
SELECT classes.name as class_name, sum(assignment_submissions.duration) as total_time
FROM students
JOIN classes ON classes.id = students.class_id
JOIN assignment_submissions ON student_id = students.id
WHERE classes.name = 'FEB12'
GROUP BY classes.name;