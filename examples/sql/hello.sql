-- Hello World - SQL: buat tabel, isi, tampilkan
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  major TEXT
);

INSERT INTO students (id, name, major) VALUES
  (1, 'Akbar', 'Informatics'),
  (2, 'Budi', 'Economics'),
  (3, 'Citra', 'Law');

SELECT * FROM students;
