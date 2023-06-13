--1. Arrange the ‘Orders’ dataset in decreasing order of amount

select * from Orders order by amount desc
--2. Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’, 
--‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which 
--comprises of same columns as first table.
create table Employee_details1(Emp_id int,Emp_name varchar(40),Emp_salary decimal);
create table Employee_details2(Emp_id int,Emp_name varchar(40),Emp_salary decimal);
--3. Apply the union operator on these two tables
select * from Employee_details1 union select * from Employee_details2
--4. Apply the intersect operator on these two tables
select * from Employee_details1 intersect select * from Employee_details2
--5. Apply the except operator on these two tables
select * from Employee_details1 EXCEPT select * from Employee_details2