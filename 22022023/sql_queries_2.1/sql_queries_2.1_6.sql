# 6 . Write an SQL query to create index on the email column.

create database sql2_1_q6;

create table Details
(
	id int auto_increment,
    email varchar(40),
    primary key (id)
);

create index email_index on Details (email);
