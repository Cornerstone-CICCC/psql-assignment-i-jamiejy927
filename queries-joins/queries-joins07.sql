-- Get total submissions enrolled students less 100
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM students
JOIN assignments ON true
JOIN assignment_submissions ON assignment_submissions.student_id = students.id AND assignment_submissions.assignment_id = assignments.id
LEFT JOIN classes ON classes.id = students.class_id
WHERE classes.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;