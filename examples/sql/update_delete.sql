-- UPDATE & DELETE - SQL (always use WHERE!)
-- Change Citra's major
UPDATE students SET major = 'Computer Science' WHERE id = 3;

-- Remove student 2 (Budi)
DELETE FROM students WHERE id = 2;

-- Check the result
SELECT * FROM students;

-- DANGER: never run these without WHERE:
-- UPDATE students SET major = 'X';   -- changes EVERY row
-- DELETE FROM students;               -- deletes EVERY row
