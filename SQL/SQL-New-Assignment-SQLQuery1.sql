create table emp_table(
employee_id int primary key,
First_name varchar(50),
Last_Name varchar(50),
Salary numeric,
Joining_Date DateTime,
Department varchar(20)
)
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(1,'Anika','Arora',100000,'2020-02-14 9:00:00','HR')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(2,'Veena','Verma',80000,'2011-06-15 9:00:00','Admin')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(3,'Vishal','SinghL',300000,'2020-02-16 9:00:00','HR')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(4,'Sushanth','Singh',500000,'2020-02-17 9:00:00','Admin')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(5,'Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(6,'Dheeraj','Diwan',200000,'2011-06-19 9:00:00','Account')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(7,'Karan','Kumar',75000,'2020-01-14 9:00:00','Account')
insert into emp_table(employee_id,First_name,Last_Name,Salary,Joining_Date,Department)
values(8,'Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin')
create table emp_bonus(
emp_ref_id int  references emp_table(employee_id),
Bonus_Amount numeric,
Bonus_date DateTime)

insert into emp_bonus(emp_ref_id,Bonus_Amount,Bonus_date) values(1,5000,'2020-02-16 0:00:00')
insert into emp_bonus(emp_ref_id,Bonus_Amount,Bonus_date) values(2,3000,'2011-06-16 0:00:00')
insert into emp_bonus(emp_ref_id,Bonus_Amount,Bonus_date) values(3,4000,'2020-02-16 0:00:00')
insert into emp_bonus(emp_ref_id,Bonus_Amount,Bonus_date) values(1,4500,'2020-02-16 0:00:00')
insert into emp_bonus(emp_ref_id,Bonus_Amount,Bonus_date) values(2,3500,'2011-06-16 0:00:00')


create table emp_title(
Emloye_ref_id int ,
Employee_Title varchar(50),
Affective_Date DateTime)
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(1,'Manager','2016-02-20 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(2,'Executive','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(8,'Executive','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(5,'Manager','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(4,'Asst.Manager','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(7,'Executive','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(6,'Lead','2016-06-11 0:00:00')
insert into emp_title(Emloye_ref_id,Employee_Title,Affective_Date) values(3,'Lead','2016-06-11 0:00:00')

select * from emp_table
select * from emp_bonus
select * from emp_title
--1
select First_name as Employee_name from emp_table
--2
select UPPER(Last_Name) as Employee_name from emp_table

--3
select distinct Department from emp_table
--4
select substring(Last_Name,1,3) as Employee_name from emp_table
--5
select distinct Department,len(department) from emp_table
--6
select concat(First_name,' ',Last_Name) as Full_Name from emp_table
--7
select * from emp_table order by first_name asc
--8
select * from emp_table order by Department desc,first_name asc
--9
select * from emp_table  where First_name in ('veena' ,'karan')
--10
select * from emp_table  where Department ='Admin'
--11
select * from emp_table  where First_name like '%v%'
--12
select * from emp_table  where Salary between 100000 and 500000
--13
select * from emp_table where month(Joining_Date)=2 and year(Joining_Date)=2020
--14
select * from emp_table where  salary>=50000  and Salary<=100000
--16
select em.* from emp_table em inner join emp_title tit on em.employee_id=tit.Emloye_ref_id where Employee_Title='Manager'
--17
select first_name,count(First_name) as cnt from emp_table group by First_name having count(First_name)>1
--18
SELECT * FROM emp_table WHERE employee_id%2 <> 0
--19
select * into newemp_table from emp_table
select  * from newemp_table
--20
select top 2  with ties  salary from emp_table group by salary order  by salary desc
--21
select a.*  from emp_table a inner join emp_table b on a.Salary=b.Salary where a.First_name<>b.First_name and a.Last_Name<>b.Last_Name 
order  by a.Salary
--22
	select * from (SELECT *,DENSE_RANK() OVER (ORDER BY Salary Desc) AS Rnk FROM emp_table) x where   Rnk=2
--23
select top 50 percent * from emp_table 
--24
select * from (select Department,count(first_name) as cnt from emp_table group by Department ) x where cnt<4
--25
select Department,count(first_name) as cnt from emp_table group by Department
--26
select * from emp_table emp inner join (select department,max(salary) as maxsalary from emp_table group by Department) dept on 
emp.department=dept.department and emp.salary=dept.maxsalary
--27
select * from emp_table emp inner join (select max(salary) as maxsalary from emp_table ) dept on 
 emp.salary=dept.maxsalary
 --28
 select department,avg(salary) as avgsalary from emp_table group by Department
 --29
 select * from emp_bonus emp inner join (select max(Bonus_Amount) as maxbonus from emp_bonus ) bon on 
 emp.Bonus_Amount=bon.maxbonus
 --30
 select emp.First_name,tit.Employee_Title from emp_table emp inner join emp_title tit on emp.employee_id=tit.emloye_ref_id

