-- Aggregates - SQL: COUNT, AVG, MAX, MIN, GROUP BY, HAVING
CREATE TABLE exams (
  student_id INTEGER,
  subject TEXT,
  score INTEGER
);

INSERT INTO exams (student_id, subject, score) VALUES
  (1, 'Math', 90),
  (1, 'English', 85),
  (2, 'Math', 75),
  (2, 'English', 80),
  (3, 'Math', 95);

-- Average score per subject
SELECT subject, AVG(score) AS avg_score
FROM exams
GROUP BY subject;

-- Students with an average above 85
SELECT student_id, AVG(score) AS avg_score
FROM exams
GROUP BY student_id
HAVING AVG(score) > 85;

-- Highest and lowest scores overall
SELECT MAX(score) AS best, MIN(score) AS worst, COUNT(*) AS total_exams
FROM exams;
