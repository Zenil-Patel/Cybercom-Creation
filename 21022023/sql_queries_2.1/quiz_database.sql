# Database design for Quiz app

create database Quiz;

create table Users
(
	id int auto_increment,
    user_name varchar(40),
    primary key (id)
);

create table QuestionPaper
(
	id int auto_increment,
    question_description varchar(255),
    option_1 varchar(40),
    option_2 varchar(40),
    option_3 varchar(40),
    option_4 varchar(40),
    primary key (id)
);

create table QuestionBank
(
	id int auto_increment,
    user_id int,
    question_id int,
    primary key (id),
    foreign key (user_id) references Users (id),
    foreign key (question_id) references QuestionPaper (id)
);