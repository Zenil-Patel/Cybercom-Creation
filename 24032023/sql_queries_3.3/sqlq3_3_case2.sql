# SQl Queries 3.3 case 2

create database sqlq_3_3_case2;

create table Employees
(
	id int,
    name text,
    age int, 
    salary int,
    primary key (id)
);

insert into Employees 
values
(1, 'John', 35, 60000),
(2, 'Mary', 27, 50000),
(3, 'Peter', 42, 75000),
(4, 'Olivia', 29, 55000),
(5, 'Micheal', 38, 80000);

# 1. Write a SQL query to select all employees from the "employees" table.

select * from Employees;

# 2. Write a SQL query to select the name and salary of all employees with a salary greater than 60000.

select name, salary from employees
where salary > 60000;

# 3. Write a SQL query to update Peter's age to 43.

update employees
set age = 43
where name = 'Peter';

select * from employees
where name = 'Peter';

# 4. Write a SQL query to delete the employee with the id of 4.

delete from Employees 
where id = 4;

select * from employees;

# 5. Write a SQL query to calculate the average salary of all employees.

select avg(salary) as average_salary from employees;

# 6. Write a SQL query to select the name and age of the oldest employee.

select name, age as age from employees
where age = (select max(age) from employees);

# 7. Write a SQL query to select the name and age of the youngest employee.

select name, age as age from employees
where age = (select min(age) from employees);

# 8. Write a SQL query to select the name of the employee with the highest salary.

select name, salary from employees 
where salary =  (select max(salary) from employees);



