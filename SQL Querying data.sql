create database Customers;
create table Customer(
Customer_Id uniqueidentifier NOT NULL
DEFAULT newid(),
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
Age int Check (Age>=18) NOT NULL,
phone bigint UNIQUE,
city varchar(255),
state varchar(255));

insert into Customer(first_name,last_name,Age,phone,city,state) values
       ('Pawan','Deep',31,7219248597,'Juhu','Nepal'),
	   ('Samarth','Sabale',20,7821454526,'Ambejogai','MH'),
	   ('Gaurav','Rawat',24,9845754694,'Pune','MH'),
	   ('Snehal','Patil',23,8284567548,'Pune','MH'),
	   ('Remant','Agarwal',25,8483125475,'Dhanora','AP'),
	   ('Arunidita','Patil',27,7387323706,'Dehu','UP'),
	   ('Radha','Randhawa',23,7378090741,'Gokul','Gujrat'),
	   ('Krish','Roshan',32,8303004200,'Dhanora','MH'),
       ('Ruturaj','Singh',18,9524855442,'Keral','AP'),
	   ('Balaji','Panchal',26,9545147147,'Latur','MH'),
	   ('Daya','Kumar',27,8606425784,'Latur','MH');

	   select * from Customer;

---SELECT – show you how to query data against a single table.

--A) SQL Server SELECT – retrieve some columns of a table 

select Customer_Id,first_name,last_name from Customer;
select state,city,first_name,last_name from Customer;

--B) SQL Server SELECT – retrieve all columns from a table

select * from Customer;

--C) SQL Server SELECT – sort the result set
select * from Customer
where state = 'MH';

select * from Customer 
where city = 'Pune'
Order by first_name;

select * from Customer 
where state = 'MH'
Order by first_name;

--D) SQL Server SELECT – group rows into groups
select city,count(*) As No_Of_City
from Customer 
where state = 'MH'
Group by city
Order by city DESC;

--E) SQL Server SELECT – filter groups
--To filter groups based on one or more conditions, you use the HAVING clause. 
select city,count(*) As No_Of_City
from Customer 
where state = 'MH'
Group by city
Having (count(*)>1) 
Order by city ;


select first_name,last_name,Age
from Customer 
where state = 'MH'
Group by first_name,last_name,Age
Having (age>=25) 
Order by first_name;