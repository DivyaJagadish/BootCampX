
-- Get all of the students without a gmail.com or phone number.

-- Get their name, email, id, and cohort_id.

SELECT name,email,cohort_id 
FROM students
WHERE email  NOT LIKE '%@gmail.com' AND phone is NULL