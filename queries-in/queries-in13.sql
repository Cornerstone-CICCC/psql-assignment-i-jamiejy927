-- Get instructors assisted class with number
SELECT teachers.name as instructor, cohorts.name as class, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = instructor_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teachers.name, cohorts.name
ORDER BY total_assistances;