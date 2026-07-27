-- Get classes more 18 students
SELECT classes.name as class_name, count(students.*) as total_students
FROM students
JOIN classes ON classes.id = students.class_id
GROUP BY classes.name
HAVING count(students.*) >= 18
ORDER BY total_students;