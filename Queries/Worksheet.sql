SELECT * FROM COUNTRIES ;
select * from departments;
select department_name from departments;

select department_name, department_id from departments;

select department_name, department_id from departments;

select * from employees;
select * from departments;

select * from employees, departments;

select employees.employee_id, departments.department_id from employees, departments;

select department_id from departments;
select distinct department_id from departments;

select * from employees;
select salary from employees;

select distinct salary from employees;

select * from jobs;
select max_salary from jobs;
select distinct max_salary from jobs;

select * from employees where salary < 5000;

select * from employees where salary < 5000 and manager_id = 114;

/* between */

select * from departments where location_id between 1800 and 2400;

select * from employees where salary between 3500 and 5000;

/* in statement */

select * from employees where department_id in (60, 30, 110);

select * from countries where region_id in (1, 4);

select * from countries order by region_id;

select * from countries order by region_id asc;

select * from countries order by region_id desc;

select * from countries where region_id < 5 order by region_id asc;

select * from countries;
select * from countries where country_name like'Au%' ;

select * from countries where country_name like'%a' ;

select * from countries where country_name like 'A%' and country_name like '%a';

select country_name from countries where country_name like'%b%' ;

select  count (country_name) from countries where country_name like'Au%' ;

select count (country_name) from countries where country_name like'%a' ;

select email || '@gmail.com' from employees;

select email from employees;

select first_name || ' ' ||  last_name from employees;

select concat(email, 'gmail.com') from employees;

select concat(first_name, ' ' ) from employees;

select concat( concat(first_name, ' ') , last_name )  from employees;

select Upper(first_name ) from employees;

select lower( first_name ) from employees;
select lower( Upper( first_name )) from employees;

select initcap( email)  from employees;
select email  from employees;

/*length*/
select first_name from employees;
select length( first_name ) from employees;

select first_name, length( first_name ) from employees;

/*replace*/
select first_name from employees;
select replace(first_name, 'e', 'E' ) from employees;

/*substr 8 columname, beg index, end index*/
select first_name from employees;
select first_name , substr(  first_name, 0 ,1) from employees;

select substr(  first_name, 0 ,1) || substr(last_name , 0,1) from employees;
select first_name , substr(  first_name, 0 ,1) || substr(last_name , 0,1) from employees;

/*trim*/
select first_name from employees;
select concat('  ',first_name) from employees;
select concat(email, '@gmail.com' )from employees;
select concat( concat(first_name, ' ') , last_name ) from employees;

select * from departments;
select location_id from departments;
select min(location_id) from departments;

select * from departments where location_id = (select min(location_id) from departments);

select max(location_id) from departments;

select * from departments where location_id =  (select max(location_id) from departments);

select * from employees;
select max(salary)from employees;

select * from employees where salary = (select max(salary)from employees);

select * from employees where salary = (select min(salary)from employees);



select salary from employees;

select avg(salary) from employees;
select round ( avg(salary) , 2) from employees;
select round ( avg(salary) , 3) from employees;

select sum(salary) from employees;


select * from employees where manager_id = 100;
select count (*) from employees where manager_id = 100;

select * from employees where salary < 10000;
select count (*) from employees where salary < 10000;

/*Group By/Having*/

select job_id from employees group by job_id;

select job_id, count(*) from employees group by job_id;

select job_id, max(salary) from employees group by job_id;

select job_id, min(salary) from employees group by job_id;

select job_id, sum(salary) from employees group by job_id;

/*having*/
select job_id from employees group by job_id having max(salary) > 2000;

select job_id, count(*) from employees group by job_id having max(salary) > 2000;

select job_id from employees group by job_id having avg(salary) > 6000;

select job_id, count(*) from employees group by job_id having avg(salary) > 6000;

select job_id from employees group by job_id having min(salary) > 6000;

select job_id, count(*) from employees group by job_id having min(salary) > 6000;

/*Aliases:Table/Column*/

select first_name as " " from employees;

select first_name as " Given Name " from employees;

select first_name || ' ' last_name from employees;

select first_name || ' ' || last_name as "Full Name " from employees;


select concat(email, '@gmail.com') from employees;

select concat(email, '@gmail.com') as "Email Address" from employees;


select * from employees, job_history;

select employees.employee_id, job_history.job_id from employees, job_history;

select e.employee_id, j.job_id from employees e, job_history j;

/*Views/Create.insert*/

select * from employees;
select last_name ||' '||first_name as FullName from employees;

create view EmployeeInfo as select last_name ||' '||first_name as FullName from employees;

select * from EmployeeInfo;

select last_name ||' '||first_name as FullName  ,
  lower(email || '@cybertek.com' ) as Email
from employees;

create or replace view EmployeeInfo as
select last_name ||' '||first_name as FullName ,
       lower(email || '@cybertek.com' ) as Email
from employees;

select * from EmployeeInfo;

drop view EmployeeInfo;