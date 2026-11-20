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

## 11. Views & Indexes
```sql
-- A view: a saved query you can SELECT from
CREATE VIEW student_scores AS
SELECT students.name, AVG(exams.score) AS avg_score
FROM students JOIN exams ON exams.student_id = students.id
GROUP BY students.name;

SELECT * FROM student_scores WHERE avg_score > 85;

-- An index: makes lookups on a column fast
CREATE INDEX idx_students_major ON students(major);
```

## 12. Transactions
```sql
-- Transfer $100 from account 1 to account 2 — all or nothing
BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;
-- If anything fails: ROLLBACK;
```

## 13. Window Functions
```sql
-- Rank students by score without collapsing rows
SELECT name, score,
  RANK() OVER (ORDER BY score DESC) AS rank
FROM exams;

-- Running total
SELECT subject, score,
  SUM(score) OVER (ORDER BY score) AS running_total
FROM exams;
```

## 14. Mini-Project: Sales Report
Tables: `products(id, name, price)`, `orders(id, product_id, qty, order_date)`. Write queries for: (1) monthly revenue, (2) the best-selling product, (3) products never ordered, (4) average order value. Put the queries in a `.sql` file so the report is repeatable.

## 15. More Exercises & Interview Questions
**Exercises:**
4. Find duplicate emails in a users table.
5. Find the second-highest salary.
6. List customers who never ordered anything (LEFT JOIN + IS NULL).
7. A monthly revenue report with GROUP BY month.
8. Delete duplicate rows, keeping only the first.

**Interview questions:**
- What is the difference between WHERE and HAVING?
- What is a JOIN? Name the types.
- What is normalization? What is 3NF?
- What is the difference between DELETE, TRUNCATE, and DROP?
- What is an index and when does it slow things down?

## 16. Next Steps
- Interactive tutorial: https://sqlbolt.com
- Free course: https://www.kaggle.com/learn/intro-to-sql
- Code examples in this repo: [`examples/sql/`](../examples/sql/)
