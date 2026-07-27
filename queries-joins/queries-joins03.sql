-- Get rollover students
SELECT students.name as student_name, classes.name as class_name, students.start_date as student_start_date, classes.start_date as class_start_date
FROM students
JOIN classes ON classes.id = students.class_id
WHERE students.start_date != classes.start_date
ORDER BY class_start_date;