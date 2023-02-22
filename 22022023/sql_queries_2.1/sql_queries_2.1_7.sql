# 7. Create a database schema for student grade system. It contains student data and their grade of each subject based on the different semester.

create database sql2_1_q7;

create table Student (
	id int auto_increment,
    first_name varchar (16),
    last_name varchar (16),
    email varchar (255),
    primary key (id)
);

create table Semester (
	id int auto_increment,
    semester_name varchar(80),
    primary key (id)
);

create table Subjects (
	id int auto_increment,
    subject_name varchar(255),
    primary key (id)
);

create table Grades (
	id int auto_increment,
    student_id int,
    semester_id int,
    subject_id int,
    primary key (id),
    foreign key (student_id) references Student(id),
    foreign key (semester_id) references Semester(id),
    foreign key (subject_id) references Subjects(id)
);