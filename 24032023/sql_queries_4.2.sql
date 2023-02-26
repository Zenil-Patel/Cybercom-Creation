# SQL Queries 4.2


create database EmpDept;

create table Employees
(
	employeeId int,
    name varchar(40),
    deptId int,
    salary int,
    primary key (employeeId)
);

create table departments
(
	deptId int,
    name varchar(40),
    primary key (deptId)
);

create table salaries 
(
	employeeId int,
    salary int,
    salDate date
);

INSERT INTO Employees (employeeId, name, deptId, salary) VALUES 
(1, 'John Smith', 1, 50000),
(2, 'Jane Doe', 1, 60000),
(3, 'Bob Johnson', 2, 55000),
(4, 'Mary Adams', 2, 65000),
(5, 'Tom Williams', 3, 70000);

INSERT INTO departments (deptId, name) VALUES 
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Engineering'),
(4, 'Finance'),
(5, 'Human Resources');

INSERT INTO salaries (employeeId, salary, salDate) VALUES 
(1, 50000, '2022-01-01'),
(2, 60000, '2022-01-01'),
(3, 55000, '2022-01-01'),
(4, 65000, '2022-01-01'),
(5, 70000, '2022-01-01');

# 1. Write a query to return the names of all employees who work in the 'Sales' department.

select e.name, d.name from Employees e
join departments d on e.deptId = d.deptId
where d.name = 'Sales';

# 2. Write a query to return the total number of employees in each department, ordered by department name.

select d.name, count(e.deptId)
from Employees e join departments d
on e.deptId = d.deptId
group by e.deptId
order by e.deptId;

# 3. Write a query to return the average salary for each department, ordered by department name.

select d.name, avg(e.salary)
from Employees e join departments d
on e.deptId = d.deptId
group by e.deptId
order by e.deptId;

# 4. Write a query to return the top 10% of highest paid employees, ordered by salary.

SELECT * 
from employees 
ORDER BY salary DESC ;

# 5. Write a query to return the salary of each employee for their latest salary entry.
	
select e.name, s.salary, s.salDate, rank() over (order by s.salDate desc)  ranking
from employees e join salaries s
on e.employeeId = s.employeeId;