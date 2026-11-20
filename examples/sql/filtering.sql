-- Filtering - SQL: WHERE, AND, OR, LIKE, BETWEEN, IN, ORDER BY, LIMIT
-- Informatics students only
SELECT * FROM students WHERE major = 'Informatics';

-- Names starting with A
SELECT * FROM students WHERE name LIKE 'A%';

-- Students with id 1 or 3
SELECT * FROM students WHERE id IN (1, 3);

-- Sorted by name, first 2 rows
SELECT * FROM students ORDER BY name ASC LIMIT 2;
