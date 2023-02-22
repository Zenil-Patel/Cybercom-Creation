# 8. Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead. Return the result table in any order.

create database sql2_1_q8;

create table Person (
	personId int,
    lastName varchar(40),
    firstName varchar(40),
    primary key (personId)	
);

create table Address (
	addressId int,
    personId int,
    city varchar(40),
    state varchar(40),
    primary key (addressId)
);

# Inserting values into Person table
insert into Person values (1, 'Wang', 'Allen');
insert into Person values (2 ,'Alice', 'Bob');

# Inserting values into Address table
insert into Address values (1, 2, 'New York City', 'New York');
insert into Address values (2, 3, 'Leetcode', 'California');

# Below query is the solution
select p.firstName, p.lastName, a.city, a.state 
from Person p 
left join Address a 
on p.personId = a.personId;

