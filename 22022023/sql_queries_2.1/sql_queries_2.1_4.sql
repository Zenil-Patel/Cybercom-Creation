 # Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Return the result table in any order.
 
 create database Details;
 
 create table Person 
 (
	id int auto_increment,
    email varchar(255),
    primary key (id)
);

insert into person (email) values ('john@example.com');
insert into person (email) values ('bob@example.com');
insert into person (email) values ('john@example.com');
insert into person (email) values ('bob@example.com');
insert into person (email) values ('cat@example.com');


select distinct email from person;
select id from person group by email;

# Below query is the solution. 
select * from person where id in (select min(id) from person group by email);


