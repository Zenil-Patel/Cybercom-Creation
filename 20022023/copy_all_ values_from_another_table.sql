create table EmployeesCopy as
(select * from employees);

select * from employeescopy;
select count(first_name) from employeescopy;

select * from employees;
select count(first_name) from employees;