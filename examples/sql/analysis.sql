-- Data analysis - SQL
SELECT major, COUNT(*) AS student_count
FROM students
GROUP BY major
ORDER BY student_count DESC;

-- Find Informatics students
SELECT name FROM students WHERE major = 'Informatics';
