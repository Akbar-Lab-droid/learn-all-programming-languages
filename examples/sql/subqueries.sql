-- Subqueries - SQL
-- Students enrolled in course 1 (Python Basics)
SELECT name FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 1);

-- Students whose score is above the overall average
SELECT name FROM students
WHERE id IN (
  SELECT student_id FROM exams
  WHERE score > (SELECT AVG(score) FROM exams)
);
