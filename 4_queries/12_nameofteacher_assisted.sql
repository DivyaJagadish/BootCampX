-- Get the name of all teachers that performed an assistance request during a cohort.

-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.
SELECT  DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM cohorts 
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests  ON student_id =students.id
JOIN teachers  ON teacher_id =teachers.id 
WHERE cohorts.name  = 'JUL02'
ORDER BY teachers.name;