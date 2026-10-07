-- Week 1 Database Assignment
-- Library Management System

CREATE DATABASE library_management;

USE library_management;

CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    category VARCHAR(100),
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO authors (author_name, country)
VALUES
('Ngugi wa Thiong''o', 'Kenya'),
('Chinua Achebe', 'Nigeria'),
('William Shakespeare', 'England');

INSERT INTO books (title, author_id, category, publication_year)
VALUES
('Weep Not, Child', 1, 'Fiction', 1964),
('Things Fall Apart', 2, 'Fiction', 1958),
('Romeo and Juliet', 3, 'Drama', 1597);

INSERT INTO members (full_name, phone, email)
VALUES
('Ahmed Hassan', '0712345678', 'ahmed@example.com'),
('Amina Ali', '0723456789', 'amina@example.com'),
('Mohamed Noor', '0734567890', 'mohamed@example.com');

INSERT INTO borrowings (book_id, member_id, borrow_date, return_date)
VALUES
(1, 1, '2026-10-01', '2026-10-10'),
(2, 2, '2026-10-02', '2026-10-12'),
(3, 3, '2026-10-03', '2026-10-13');

SHOW TABLES;

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM borrowings;