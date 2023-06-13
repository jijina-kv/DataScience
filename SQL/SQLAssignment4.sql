select max(amount),min(amount),AVG(amount) from Orders 


--reate a user-defined function, which will multiply the given number with 10
create function getmultipy(@mul int) 
returns int
as
begin
	declare @ret int;
	set @ret=@mul*10;
	return @ret
end;


declare @ret int;
exec @ret = getmultipy @mul=2 ;
SELECT  @ret;

--Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and 
--print the corresponding valu

create function checkamount(@amount decimal)
returns varchar(40)
as
begin 
declare @ret varchar(40);
	set @ret=(SELECT CASE sign(@amount-200)
         WHEN  -1 THEN 'Less than 200'
         WHEN 0 THEN 'Equal to 200'
         WHEN 1 THEN 'Grater than 200'
       END);
	   return @ret
end;


declare @ret1 varchar(40);
exec @ret1 = checkamount @amount=100 ;
SELECT  @ret1;

