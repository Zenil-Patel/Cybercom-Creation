#SQL Queries 4.1 case 1
#Bookstore

create database Bookstore;

create table Books
(
	id int,
    title varchar(255),
    author_id int not null,
    publication_date date,
    primary key (id)
);

create table Authors
(
	id int,
    name varchar(255),
    primary key(id)
);

alter table books
add foreign key (author_id) references Authors(id);

create table bookcategories
(
	id int,
    name varchar(255),
    primary key(id)
);

create table book_category_mappings 
(
	id int,
    book_id int,
    catrgory_id int,
    primary key (id)
);

alter table book_category_mappings
add foreign key (book_id) references Books(id),
add foreign key (catrgory_id) references bookcategories;

INSERT INTO books (id, title, author_id, publication_date) 
VALUES 
(1,'The Great Gatsby', 1, '1925-04-10'),
(2,'To Kill a Mockingbird', 2, '1960-07-11'),
(3, '1984', 3, '1949-06-08'),
(4, 'Pride and Prejudice', 4, '1813-01-28'),
(5, 'The Catcher in the Rye', 5, '1951-07-16');

INSERT INTO authors (id, name)
VALUES 
(1, 'F. Scott Fitzgerald'),
(2, 'Harper Lee'),
(3, 'George Orwell'),
(4, 'Jane Austen'),
(5, 'J.D. Salinger');

INSERT INTO bookcategories (id, name)
VALUES 
(1, 'Fiction'),
(2, 'Non-fiction'),
(3, 'Mystery'),
(4, 'Science fiction'),
(5, 'Romance');

INSERT INTO book_category_mappings (id, book_id, catrgory_id)
VALUES 
(1, 1, 1),
(2, 1, 3),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 3, 4),
(8, 4, 1),
(9, 4, 2),
(10, 5, 1),
(11, 5, 2),
(12, 5, 5);

# 1. Write a query to find all books published in the year 2020.

insert into books values (6, 'Random book', 2, '2020-02-16');

select * from books
where year(publication_date) = '2020';

# 2. Write a query to find the name of the author who has written the most number of books.

select a.name, count(b.author_id) no_of_books from 
authors a join books b
on a.id = b.author_id
group by b.author_id
order by no_of_books desc
limit 1;

# 3. Write a query to find the name of the category with the most number of books.

select  catrgory_id, count(book_id) number_of_books from book_category_mappings
group by catrgory_id;

# 4. Write a query to find the name of the author who has written the most number of books in the category "fiction".

select a.name,  count(bcm.book_id)
from book_category_mappings bcm 
join books b on bcm.book_id = b.id
join bookcategories bc on bc.id = bcm.catrgory_id 
join authors a on a.id = b.author_id
where bc.name = 'Fiction'
order by count(bcm.book_id) desc
limit 1;

# 5. Write a query to find the titles of the top 5 most popular books. The popularity of a book is defined as the number of times it has been borrowed by customers. Assume that information about book borrowings is stored in a separate table called book_borrowings with the following columns:id: unique identifier for each borrowingbook_id: foreign key pointing to the books tablecustomer_id: foreign key pointing to the customers tableborrow_date: date on which the book was borrowed

create table book_borrowings 
(
	id int,
    book_id int, 
    customer_id int,
    borrow_date date,
    primary key (id),
    foreign key (book_id) references books(id)
);

select b.title
from book_borrowings bb
join books b on b.id = bb.book_id
group by b.title
order by num_borrowings desc
limit 5;
