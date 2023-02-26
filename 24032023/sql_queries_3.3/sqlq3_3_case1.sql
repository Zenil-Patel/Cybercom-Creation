# SQL Queries 3.3 case 1
# Consider a table called "books" with the following columns: "id", "title", "author", "publication_year". Write a SQL query to retrieve the title and author of the oldest book in the table.

create database sqlq_3_3_case1;

create table books
(
	id int,
    title varchar(255),
    author varchar(255),
    publication_year date,
    primary key (id)
);

INSERT INTO books (id, title, author, publication_year)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11'),
(2, '1984', 'George Orwell', '1949-06-08'),
(3, 'The Catcher in the Rye', 'J.D. Salinger', '1951-07-16'),
(4, 'Animal Farm', 'George Orwell', '1945-08-17'),
(5, 'Pride and Prejudice', 'Jane Austen', '1813-01-28'),
(6, 'The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10'),
(7, 'Brave New World', 'Aldous Huxley', '1932-01-01'),
(8, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', '1967-05-30'),
(9, 'The Hobbit', 'J.R.R. Tolkien', '1937-09-21'),
(10, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '1997-06-26');


select title, author, min(year(publication_year)) as publication_year from books;
