-- Creates a view 'need_meeting' that lists all students with a score under 80
-- Students with no last meeting or whose last meeting was over 1 month ago are included

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT name 
FROM students 
WHERE score < 80
AND (students.last_meeting IS NULL OR students.last_meeting < DATE_ADD(NOW(), INTERVAL -1 MONTH));
