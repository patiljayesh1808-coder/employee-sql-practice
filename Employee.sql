SELECT * FROM capgemini_db.employee;

insert into employee values(1,'rani','dev','rani@gmail.com',11000,43,27),
							(2,'raj','test','raj@gmail.com',21000,33,17),
                            (3,'radha','test','radha@gmail.com',26000,38,21),
                            (4,'raj','dev','raj12@gmail.com',51000,32,12),
                            (5,'john','dev','jhon@gmail.com',51000,39,27);
                            
select name from employee where salary > '20000'; -- 1) As a user I want only those employee names who has salary more than 20K. 

select * from employee where salary = '51000'; -- 2) As a user I want all the employee information who has salary 51K. 

select name,experience from employee where age > 35; -- 3) As a user I want only name and experience who has age more that 35.

select * from employee where profile = 'dev';  -- 4) As a user, I want only those employees who’s belongs to dev profile. 

select * from employee where profile = 'test';   -- 5) As a user, I want those employee names who has profile test .

select * from employee where salary > '25000'; -- 6) As a user I want record of employee who has salary 25K and more than 25K. 

select name,email from employee where salary < 51000;  -- 7) As a user I want to those employee name and email those are not having salary 51K.

update employee set salary = salary + 10000 where experience < 20; -- 8) As a user I want to update the employee salary by 10K who is having experience less than 20 years.

delete from employee where experience = 21; -- 9) As a user I want to remove employee record who is having  21 years of experience as he/she left the job. 

update employee set salary = salary - 21000 where name = 'jhon'; -- 10) As a user I want to decrease the salary of john by 21K as company want to perform cost cutting.  

 