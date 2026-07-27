-- Get avg request wait time
SELECT avg(started_at::timestamp - created_at::timestamp) as average_wait_time
FROM assistance_requests;