use employee;
select * from employee;
update employee set salary=50000 where employee_id=111;
update employee set salary=55000 where employee_id=222;
update employee set salary=60000 where employee_id=333;
update employee set salary=10000 where employee_id=444;

select distinct salary from employee;
select age as employee_age from employee;
select salary as employee_salary from employee;
select * from employee
where salary >50000 and hire_date <'2016-01-01';

select* from employee order by department_id asc,salary desc;
select *from employee where year(hire_date)=2018 order by hire_date asc limit 5;

update employee set designation ='data scientist' where designation=null;

select sum(salary)from employee where designation ='hr';
select min(age)from employee ;
select e.employee_name,l.location_name from employee e join location l on e.location_id=l.location_id;
select location_id,max(salary) from employee group by location_id;
select designation,avg(salary) from employee where designation like '%analyst%'group by designation;

select department_name,count(employee_id) from employee group by department_name having count(employee_id)<3;
select location_id ,avg (age)from employee where gender ='female'group by location_id having avg(age)<30;

select e.employee_name,e.designation,d.department_name from employee e  inner join departments d on e.department_id=d.department_id;
select d.department_name,count(e.employee_id) from departments d left join employee e on d.department_id=e.department_id group by d.department_name;
select l.location_id,l.location_name,e.employee_name from employee e right join location l on e.location_id = l.location_id;

describe employee;




