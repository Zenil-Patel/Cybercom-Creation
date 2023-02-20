# 2. Create a database structure for students and its college. One student can be on one college only. 
create database Education;

create table college (
	college_id int auto_increment primary key,
    college_name varchar(255) not null unique
);

create table student (
	student_id int auto_increment primary key,
    student_name varchar(255), 
    college_id int not null
);

alter table student
add foreign key (college_id) references college(college_id);