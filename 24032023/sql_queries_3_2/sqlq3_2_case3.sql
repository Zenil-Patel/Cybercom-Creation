# SQL Quereies 3.2 Case 3

# Consider a table called "employees" with the following columns: "id", "name", "department", "salary". Write a SQL query toretrieve the names and salaries of all employees in the "sales" department who earn more than $50,000 per year.
create database sql3_2_case3;

create table Employees 
(
	id int,
    name varchar(40),
    department varchar(80),
    salary int,
    primary key (id)
);

INSERT INTO Employees (id, name, department, salary)
VALUES
(1, 'John Smith', 'Marketing', 50000),
(2, 'Jane Doe', 'Sales', 60000),
(3, 'Peter Parker', 'IT', 70000),
(4, 'Mary Jones', 'Finance', 55000),
(5, 'David Lee', 'Engineering', 80000),
(6, 'Lisa Chen', 'HR', 65000),
(7, 'Kevin Johnson', 'Marketing', 60000),
(8, 'Sarah Lee', 'IT', 75000),
(9, 'Tom Smith', 'Sales', 55000),
(10, 'Emily Wong', 'Finance', 60000);

select name, salary, department from Employees
where department = 'sales' and salary > 50000;
