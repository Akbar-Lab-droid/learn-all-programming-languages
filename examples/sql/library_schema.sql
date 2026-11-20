-- Library database - SQL: a fuller schema with 3 tables
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  author TEXT,
  year INTEGER
);

CREATE TABLE members (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE loans (
  book_id INTEGER,
  member_id INTEGER,
  loan_date TEXT,
  PRIMARY KEY (book_id, member_id)
);

INSERT INTO books (id, title, author, year) VALUES
  (1, 'Clean Code', 'Robert C. Martin', 2008),
  (2, 'The Pragmatic Programmer', 'Andrew Hunt', 1999),
  (3, 'Design Patterns', 'Erich Gamma', 1994);

INSERT INTO members (id, name) VALUES
  (1, 'Akbar'),
  (2, 'Budi');

INSERT INTO loans (book_id, member_id, loan_date) VALUES
  (1, 1, '2026-11-20');

-- Who borrowed which book?
SELECT members.name, books.title, loans.loan_date
FROM loans
JOIN members ON members.id = loans.member_id
JOIN books ON books.id = loans.book_id;

-- Books never borrowed
SELECT title FROM books
WHERE id NOT IN (SELECT book_id FROM loans);
