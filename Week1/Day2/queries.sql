-- DAY 2 SQL PRACTICE

create table Employees(
    emp_id int,
    emp_name varchar(50),
    department varchar(50),
    salary int,
    city varchar(50),
    experience int
);

insert into Employees values
(101,'Rahul','IT',75000,'Hyderabad',5),
(102,'Anjali','HR',45000,'Chennai',3),
(103,'Kiran','IT',82000,'Bangalore',6),
(104,'Sneha','Finance',67000,'Hyderabad',4),
(105,'Aman','HR',39000,'Pune',2),
(106,'Ravi','Finance',91000,'Mumbai',8),
(107,'Divya','IT',55000,'Chennai',3),
(108,'Meena','Sales',48000,'Bangalore',2),
(109,'Arjun','Sales',61000,'Hyderabad',5),
(110,'Pooja','IT',73000,'Mumbai',4),
(111,'Vikas','HR',52000,'Pune',3),
(112,'Nisha','Finance',88000,'Bangalore',7),
(113,'Tarun','Sales',46000,'Chennai',2),
(114,'Kavya','IT',97000,'Hyderabad',9),
(115,'Manoj','Finance',58000,'Mumbai',4);

-- select queries

select * from Employees;

select emp_name,salary from Employees;

select emp_name,department from Employees;

select * from Employees
where department='IT';

select emp_name,experience from Employees;

-- where clause

select * from Employees
where salary > 70000;

select * from Employees
where city='Hyderabad';

select * from Employees
where experience < 4;

select * from Employees
where department='Finance';

select * from Employees
where salary=52000;

-- group by

select department,sum(salary) as total_salary
from Employees
group by department;

select department,avg(salary) as avg_salary
from Employees
group by department;

select city,count(*) as total_employees
from Employees
group by city;

select department,max(salary) as max_salary
from Employees
group by department;

select department,min(experience) as min_experience
from Employees
group by department;

-- having

select department,count(*) as total_employees
from Employees
group by department
having count(*) > 3;

select department,avg(salary) as avg_salary
from Employees
group by department
having avg(salary) > 60000;

select city,count(*) as total_employees
from Employees
group by city
having count(*) > 2;

select department,sum(salary) as total_salary
from Employees
group by department
having sum(salary) > 200000;

select department,max(salary) as max_salary
from Employees
group by department
having max(salary) > 90000;

-- limit

select * from Employees
order by salary desc
limit 5;

select * from Employees
order by experience desc
limit 3;

select * from Employees
where department='Finance'
order by salary desc
limit 2;

select * from Employees
where city='Hyderabad'
limit 4;

select * from Employees
order by salary desc
limit 1;

-- distinct

select distinct department from Employees;

select distinct city from Employees;

select distinct salary from Employees;

select distinct department,city from Employees;

select distinct experience from Employees;

-- comparison operators

select * from Employees
where salary >= 80000;

select * from Employees
where experience <= 3;

select * from Employees
where salary <> 45000;

select * from Employees
where salary < 50000;

select * from Employees
where experience > 5;

-- logical operators

select * from Employees
where department='IT' and salary > 70000;

select * from Employees
where city='Hyderabad' or city='Bangalore';

select * from Employees
where department='HR' and experience < 3;

select * from Employees
where salary > 60000 or experience > 6;

select * from Employees
where department <> 'Sales';

-- in and not in

select * from Employees
where city in ('Hyderabad','Mumbai');

select * from Employees
where department in ('IT','Finance');

select * from Employees
where city not in ('Chennai','Pune');

select * from Employees
where salary in (45000,75000,91000);

select * from Employees
where department not in ('HR','Sales');

-- between

select * from Employees
where salary between 50000 and 80000;

select * from Employees
where experience between 3 and 6;

select * from Employees
where emp_id between 105 and 112;

select * from Employees
where salary not between 40000 and 60000;

select * from Employees
where experience between 2 and 4;

-- like operator

select * from Employees
where emp_name like 'R%';

select * from Employees
where emp_name like '%a';

select * from Employees
where emp_name like '%v%';

select * from Employees
where city like 'B%';

select * from Employees
where department like '%s';
