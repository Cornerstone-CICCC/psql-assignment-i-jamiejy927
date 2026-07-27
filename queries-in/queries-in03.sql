-- Get data assistance request
SELECT 
  teachers.name as instructor, 
  students.name as student, 
  assignments.name as assignment, 
  (assistance_requests.completed_at - assistance_requests.started_at) as assistance_duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY assistance_duration;