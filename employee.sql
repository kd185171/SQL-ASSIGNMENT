use a11;
--create a table
create table employee1(
empid int,
empname varchar(50),
salary int
);
--create user defined table
create type employee1 as table(
empid int,
empname varchar(50),
salary int
);
--create stored procedure to insert values into employee
create or alter procedure insert_emp
@employee1 as employee1 readonly
as 
declare @empid int,
        @empname varchar(50),
		@salary int,
		@count int
begin 
    begin try
	   select @empid=empid from employee1
	   select @empname=empname from employee1
	   select @salary=salary from employee1
	   set @count = (select count(*) from employee1 where @empid=empid)

	   if(@count>0) 
	       update employee1 set @empid=empid,@empname=empname,@salary=salary
	   else
	       insert into employee1
		   select * from employee1
	end try
	begin catch
	       select 'Enter valid values'
	end catch
end

declare @employee1 employee1

Insert into @employee1 values(1,'Mike John',45000)
Insert into @employee1 values(null,'Vimal',50000)
Insert into @employee1 values(null,'Raju',100000)
Insert into @employee1 values(4,'Priya',25000)
Insert into @employee1 values(5,'Tarun',15000)
Insert into @employee1 values(6,'Sruthi',59000)
exec insert_emp @employee1

select * from employee1

