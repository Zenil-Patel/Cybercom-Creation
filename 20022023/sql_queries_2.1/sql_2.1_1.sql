# . Create a database structure for employee leave application. It should include all the employee's information as well as their leave information. 

create database SqlPractice1;

create table employees (
	id int auto_increment,
    first_name varchar(255) not null,  
    last_name varchar(255),
    age int,
    dept varchar(40),
    job_position varchar(80),
    date_of_joining date,
    home_town varchar(80),
    salary int,
    primary key (id)
);

create table EmpLeaveReport (
	id int auto_increment,
    emp_id int ,
    first_name varchar(40), 
    number_of_days int,
    starting_date date,
    ending_date date,
    reason_of_leave text,
    primary key (id),
    foreign key (emp_id) references employees(id)
);