SELECT teachers.name, students.name, assignments.name, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignments.is = assignment_id
ORDER BY duration;