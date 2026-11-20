# SQL — Complete Mini-Course

## 1. What Is SQL?
SQL is the language of databases. Almost every app stores its data in a database, and SQL is how you ask questions of it.

## 2. Your First Table
```sql
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  major TEXT
);
```

## 3. Insert Data
```sql
INSERT INTO students (id, name, major) VALUES
  (1, 'Akbar', 'Informatics'),
  (2, 'Budi', 'Economics');
```

## 4. Read Data (SELECT)
```sql
SELECT * FROM students;                 -- all columns, all rows
SELECT name FROM students;              -- only names
SELECT name FROM students WHERE major = 'Informatics';
SELECT * FROM students ORDER BY name DESC;
SELECT * FROM students LIMIT 10;        -- first 10 rows
```

## 5. Update & Delete
```sql
UPDATE students SET major = 'Computer Science' WHERE id = 1;
DELETE FROM students WHERE id = 2;
```

## 6. Filtering & Aggregates
```sql
SELECT major, COUNT(*) AS student_count
FROM students
GROUP BY major;

SELECT AVG(score) FROM exams;      -- average
SELECT MAX(score) FROM exams;      -- highest
```

## 7. JOINs (Combining Tables)
```sql
-- Students with their courses
SELECT students.name, courses.title
FROM students
JOIN enrollments ON enrollments.student_id = students.id
JOIN courses ON courses.id = enrollments.course_id;
```

## 8. Subqueries
```sql
SELECT name FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 3);
```

## 9. Common Mistakes
- Forgetting `WHERE` in `UPDATE`/`DELETE` (updates or deletes EVERYTHING)
- `=` vs `==` — SQL uses a single `=`
- Comparing text with the wrong case (`'Akbar'` vs `'akbar'` can differ)
- `SELECT *` in production code (slow and fragile)

## 10. Practice Exercises
1. Build a library database: books, members, loans.
2. Find the top 5 best-selling products from a sales table.
3. Write a query that shows each student's average score.

## 11. Next Steps
- Interactive tutorial: https://sqlbolt.com
- Free course: https://www.kaggle.com/learn/intro-to-sql
- Code examples in this repo: [`examples/sql/`](../examples/sql/)
