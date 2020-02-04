SELECT assignments.id as id, name, day, chapter, count(assistance_requests) as total_requests,
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY id
ORDER BY total_requests DESC;