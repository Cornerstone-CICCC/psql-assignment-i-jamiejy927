--  Get total assistance requests instructor
SELECT count(assistance_requests.*) as total_assistances, 'Waylon Boehm' as instructor_name
FROM assistance_requests
JOIN teachers ON teachers.id = instructor_id
WHERE teachers.name = 'Waylon Boehm';