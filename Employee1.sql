SELECT * FROM capgemini_db.employee1;

insert into employee1 values(1,'rani','dev','rani@gmail.com',11000,43,27),
							(2,'raj','test','raj@gmail.com',21000,33,17),
                            (3,'radha','test','radha@gmail.com',26000,38,21),
                            (4,'raj','dev','raj12@gmail.com',51000,32,12),
                            (5,'john','dev','jhon@gmail.com',51000,39,27);
                            
select * from employee1;

alter table employee1 add column 
branch_location varchar(20); -- 1) As a user, I want to add an column branch_location so I can efficiently search the branch wise record. 

select sum(salary) as Total_salary 
from employee1; -- 2) As a user, I want to check the total salary expenses on employees. 

select max(salary) as Max_salary 
from employee1 where profile = 'test'; -- 3) As a user, I want to see the max salary of employee from test profile. 

select avg(experience) as Avg_ExperianceEmp
from employee1; -- 4) As a user I want to get the average experience level of employees.

select name,salary from employee1 where 
salary = (select max(salary) from employee1); -- 5) As a user I want to see the name of highest paid employee.

select name,experience from employee1 where 
salary =(select min(salary) from employee1); -- 6) As a user, I want to see the name and experience of lowest paid employee. 

select count(id) as Num_Emp_Working 
from employee1; -- 7) As a user I want check how many employees are working in company. 

select name from employee1 where 
profile = 'test' And salary > 25000; -- 8) As a user I want to see those employee names who are from test profile and having salary more than 25K.  

update employee1 set profile = 'support' 
where name = 'radha'; -- 9) As a user, I want to shift Radha on support profile. 

select max(salary) from employee1 where 
salary < (select max(salary) from employee1); -- 10) As a user, I want to get the second highest salary of employee.

select min(salary) from employee1 where 
salary > (select min(salary) from employee1); -- 11)  As a user I want to get the second lowest salary of employee. 

select avg(salary) from employee1 
where profile = 'dev'; -- 12) As a user, I want to calculate the average salary of employees those are belongs to dev profile. 

select name,salary from employee1 
where experience = (select min(experience) from employee1); -- 13) As a user, I want to see the employee’s name and salary who is having lowest experience.  

select name from employee1 
where age = (select min(age) from employee1 where 
salary = (select max(salary) from employee1)); -- 14) As a user, I want to see the employee name who is having lowest age with max salary. 
 
delete from employee1 -- 15) As a user, I want to remove all the employee from company.