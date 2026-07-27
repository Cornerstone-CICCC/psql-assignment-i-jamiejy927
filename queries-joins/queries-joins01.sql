-- Get Students with Class Name
SELECT students.name as student_name, students.email as email, classes.name as class_name
FROM students
JOIN classes ON classes.id = students.class_id;