--1

create table customer_details(customer_id varchar(10),first_name varchar(20),last_name varchar(20),email_id varchar(40),address1 varchar(100),city varchar(40),state1 varchar(20),zipcode varchar(10))


select * from customer_details
--2
insert into customer_details(customer_id,first_name,last_name,email_id,address1,city,state1,zipcode) values('CUST001','RAJ','MANHOTRA','raj@gmail.com','xyz strreet','agmer','delhi','003434')
insert into customer_details(customer_id,first_name,last_name,email_id,address1,city,state1,zipcode) values('CUST002','CHARLES','k','charlesq3@gmail.com','xyz strreet','agmer','CALIFORNIA','003434')
insert into customer_details(customer_id,first_name,last_name,email_id,address1,city,state1,zipcode) values('CUST003','RICHARD','G','richard4@gmail.com','xyz strreet','agmer','delhi','003408')
insert into customer_details(customer_id,first_name,last_name,email_id,address1,city,state1,zipcode) values('CUST004','GEORGE','M','george3@gmail.com','xyz strreet','San Jose','CALIFORNIA','003455')
insert into customer_details(customer_id,first_name,last_name,email_id,address1,city,state1,zipcode) values('CUST005','KEITE','DD','keite34@gmail.com','xyz strreet','agmer','delhi','245')

--3
select first_name,last_name from customer_details

--4

select * from customer_details where first_name like 'g%' and city='San Jose'