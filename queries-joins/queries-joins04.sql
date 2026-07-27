-- Get total time assignments per student
SELECT students.name as student_name, sum(assignment_submissions.duration) as total_time
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel'
GROUP BY students.name;