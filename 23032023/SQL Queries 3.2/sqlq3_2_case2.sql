# SQL Queries 3.2
# Case 2
# Write a query to retrieve the name and number of posts for each user who joined the platform in the year 2022, along with the total number of likes received for each user's posts.

create database SocialMedia;

create table Users 
(
 id int,
 name varchar(255),
 created_at timestamp,
 primary key (id)
);

insert into Users values 
	(1, 'a', '2020-02-16 00:00:30'),
    (2, 'b', '2021-02-16 13:00:30'),
    (3, 'c', '2022-02-16 21:00:30'),
    (4, 'd', '2001-10-17 17:00:30'),
    (5, 'e', '2002-02-16 16:17:16');
    
INSERT INTO users (id, name, created_at) VALUES
(6, 'Alice', NOW()),
(7, 'Bob', NOW()),
(8, 'Charlie', NOW()),
(9, 'David', NOW()),
(10, 'Eve', NOW());


create table posts
(
 id int,
 user_id int,
 body text,
 created_at timestamp,
 primary key (id)
);

INSERT INTO posts (id, user_id, body, created_at) VALUES
(1, 2, 'Hello World!', NOW()),
(2, 3, 'I love SQL!', NOW()),
(3, 1, 'Just had a great meal.', NOW()),
(4, 5, 'Can''t wait for the weekend.', NOW()),
(5, 4, 'Feeling productive today.', NOW());


create table likes
(
	id int,
    user_id int,
    post_id int,
    created_at timestamp,
    primary key (id)
);

INSERT INTO likes (id, user_id, post_id, created_at) VALUES
(1, 1, 2, NOW()),
(2, 3, 1, NOW()),
(3, 2, 3, NOW()),
(4, 4, 5, NOW()),
(5, 5, 4, NOW());

select u.name, count(p.user_id) as number_of_posts, count(l.post_id) as number_of_likes
from users u 
join posts p on u.id = p.user_id
join likes l on p.id = l.post_id
where year(u.created_at) = 2022
group by p.user_id;


