SELECT assignments.id AS id , count(assistance_requests.*) AS total_requests, assignments.name AS name, assignments.day AS day, assignments.chapter AS chapter
FROM assistance_requests 
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;