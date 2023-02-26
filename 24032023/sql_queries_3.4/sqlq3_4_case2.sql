#SQL queries 3.4 case 2

create database EmployeeDatabaseSystem;

create table EmployeeDetails 
(
	id int auto_increment,
    first_name varchar(40),
    last_name varchar(40),
    from_date date,
    to_date date,
    dept_id int,
    post_id int,
    salary int,
    primary key (id)
);

create table department 
(
	id int auto_increment,
    dept_name varchar(40),
    primary key (id)
);


create table post 
(
	id int auto_increment,
    post_name varchar(20),
    primary key (id)
);



INSERT INTO EmployeeDetails (first_name, last_name, from_date, to_date, dept_id, post_id, salary)
VALUES
    ('John', 'Doe', '2022-01-01', '2022-12-31', 1, 1, 50000),
    ('Jane', 'Doe', '2022-02-01', '2022-12-31', 1, 2, 60000),
    ('Bob', 'Smith', '2022-01-01', '2022-12-31', 2, 3, 55000),
    ('Alice', 'Johnson', '2022-03-01', '2022-12-31', 3, 4, 48000),
    ('David', 'Lee', '2022-04-01', '2022-12-31', 2, 5, 65000),
    ('Mary', 'Wilson', '2022-05-01', '2022-12-31', 3, 2, 52000),
    ('Tom', 'Johnson', '2022-01-01', '2022-12-31', 2, 3, 67000),
    ('Emily', 'Davis', '2022-02-01', '2022-12-31', 1, 4, 58000),
    ('Jack', 'Wilson', '2022-03-01', '2022-12-31', 3, 5, 53000),
    ('Karen', 'Brown', '2022-04-01', '2022-12-31', 1, 1, 61000),
    ('Sam', 'Green', '2022-05-01', '2022-12-31', 2, 3, 35000),
    ('Jessica', 'Nguyen', '2022-01-01', '2022-12-31', 3, 4, 35000),
    ('Peter', 'Wang', '2022-02-01', '2022-12-31', 1, 5, 78000),
    ('Catherine', 'Lee', '2022-03-01', '2022-12-31', 2, 4, 46000),
    ('Mike', 'Johnson', '2022-04-01', '2022-12-31', 1, 3, 64000),
    ('Samantha', 'Smith', '2022-05-01', '2022-12-31', 3, 4, 58000),
    ('Andrew', 'Davis', '2022-01-01', '2022-12-31', 2, 5, 45000),
    ('Olivia', 'Wilson', '2022-02-01', '2022-12-31', 1, 3, 55000),
    ('Joshua', 'Brown', '2022-03-01', '2022-12-31', 3, 3, 40000),
    ('Lily', 'Green', '2022-04-01', '2022-12-31', 2, 4, 50000),
	('John', 'Doe', '1998-05-15', '2003-05-15', 1, 1, 49000),
	('Jane', 'Doe', '1995-02-25', '2000-02-25', 2, 2, 35000),
	('Michael', 'Smith', '1996-09-10', '2001-09-10', 1, 3, 46000),
	('Sarah', 'Johnson', '1997-11-21', '2002-11-21', 3, 1, 36000),
	('David', 'Williams', '1999-08-12', '2004-08-12', 2, 3, 99999);
    
INSERT INTO EmployeeDetails (first_name, last_name, from_date, to_date, dept_id, post_id, salary)
VALUES
	('Peter', 'Wangwe', '2000-02-01', '2018-12-11', 4, 5, 78000),
	('Pet', 'Wan', '2019-02-01', '2022-12-31', 5, 5, 78000);


    
INSERT INTO department (dept_name) VALUES
('Human Resources'),
('Marketing'),
('Finance'),
('Information Technology'),
('Sales');

INSERT INTO post (post_name)
VALUES
  ('Manager'),
  ('Developer'),
  ('Designer'),
  ('Salesperson'),
  ('Marketing');

alter table employeedetails
add foreign key (dept_id) references department(id);



# 1. Write a query that returns the first and last name of all employees who have a title that contains the word "Manager".

-- Subquery
select first_name, last_name from employeeDetails where post_id = (select id from post
where post_name = 'Manager');

-- Join
select e.first_name, e.last_name, p.post_name from
employeeDetails e join post p on
e.post_id = p.id
where p.post_name = 'Manager';

# 2. Write a query that returns the department name and the average salary of all employees in each department.

select avg(e.salary), d.dept_name
from EmployeeDetails e join department d
on e.dept_id = d.id
group by d.dept_name;

# 3. Write a query that returns the number of employees who were hired in each year, sorted by year.

select year(from_date) year, count(id) number_of_employees from employeedetails
group by year(from_date)
order by year(from_date);

# 4. Write a query that returns the first name, last name, and salary of the top 10 highest-paid employees.

select first_name, last_name, salary from employeedetails
order by salary desc
limit 10;

# 5. Write a query that updates the salary of all employees in the "Sales" department to be 10% higher than their current salary.


update employeedetails e
join department d
on e.dept_id = d.id
set e.salary = e.salary * 1.1;

select * from employeedetails;

# 6. Write a query that deletes all employees who were hired before the year 2000.

delete from employeedetails
where from_date < '2000-01-01';

select * from employeedetails;

# 7. Write a query that creates a new table called "employee_stats" that contains the following columns: "department_name", "total_employees", and "average_salary". The table should include one row for each department.

create table employee_stats as (
select d.dept_name department_name, count(e.id) total_employees, avg(e.salary) average_salary from
employeedetails e join department d
on e.dept_id = d.id
group by e.dept_id);

select * from employee_stats;

# 8. Write a query that returns the first and last name of all employees who have the same last name as their manager.

select first_name, last_name from employeedetails 
where last_name = (
select e.last_name  from employeeDetails e join post p
on e.post_id = p.id 
where p.post_name = 'Manager');


# 9. Write a query that returns the top 5 departments with the highest average salary.

select d.dept_name, avg(e.salary) from
department d join employeedetails e
on d.id = e.dept_id
group by d.dept_name
order by avg(e.salary) desc
limit 5;

# 10. Write a query that returns the first and last name of all employees who have at least one department. Sort the results by last name.

select e.first_name, e.last_name, d.dept_name from 
employeedetails e join department d
on e.id = d.id;


