-- Get total submissions enrolled students
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name;