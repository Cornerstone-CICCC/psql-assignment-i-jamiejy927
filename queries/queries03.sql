-- Total students first 3 classes:
SELECT count(students.id) as total_students
FROM students
JOIN classes ON students.class_id = classes.id
WHERE classes.id IN (
  SELECT id FROM classes ORDER BY id LIMIT 3
);