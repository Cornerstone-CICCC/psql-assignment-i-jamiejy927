-- Get instructor assisted class
SELECT teachers.name as instructor, cohorts.name as class
FROM assistance_requests
JOIN teachers ON teachers.id = instructor_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teachers.name, cohorts.name
ORDER BY instructor;