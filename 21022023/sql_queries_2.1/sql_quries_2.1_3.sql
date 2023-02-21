create database sql2_1_q3;

create table Salary (
	id int auto_increment,
	emp_name varchar(255),
    sex enum ('m', 'f'),
    salary int,
    primary key (id)
);

insert into Salary (emp_name, sex, salary)  values ('A', 'm', 2500);
insert into Salary (emp_name, sex, salary)  values ('B', 'f', 1500);
insert into Salary (emp_name, sex, salary)  values ('C', 'm', 5500);
insert into Salary (emp_name, sex, salary)  values ('D', 'f', 500);


select * from Salary;


update Salary 
set sex = (case when sex = 'm' 
				then 'f'
                else 'm'
                end);

select * from salary;

update Salary 
set sex = if(sex = 'm', 
					'f',
					'm')

