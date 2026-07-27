-- Get avg assistance request duration
SELECT avg(completed_at::timestamp - started_at::timestamp) as avg_assistance_request_duration
FROM assistance_requests;