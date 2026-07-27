-- Get total assistance requests assignment
SELECT assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests.*) as total_requests
FROM assignments
LEFT JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;