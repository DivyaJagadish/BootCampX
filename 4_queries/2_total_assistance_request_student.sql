-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here

SELECT name,  count(assistance_requests) as total_assistance_requests
FROM students
JOIN assistance_requests
ON  students.id = student_id
GROUP BY students.name
 HAVING students.name = 'Elliot Dickinson';
