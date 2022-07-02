-- SQL Sorting data
--ORDER BY – sort the result set based on values in a specified list of columns
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

--A) Sort a result set by one column in ascending order
select * from Customer
Order by first_name;

select first_name,last_name from Customer
Order by last_name;

--B) Sort a result set by one column in descending order
select first_name,last_name,Age 
from Customer
Order by first_name DESC;

select first_name,last_name,Age
from Customer
Order by Age;

--C) Sort a result set by multiple columns
select first_name,last_name,Age 
from Customer
Order by first_name ,Age;

--D) Sort a result set by multiple columns and different orders
select first_name,last_name,Age 
from Customer
Order by first_name ASC ,last_name DESC;

--E) Sort a result set by a column that is not in the select list
select first_name,last_name,Age 
from Customer
Order by city;

--F) Sort a result set by an expression
select first_name,last_name,Age 
from Customer
Order by LEN(first_name) DESC;

--G) Sort by ordinal positions of columns
select first_name,last_name,Age 
from Customer
Order by
1,
2,
3;