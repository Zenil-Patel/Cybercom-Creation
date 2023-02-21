#2. Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring". Return the result table ordered by rating in descending order.

create database sql2_1_Q2;

CREATE TABLE cinema (
    id INT AUTO_INCREMENT,
    movie VARCHAR(255),
    movie_description VARCHAR(255),
    rating DECIMAL(10 , 2 ),
    PRIMARY KEY (id)
);
insert into cinema (movie, movie_description, rating) values ("War", "great 3D", 8.9);
insert into cinema (movie, movie_description, rating) values ("Science", "fiction",8.5);
insert into cinema (movie, movie_description, rating) values ("Irish", "boring",6.2);
insert into cinema (movie, movie_description, rating) values ("Ice song", "Fantacy",8.6);
insert into cinema (movie, movie_description, rating) values ("House card", "Intresting",9.1);

SELECT  * FROM cinema
WHERE (id % 2) = 1
AND movie_description 
NOT LIKE ('boring')
ORDER BY rating DESC;