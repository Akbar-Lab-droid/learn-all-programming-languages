-- JOINs - SQL: combine students, courses, and enrollments
CREATE TABLE courses (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL
);

CREATE TABLE enrollments (
  student_id INTEGER,
  course_id INTEGER,
  PRIMARY KEY (student_id, course_id)
);

INSERT INTO courses (id, title) VALUES
  (1, 'Python Basics'),
  (2, 'Web Development');

INSERT INTO enrollments (student_id, course_id) VALUES
  (1, 1),
  (1, 2),
  (2, 1);

-- Which student takes which course?
SELECT students.name, courses.title
FROM students
JOIN enrollments ON enrollments.student_id = students.id
JOIN courses ON courses.id = enrollments.course_id;
