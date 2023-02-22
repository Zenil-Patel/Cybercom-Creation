create database Company;

create table dept_manager
(
	dept_no char(4),
    emp_no int, 
    from_date date,
    to_date date
);

create table departments
(
	dept_no char(4),
    dept_name varchar(40)
);

insert into dept_manager values ('',999904,'2017-01-01','1990-05-25');
insert into dept_manager values ('',999905,'2017-01-01','1094-05-11');
insert into dept_manager values ('',999906,'2017-01-01','1094-05-11');
insert into dept_manager values ('',999907,'2017-01-01','1094-05-11');
insert into dept_manager values ('d002',110085,'1985-01-01','1989-12-17');
insert into dept_manager values ('d002',089792,'1234-02-12','2223-04-02');
insert into dept_manager values ('d003',123464,'6565-02-16','3587-03-07');
insert into dept_manager values ('d004',409254,'9256-09-02','8154-02-17');
insert into dept_manager values ('d005',243849,'2401-02-09','8226-06-03');
insert into dept_manager values ('d006',428673,'3734-03-16','0228-07-12');
insert into dept_manager(emp_no, from_date, to_date) values (234238, '1998-02-19','2002-12-15');

select * from dept_manager;

create table dept_manager_dup as select * from dept_manager;

select * from dept_manager_dup;

insert into departments(dept_name) values ('Public relations');
insert into departments values ('d001','MArketing');
insert into departments values ('d003','HR');
insert into departments values ('d004','Production');
insert into departments values ('d005','Development');
insert into departments values ('d006','QA');
insert into departments values ('d007','Sales');

create table departments_dup as select * from departments;

# Output: dept_no and emp_no from dept_manager_dup and dept_name from departments_dup table (INNER JOIN)
SELECT 
    d.dept_no, d.emp_no, d.from_date, d.to_date, m.dept_name
FROM
    dept_manager_dup d
        INNER JOIN
    departments_dup m ON d.dept_no = m.dept_no;
    
# LEFT JOIN
SELECT 
    d.dept_no, d.emp_no, d.from_date, d.to_date, m.dept_name
FROM
    dept_manager_dup d
        Left JOIN
    departments_dup m ON d.dept_no = m.dept_no;
    
#Right join
SELECT 
    d.dept_no, d.emp_no, d.from_date, d.to_date, m.dept_name
FROM
    dept_manager_dup d
        Right JOIN
    departments_dup m ON d.dept_no = m.dept_no;


  