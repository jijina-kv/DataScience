create table Orders(order_id int,order_date date,amount decimal(10,2),customer_id varchar(10))


select * from Orders

select * from customer_details a join Orders b on a.customer_id=b.customer_id 



select * from customer_details a left join Orders b on a.customer_id=b.customer_id 


select * from customer_details a right join Orders b on a.customer_id=b.customer_id 


update Orders set amount=100  where customer_id=3
